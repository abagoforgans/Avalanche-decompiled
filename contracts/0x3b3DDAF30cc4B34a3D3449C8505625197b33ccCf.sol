contract main {




// =====================  Runtime code  =====================


#
#  - sub_2745100c(?)
#  - totalUnclaimedExtFarmReward(address arg1)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#  - allPendingReward(uint256 arg1, address arg2)
#
function poolLength() payable {
    return ('storage', 256, 0, 17)
}

function sub_2674f63e(?) payable {
    require calldata.size - 4 >= 32
    return bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg1'), 6))))
}

function getPoolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= ('storage', 256, 0, 17):
        revert with 0, 'dpid >= poolInfo.length'
    return ('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 17))), 
           ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))),
           ('storage', 256, 0, ('add', 2, ('mul', 15, ('param', 'arg1')), ('sha3', 17))),
           ('storage', 256, 0, ('add', 3, ('mul', 15, ('param', 'arg1')), ('sha3', 17))),
           ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))),
           ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))),
           ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))),
           ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17))),
           ('storage', 256, 0, ('add', 8, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
}

function totalStaked(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= ('storage', 256, 0, 17):
        revert with 0, 'dpid >= poolInfo.length'
    return ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
}

function sub_44b4912b(?) payable {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 5))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), 5))))
}

function getMultiSignatureAddress() payable {
    return ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975))
}

function oracle() payable {
    return ('storage', 160, 0, 8)
}

function sub_7e9e60ec(?) payable {
    return ('storage', 160, 0, 13)
}

function owner() payable {
    return ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'"))
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 16))))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 16)))))),
           ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 16))))))
}

function sub_953ae071(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= ('storage', 256, 0, 17):
        revert with 0, 'dpid >= poolInfo.length'
    return ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))), 
           bool(('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))),
           ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 17))),
           ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))),
           ('storage', 256, 0, ('add', 13, ('mul', 15, ('param', 'arg1')), ('sha3', 17))),
           bool(('storage', 8, 0, ('add', 14, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))),
           ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
}

function sub_a145efbb(?) payable {
    return ('storage', 256, 0, 10)
}

function sub_b1698602(?) payable {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 15))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), 15))))
}

function sub_d32fc2ac(?) payable {
    return ('storage', 256, 0, 12)
}

function sub_e09de19a(?) payable {
    return ('storage', 160, 0, 14)
}

function sub_e15ed13e(?) payable {
    return ('storage', 160, 0, 9)
}

function rewardToken() payable {
    return ('storage', 160, 0, 7)
}

function sub_fb9c5856(?) payable {
    return ('storage', 256, 0, 11)
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
    require arg1 < ('storage', 256, 0, 17)
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 15))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), 15)))),
           ('storage', 256, 0, ('add', 2, ('mul', 15, ('param', 'arg1')), ('sha3', 17))),
           ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
}

function setHalt(bool arg1) payable {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0x2170726f78794f776e65723a2063616c6c6572206d757374206265207468652070726f7879206f776e657220616e64206120636f6e747261637420616e64206e6f7420657870697265,
                    mem[237 len 23]
    Mask(96, 0, stor[0].field_160) = Mask(96, 0, arg1)
}

function renounceOwnership() payable {
    if ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0x2170726f78794f776e65723a2063616c6c6572206d757374206265207468652070726f7879206f776e657220616e64206120636f6e747261637420616e64206e6f7420657870697265,
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
                    0x2170726f78794f776e65723a2063616c6c6572206d757374206265207468652070726f7879206f776e657220616e64206120636f6e747261637420616e64206e6f7420657870697265,
                    mem[237 len 23]
    emit OwnershipTransferred(('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")), arg1);
    address(stor[sha3('org.defrost.Owner.storage')].field_0) = arg1
    Mask(96, 0, stor[sha3('org.defrost.Owner.storage')].field_160) = 0
}

function sub_e0ff230f(?) payable {
    require calldata.size - 4 >= 64
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
    uint8(stor[sha3(address(arg1), 6)].field_0) = uint8(arg2)
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
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
    if arg1 >= ('storage', 256, 0, 17):
        revert with 0, 'dpid >= poolInfo.length'
    if ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
        call ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).emergencyWithdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint8(stor[(15 * arg1) + sha3(17) + 10].field_160) = 0
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
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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

function sub_4de79053(?) payable {
    require calldata.size - 4 >= 32
    if msg.sender == ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")):
        if ('storage', 256, 0, ('add', ('mask_shl', 256, -224, -224, ('cd', 0)), ('sha3', 2854986214925151818401259438511719032882489036178099167591))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6570726f78794f776e6572203a20546869732066756e6374696f6e206d75737420626520696e766f6b6564206f6e6c79206f6e6365,
                        mem[217 len 11]
        uint256(stor[(uint32(call.func_hash) >> 224) + sha3(0x746f72672e646566726f73742e4f6e63652e73746f726167)].field_0) = 1
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
            if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x70726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f7269676900,
                            mem[205 len 23]
        require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
    uint256(stor[10].field_0) = arg1
}

function sub_2ba5a268(?) payable {
    require calldata.size - 4 >= 64
    if msg.sender == ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")):
        if ('storage', 256, 0, ('add', ('mask_shl', 256, -224, -224, ('cd', 0)), ('sha3', 2854986214925151818401259438511719032882489036178099167591))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6570726f78794f776e6572203a20546869732066756e6374696f6e206d75737420626520696e766f6b6564206f6e6c79206f6e6365,
                        mem[217 len 11]
        uint256(stor[(uint32(call.func_hash) >> 224) + sha3(0x746f72672e646566726f73742e4f6e63652e73746f726167)].field_0) = 1
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
            if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x70726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f7269676900,
                            mem[205 len 23]
        require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
    uint256(stor[11].field_0) = arg1
    uint256(stor[12].field_0) = arg2
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
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
    require ext_code.size(('storage', 160, 0, 7))
    staticcall ('storage', 160, 0, 7).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 7))
    staticcall ('storage', 160, 0, 7).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 7))
    call ('storage', 160, 0, 7).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xcab27fff: address(arg1), ext_call.return_data[0]
}

function sub_418ea208(?) payable {
    require calldata.size - 4 >= 160
    if msg.sender == ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")):
        if ('storage', 256, 0, ('add', ('mask_shl', 256, -224, -224, ('cd', 0)), ('sha3', 2854986214925151818401259438511719032882489036178099167591))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6570726f78794f776e6572203a20546869732066756e6374696f6e206d75737420626520696e766f6b6564206f6e6c79206f6e6365,
                        mem[217 len 11]
        uint256(stor[(uint32(call.func_hash) >> 224) + sha3(0x746f72672e646566726f73742e4f6e63652e73746f726167)].field_0) = 1
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
            if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x70726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f7269676900,
                            mem[205 len 23]
        require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
        revert with 0, '_rewardToken address is 0'
    if not arg2:
        revert with 0, '_rewardToken address is 0'
    if not arg4:
        revert with 0, '_rewardToken address is 0'
    if not arg5:
        revert with 0, '_rewardToken address is 0'
    address(stor[7].field_0) = arg1
    address(stor[8].field_0) = arg2
    address(stor[9].field_0) = arg3
    address(stor[13].field_0) = arg4
    address(stor[14].field_0) = arg5
}

function setWhiteList(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")):
        mem[(32 * arg1.length) + 128] = 0x746f72672e646566726f73742e4f6e63652e73746f7261676500000000000000
        if ('storage', 256, 0, ('add', ('mask_shl', 256, -224, -224, ('cd', 0)), ('sha3', 2854986214925151818401259438511719032882489036178099167591))):
            revert with 0, 
                        32,
                        53,
                        0x6570726f78794f776e6572203a20546869732066756e6374696f6e206d75737420626520696e766f6b6564206f6e6c79206f6e6365,
                        mem[(32 * arg1.length) + 249 len 11]
        uint256(stor[(uint32(call.func_hash) >> 224) + sha3(0x746f72672e646566726f73742e4f6e63652e73746f726167)].field_0) = 1
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
            if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
                revert with 0, 
                            32,
                            41,
                            0x70726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f7269676900,
                            mem[(32 * arg1.length) + 237 len 23]
        mem[(32 * arg1.length) + 128] = calldata.size + 72
        require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
                        mem[(32 * arg1.length) + calldata.size + 346 len 18]
        uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
    if arg1.length <= 0:
        revert with 0, 'array length is 0'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        uint8(stor[sha3(mem[(32 * idx) + 140 len 20], 6)].field_0) = 1
        idx = idx + 1
        continue 
}

function disableExtEnableClaim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")):
        if ('storage', 256, 0, ('add', ('mask_shl', 256, -224, -224, ('cd', 0)), ('sha3', 2854986214925151818401259438511719032882489036178099167591))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6570726f78794f776e6572203a20546869732066756e6374696f6e206d75737420626520696e766f6b6564206f6e6c79206f6e6365,
                        mem[217 len 11]
        uint256(stor[(uint32(call.func_hash) >> 224) + sha3(0x746f72672e646566726f73742e4f6e63652e73746f726167)].field_0) = 1
        if arg1 >= ('storage', 256, 0, 17):
            revert with 0, 'dpid >= poolInfo.length'
        if ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0x7763616e206f6e6c792064697361626c6520657874456e61626c65436c61696d207768656e20657874456e61626c654465706f7369742069732064697361626c65,
                        mem[229 len 31]
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
            if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x70726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f7269676900,
                            mem[205 len 23]
        require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
        if arg1 >= ('storage', 256, 0, 17):
            revert with 0, 'dpid >= poolInfo.length'
        if ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            revert with 0, 
                        32,
                        65,
                        0x7763616e206f6e6c792064697361626c6520657874456e61626c65436c61696d207768656e20657874456e61626c654465706f7369742069732064697361626c65,
                        mem[calldata.size + 333 len 31]
    ('iszero', ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
    uint8(stor[(15 * arg1) + sha3(17) + 14].field_0) = 0
}

function setDoubleFarming(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if msg.sender == ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")):
        if ('storage', 256, 0, ('add', ('mask_shl', 256, -224, -224, ('cd', 0)), ('sha3', 2854986214925151818401259438511719032882489036178099167591))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6570726f78794f776e6572203a20546869732066756e6374696f6e206d75737420626520696e766f6b6564206f6e6c79206f6e6365,
                        mem[217 len 11]
        uint256(stor[(uint32(call.func_hash) >> 224) + sha3(0x746f72672e646566726f73742e4f6e63652e73746f726167)].field_0) = 1
        if arg1 >= ('storage', 256, 0, 17):
            revert with 0, 'dpid >= poolInfo.length'
        if not arg2:
            revert with 0, 'extFarmAddr == 0x0'
        require arg1 < ('storage', 256, 0, 17)
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
        if ('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 17))) != ext_call.return_data[12 len 20]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x65706f6f6c206d69736d61746368206265747765656e20646546726f73744661726d20616e6420657874466172,
                        ext_call.return_data[113 len 15],
                        mem[224 len 4]
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
            if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x70726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f7269676900,
                            mem[205 len 23]
        require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
        if arg1 >= ('storage', 256, 0, 17):
            revert with 0, 'dpid >= poolInfo.length'
        if not arg2:
            revert with 0, 'extFarmAddr == 0x0'
        require arg1 < ('storage', 256, 0, 17)
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
        if ('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 17))) != ext_call.return_data[12 len 20]:
            revert with 0, 
                        32,
                        45,
                        0x65706f6f6c206d69736d61746368206265747765656e20646546726f73744661726d20616e6420657874466172,
                        ext_call.return_data[113 len 15],
                        mem[calldata.size + 328 len 4]
    ('eq', ('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 17))), ('ext_call.return_data', 12, 20))
    address(stor[(15 * arg1) + sha3(17) + 10].field_0) = arg2
    uint256(stor[(15 * arg1) + sha3(17) + 11].field_0) = arg3
    emit SetExtFarm(arg1, address(arg2), arg3);
}

function sub_158e6218(?) payable {
    require calldata.size - 4 >= 224
    if msg.sender == ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")):
        if ('storage', 256, 0, ('add', ('mask_shl', 256, -224, -224, ('cd', 0)), ('sha3', 2854986214925151818401259438511719032882489036178099167591))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6570726f78794f776e6572203a20546869732066756e6374696f6e206d75737420626520696e766f6b6564206f6e6c79206f6e6365,
                        mem[217 len 11]
        uint256(stor[(uint32(call.func_hash) >> 224) + sha3(0x746f72672e646566726f73742e4f6e63652e73746f726167)].field_0) = 1
        if block.number >= arg3:
            revert with 0, 'block.number >= bonusEndBlock'
        if block.timestamp >= arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0xfe73746172742074696d65206973206561726c696572207468616e2063757272656e742074696d,
                        mem[203 len 25]
        if block.number > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg3 - block.number:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 >= block.timestamp:
                revert with 0, 32, 42, 0x6b657374696d61746520656e642074696d65206973206561726c79207468616e2073746172742074696d, mem[270 len 22]
        else:
            if (arg3 * arg7) - (block.number * arg7) / arg3 - block.number != arg7:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if (arg3 * arg7) - (block.number * arg7) + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 >= (arg3 * arg7) - (block.number * arg7) + block.timestamp:
                revert with 0, 32, 42, 0x6b657374696d61746520656e642074696d65206973206561726c79207468616e2073746172742074696d, mem[270 len 22]
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
            if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x70726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f7269676900,
                            mem[205 len 23]
        require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
                            0x6b657374696d61746520656e642074696d65206973206561726c79207468616e2073746172742074696d,
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
                            0x6b657374696d61746520656e642074696d65206973206561726c79207468616e2073746172742074696d,
                            mem[calldata.size + 374 len 22]
    if not arg1:
        revert with 0, '_lpToken == 0'
    uint256(stor[17].field_0) = ('storage', 256, 0, 17) + 1
    address(stor[(15 * ('storage', 256, 0, 17)) + sha3(17)].field_0) = arg1
    uint256(stor[(15 * ('storage', 256, 0, 17)) + sha3(17) + 1].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 17)) + sha3(17) + 2].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 17)) + sha3(17) + 3].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 17)) + sha3(17) + 4].field_0) = arg3
    uint256(stor[(15 * ('storage', 256, 0, 17)) + sha3(17) + 5].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 17)) + sha3(17) + 6].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 17)) + sha3(17) + 7].field_0) = arg4
    uint256(stor[(15 * ('storage', 256, 0, 17)) + sha3(17) + 8].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 17)) + sha3(17) + 9].field_0) = arg2
    address(stor[(15 * ('storage', 256, 0, 17)) + sha3(17) + 10].field_0) = 0
    Mask(96, 0, stor[(15 * ('storage', 256, 0, 17)) + sha3(17) + 10].field_160) = 0
    uint256(stor[(15 * ('storage', 256, 0, 17)) + sha3(17) + 11].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 17)) + sha3(17) + 12].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 17)) + sha3(17) + 13].field_0) = 0
    uint8(stor[(15 * ('storage', 256, 0, 17)) + sha3(17) + 14].field_0) = 0
    uint256(stor[sha3(('storage', 256, 0, 17) - 1, 15)].field_0) = arg5
    uint256(stor[sha3(('storage', 256, 0, 17) - 1, 15) + 1].field_0) = arg6
}

function extRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= ('storage', 256, 0, 17):
        revert with 0, 'dpid >= poolInfo.length'
    if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
        return 0
    require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
    staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).joePerSec() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
    staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[64] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
    staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).totalAllocPoint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
    staticcall ('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 17))).0x70a08231 with:
            gas gas_remaining wei
           args ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not block.timestamp - ext_call.return_data[64]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).0x93f1a40b with:
                gas gas_remaining wei
               args arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not 0 / ext_call.return_data[0] / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^12)
    if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0]) / block.timestamp - ext_call.return_data[64] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0]):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).0x93f1a40b with:
                gas gas_remaining wei
               args arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not 0 / ext_call.return_data[0] / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^12)
    if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]) / (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0]) != ext_call.return_data[32]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).0x93f1a40b with:
                gas gas_remaining wei
               args arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not 0 / ext_call.return_data[0] / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^12)
    if (10^12 * block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (10^12 * ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]) / (block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]) != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
    staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).0x93f1a40b with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not (10^12 * block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (10^12 * ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] / ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * (10^12 * block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (10^12 * ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] / ext_call.return_data[0] / (10^12 * block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (10^12 * ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    return (ext_call.return_data[0] * (10^12 * block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (10^12 * ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] / ext_call.return_data[0] / 10^12)
}

function sub_92f2bacc(?) payable {
    require calldata.size - 4 >= 96
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
        if not arg3:
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, 0 / ('storage', 256, 0, 1)
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1)), 
                   ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1)
        if ('storage', 256, 0, 1) * arg3 / arg3 != ('storage', 256, 0, 1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if not ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if 0 / ('storage', 256, 0, 1) > ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return (('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1)), 0 / ('storage', 256, 0, 1)
        if ('storage', 256, 0, 10) * ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, 10) * ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return (('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1)), 
               ('storage', 256, 0, 10) * ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1)
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
        if not arg3:
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, 0 / ('storage', 256, 0, 1)
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1)), 
                   ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1)
        if ('storage', 256, 0, 1) * arg3 / arg3 != ('storage', 256, 0, 1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if not ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if 0 / ('storage', 256, 0, 1) > ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return (('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1)), 0 / ('storage', 256, 0, 1)
        if ('storage', 256, 0, 10) * ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, 10) * ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return (('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1)), 
               ('storage', 256, 0, 10) * ('storage', 256, 0, 1) * arg3 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1)
    if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
        revert with 0, 'SafeMath: addition overflow'
    if not arg3:
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ('storage', 256, 0, 1):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 0 / ('storage', 256, 0, 1)
        if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1)), 
               ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1)
    if (('storage', 256, 0, 11) * arg3) + (('storage', 256, 0, 1) * arg3) / arg3 != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ('storage', 256, 0, 1):
        revert with 0, 'SafeMath: division by zero'
    if not (('storage', 256, 0, 11) * arg3) + (('storage', 256, 0, 1) * arg3) / ('storage', 256, 0, 1):
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if 0 / ('storage', 256, 0, 1) > (('storage', 256, 0, 11) * arg3) + (('storage', 256, 0, 1) * arg3) / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((('storage', 256, 0, 11) * arg3) + (('storage', 256, 0, 1) * arg3) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1)), 
               0 / ('storage', 256, 0, 1)
    if ('storage', 256, 0, 10) * (('storage', 256, 0, 11) * arg3) + (('storage', 256, 0, 1) * arg3) / ('storage', 256, 0, 1) / (('storage', 256, 0, 11) * arg3) + (('storage', 256, 0, 1) * arg3) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ('storage', 256, 0, 1):
        revert with 0, 'SafeMath: division by zero'
    if ('storage', 256, 0, 10) * (('storage', 256, 0, 11) * arg3) + (('storage', 256, 0, 1) * arg3) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (('storage', 256, 0, 11) * arg3) + (('storage', 256, 0, 1) * arg3) / ('storage', 256, 0, 1):
        revert with 0, 'SafeMath: subtraction overflow'
    return ((('storage', 256, 0, 11) * arg3) + (('storage', 256, 0, 1) * arg3) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (('storage', 256, 0, 11) * arg3) + (('storage', 256, 0, 1) * arg3) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1)), 
           ('storage', 256, 0, 10) * (('storage', 256, 0, 11) * arg3) + (('storage', 256, 0, 1) * arg3) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1)
}

function enableDoubleFarming(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")):
        if ('storage', 256, 0, ('add', ('mask_shl', 256, -224, -224, ('cd', 0)), ('sha3', 2854986214925151818401259438511719032882489036178099167591))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6570726f78794f776e6572203a20546869732066756e6374696f6e206d75737420626520696e766f6b6564206f6e6c79206f6e6365,
                        mem[217 len 11]
        uint256(stor[(uint32(call.func_hash) >> 224) + sha3(0x746f72672e646566726f73742e4f6e63652e73746f726167)].field_0) = 1
        if arg1 >= ('storage', 256, 0, 17):
            revert with 0, 'dpid >= poolInfo.length'
        if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x64706f6f6c206e6f7420737570706f72747320646f75626c65206661726d696e67207965,
                        mem[200 len 28]
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
            if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x70726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f7269676900,
                            mem[205 len 23]
        require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
        if arg1 >= ('storage', 256, 0, 17):
            revert with 0, 'dpid >= poolInfo.length'
        if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            revert with 0, 32, 36, 0x64706f6f6c206e6f7420737570706f72747320646f75626c65206661726d696e67207965, mem[calldata.size + 304 len 28]
    ('bool', ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
    if arg2 != bool(('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))):
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).joe() with:
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
        require ext_code.size(('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
        if arg2:
            call ('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 17))).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                uint8(stor[(15 * arg1) + sha3(17) + 14].field_0) = 1
            else:
                require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
                call ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).0xe2bbb158 with:
                     gas gas_remaining wei
                    args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 17))), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                uint8(stor[(15 * arg1) + sha3(17) + 14].field_0) = 1
                if ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                    require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
                    staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).joe() with:
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
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[(15 * arg1) + sha3(17) + 12].field_0) = ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
        else:
            call ('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 17))).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
            staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).0x93f1a40b with:
                    gas gas_remaining wei
                   args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 17))), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0]:
                require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
                call ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).0x441a3e70 with:
                     gas gas_remaining wei
                    args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 17))), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
                staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).joe() with:
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
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * arg1) + sha3(17) + 12].field_0) = ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
        Mask(96, 0, stor[(15 * arg1) + sha3(17) + 10].field_160) = Mask(96, 0, arg2)
        emit DoubleFarmingEnable(arg1, arg2);
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
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
        if not arg2:
            revert with 0, '_to == 0'
        if not arg1:
            revert with 0, 'extFarmAddr == 0'
        require ext_code.size(arg1)
        staticcall arg1.joe() with:
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
        while idx < ('storage', 256, 0, 17):
            mem[0] = 17
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 17))):
                idx = idx + 1
                continue 
            if ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 17))) != arg1:
                idx = idx + 1
                continue 
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                _197 = mem[64]
                mem[64] = mem[64] + 64
                mem[_197] = 26
                mem[_197 + 32] = 'SafeMath: division by zero'
                _216 = mem[64]
                mem[64] = mem[64] + 64
                mem[_216] = 30
                mem[_216 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))) <= 0:
                    if -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))) < -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _226 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _226 + 68] = mem[idx + _216 + 32]
                    idx = idx + 32
                    continue 
                mem[_226 + 68] = mem[_226 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _226 + -mem[64] + 100
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 17))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _202 = mem[64]
            mem[64] = mem[64] + 64
            mem[_202] = 26
            mem[_202 + 32] = 'SafeMath: division by zero'
            _223 = mem[64]
            mem[64] = mem[64] + 64
            mem[_223] = 30
            mem[_223 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))) <= ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                idx = idx + 1
                continue 
            _238 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _238 + 68] = mem[idx + _223 + 32]
                idx = idx + 32
                continue 
            mem[_238 + 68] = mem[_238 + 70 len 30]
            revert with memory
              from mem[64]
               len _238 + -mem[64] + 100
        if 0 > ext_call.return_data[0]:
            revert with 0, 'extreward shortage'
        _188 = mem[64]
        mem[64] = mem[64] + 64
        mem[_188] = 30
        mem[_188 + 32] = 'SafeMath: subtraction overflow'
        _194 = mem[64]
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = ext_call.return_data[0]
        _195 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_195 + 32 len 4] = unknown_0xa9059cbb(?????)
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'SafeERC20: call to non-contract'
        _205 = mem[_195]
        mem[mem[64] len floor32(mem[_195])] = mem[_195 + 32 len floor32(mem[_195])]
        mem[mem[64] + floor32(mem[_195]) + -(mem[_195] % 32) + 32 len mem[_195] % 32] = mem[_195 + floor32(mem[_195]) + -(mem[_195] % 32) + 64 len mem[_195] % 32]
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _205 + _194 + -mem[64] + 96]
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
                                mem[mem[64] + 110 len 22]
        else:
            _318 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_318] = return_data.size
            mem[_318 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_318 + 32]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[mem[64] + 110 len 22]
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
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
        if not arg2:
            revert with 0, '_to == 0'
        if not arg1:
            revert with 0, 'extFarmAddr == 0'
        require ext_code.size(arg1)
        staticcall arg1.joe() with:
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
        while idx < ('storage', 256, 0, 17):
            mem[0] = 17
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 17))):
                idx = idx + 1
                continue 
            if ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 17))) != arg1:
                idx = idx + 1
                continue 
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                _201 = mem[64]
                mem[64] = mem[64] + 64
                mem[_201] = 26
                mem[_201 + 32] = 'SafeMath: division by zero'
                _221 = mem[64]
                mem[64] = mem[64] + 64
                mem[_221] = 30
                mem[_221 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))) <= 0:
                    if -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))) < -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _229 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _229 + 68] = mem[idx + _221 + 32]
                    idx = idx + 32
                    continue 
                mem[_229 + 68] = mem[_229 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _229 + -mem[64] + 100
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 17))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _203 = mem[64]
            mem[64] = mem[64] + 64
            mem[_203] = 26
            mem[_203 + 32] = 'SafeMath: division by zero'
            _225 = mem[64]
            mem[64] = mem[64] + 64
            mem[_225] = 30
            mem[_225 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))) <= ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                idx = idx + 1
                continue 
            _247 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _247 + 68] = mem[idx + _225 + 32]
                idx = idx + 32
                continue 
            mem[_247 + 68] = mem[_247 + 70 len 30]
            revert with memory
              from mem[64]
               len _247 + -mem[64] + 100
        if 0 > ext_call.return_data[0]:
            revert with 0, 'extreward shortage'
        _189 = mem[64]
        mem[64] = mem[64] + 64
        mem[_189] = 30
        mem[_189 + 32] = 'SafeMath: subtraction overflow'
        _198 = mem[64]
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = ext_call.return_data[0]
        _199 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_199 + 32 len 4] = unknown_0xa9059cbb(?????)
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'SafeERC20: call to non-contract'
        _209 = mem[_199]
        mem[mem[64] len floor32(mem[_199])] = mem[_199 + 32 len floor32(mem[_199])]
        mem[mem[64] + floor32(mem[_199]) + -(mem[_199] % 32) + 32 len mem[_199] % 32] = mem[_199 + floor32(mem[_199]) + -(mem[_199] % 32) + 64 len mem[_199] % 32]
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _209 + _198 + -mem[64] + 96]
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
                                mem[mem[64] + 110 len 22]
        else:
            _323 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_323] = return_data.size
            mem[_323 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_323 + 32]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[mem[64] + 110 len 22]
    emit QuitExtReward(address(arg1), address(ext_call.return_data[0]), address(arg2), ext_call.return_data[0]);
}

function pendingExtReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= ('storage', 256, 0, 17):
        revert with 0, 'dpid >= poolInfo.length'
    if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
        return 0
    if ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) <= 0:
        return 0
    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
        return 0
    if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))
        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))))
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
    mem[132] = this.address
    require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
    staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 17))), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _17 = mem[96 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
    _19 = uint32(this.address), mem[164 len 28]
    require uint32(this.address), mem[164 len 28] <= 4294967296
    require uint32(this.address), mem[164 len 28] + 32 <= return_data.size
    require return_data.size >= mem[uint32(this.address), mem[164 len 28] + 96] + uint32(this.address), mem[164 len 28] + 32 and mem[uint32(this.address), mem[164 len 28] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[uint32(this.address), mem[164 len 28] + 96]
    _26 = mem[_19 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_19 + 96])] = mem[_19 + 128 len ceil32(mem[_19 + 96])]
    if not _26 % 32:
        if not _17:
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_26 + ceil32(return_data.size) + 293 len 31]
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))))
        if 10^12 * _17 / _17 != 10^12:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[_26 + ceil32(return_data.size) + 229 len 31]
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (10^12 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) < 10^12 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))
        if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (10^12 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (10^12 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))):
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[_26 + ceil32(return_data.size) + 293 len 31]
    else:
        if not _17:
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_26) + ceil32(return_data.size) + 325 len 31]
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))))
        if 10^12 * _17 / _17 != 10^12:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[floor32(_26) + ceil32(return_data.size) + 261 len 31]
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (10^12 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) < 10^12 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))
        if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (10^12 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (10^12 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))):
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[floor32(_26) + ceil32(return_data.size) + 325 len 31]
    ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))), ('mul', ('div', ('mul', 1000000000000, ('var', '_17')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))), ('div', ('mul', 1000000000000, ('var', '_17')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))))
    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (10^12 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (10^12 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))))
}

function distributeFinalExtReward(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if msg.sender == ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")):
        mem[96] = 0x746f72672e646566726f73742e4f6e63652e73746f7261676500000000000000
        if ('storage', 256, 0, ('add', ('mask_shl', 256, -224, -224, ('cd', 0)), ('sha3', 2854986214925151818401259438511719032882489036178099167591))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6570726f78794f776e6572203a20546869732066756e6374696f6e206d75737420626520696e766f6b6564206f6e6c79206f6e6365,
                        mem[217 len 11]
        uint256(stor[(uint32(call.func_hash) >> 224) + sha3(0x746f72672e646566726f73742e4f6e63652e73746f726167)].field_0) = 1
        if arg1 >= ('storage', 256, 0, 17):
            revert with 0, 'dpid >= poolInfo.length'
        mem[0] = 17
        if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            revert with 0, 'pool not supports double farming'
        idx = 0
        while idx < ('storage', 256, 0, 17):
            mem[0] = 17
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 17))):
                idx = idx + 1
                continue 
            if ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                idx = idx + 1
                continue 
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                _322 = mem[64]
                mem[64] = mem[64] + 64
                mem[_322] = 26
                mem[_322 + 32] = 'SafeMath: division by zero'
                _355 = mem[64]
                mem[64] = mem[64] + 64
                mem[_355] = 30
                mem[_355 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))) <= 0:
                    if -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))) < -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _365 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _365 + 68] = mem[idx + _355 + 32]
                    idx = idx + 32
                    continue 
                mem[_365 + 68] = mem[_365 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _365 + -mem[64] + 100
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 17))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _325 = mem[64]
            mem[64] = mem[64] + 64
            mem[_325] = 26
            mem[_325 + 32] = 'SafeMath: division by zero'
            _358 = mem[64]
            mem[64] = mem[64] + 64
            mem[_358] = 30
            mem[_358 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))) <= ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                idx = idx + 1
                continue 
            _380 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _380 + 68] = mem[idx + _358 + 32]
                idx = idx + 32
                continue 
            mem[_380 + 68] = mem[_380 + 70 len 30]
            revert with memory
              from mem[64]
               len _380 + -mem[64] + 100
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).joe() with:
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
        _321 = mem[64]
        mem[64] = mem[64] + 64
        mem[_321] = 30
        mem[_321 + 32] = 'SafeMath: subtraction overflow'
    else:
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
            staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
            if arg1 >= ('storage', 256, 0, 17):
                revert with 0, 'dpid >= poolInfo.length'
            mem[0] = 17
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                revert with 0, 'pool not supports double farming'
            idx = 0
            while idx < ('storage', 256, 0, 17):
                mem[0] = 17
                if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    idx = idx + 1
                    continue 
                if ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                    idx = idx + 1
                    continue 
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _318 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_318] = 26
                    mem[_318 + 32] = 'SafeMath: division by zero'
                    _351 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_351] = 30
                    mem[_351 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))) <= 0:
                        if -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))) < -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))):
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _359 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _359 + 68] = mem[idx + _351 + 32]
                        idx = idx + 32
                        continue 
                    mem[_359 + 68] = mem[_359 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _359 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _323 = mem[64]
                mem[64] = mem[64] + 64
                mem[_323] = 26
                mem[_323 + 32] = 'SafeMath: division by zero'
                _356 = mem[64]
                mem[64] = mem[64] + 64
                mem[_356] = 30
                mem[_356 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))) <= ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    idx = idx + 1
                    continue 
                _370 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _370 + 68] = mem[idx + _356 + 32]
                    idx = idx + 32
                    continue 
                mem[_370 + 68] = mem[_370 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _370 + -mem[64] + 100
            require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
            staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).joe() with:
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
            _317 = mem[64]
            mem[64] = mem[64] + 64
            mem[_317] = 30
            mem[_317 + 32] = 'SafeMath: subtraction overflow'
        else:
            if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x70726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f7269676900,
                            mem[205 len 23]
            mem[128] = address(msg.sender)
            mem[148] = address(this.address)
            mem[168] = msg.value
            mem[200 len calldata.size] = call.data[0 len calldata.size]
            mem[96] = calldata.size + 72
            mem[64] = calldata.size + 200
            mem[calldata.size + 204] = sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])
            mem[calldata.size + 236] = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
            require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
            staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
            if arg1 >= ('storage', 256, 0, 17):
                revert with 0, 'dpid >= poolInfo.length'
            mem[0] = 17
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                revert with 0, 'pool not supports double farming'
            idx = 0
            while idx < ('storage', 256, 0, 17):
                mem[0] = 17
                if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    idx = idx + 1
                    continue 
                if ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                    idx = idx + 1
                    continue 
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _320 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_320] = 26
                    mem[_320 + 32] = 'SafeMath: division by zero'
                    _353 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_353] = 30
                    mem[_353 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))) <= 0:
                        if -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))) < -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))):
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _362 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _362 + 68] = mem[idx + _353 + 32]
                        idx = idx + 32
                        continue 
                    mem[_362 + 68] = mem[_362 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _362 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _324 = mem[64]
                mem[64] = mem[64] + 64
                mem[_324] = 26
                mem[_324 + 32] = 'SafeMath: division by zero'
                _357 = mem[64]
                mem[64] = mem[64] + 64
                mem[_357] = 30
                mem[_357 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 17))) <= ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    idx = idx + 1
                    continue 
                _375 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _375 + 68] = mem[idx + _357 + 32]
                    idx = idx + 32
                    continue 
                mem[_375 + 68] = mem[_375 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _375 + -mem[64] + 100
            require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
            staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 17))).joe() with:
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
            _319 = mem[64]
            mem[64] = mem[64] + 64
            mem[_319] = 30
            mem[_319 + 32] = 'SafeMath: subtraction overflow'
    if 0 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 > ext_call.return_data[0]:
        revert with 0, 32, 35, 0x6d64697374696275746520746f6f206d7563682065787465726e616c20726577617264, mem[mem[64] + 103 len 29]
    if not arg2:
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            revert with 0, 'SafeMath: addition overflow'
        uint256(stor[(15 * arg1) + sha3(17) + 12].field_0) = ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
    else:
        if 10^12 * arg2 / arg2 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (10^12 * arg2 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) < 10^12 * arg2 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            revert with 0, 'SafeMath: addition overflow'
        uint256(stor[(15 * arg1) + sha3(17) + 12].field_0) = ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) + (10^12 * arg2 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))))
}

function sub_79939f86(?) payable {
    require calldata.size - 4 >= 160
    if msg.sender == ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")):
        if ('storage', 256, 0, ('add', ('mask_shl', 256, -224, -224, ('cd', 0)), ('sha3', 2854986214925151818401259438511719032882489036178099167591))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6570726f78794f776e6572203a20546869732066756e6374696f6e206d75737420626520696e766f6b6564206f6e6c79206f6e6365,
                        mem[217 len 11]
        uint256(stor[(uint32(call.func_hash) >> 224) + sha3(0x746f72672e646566726f73742e4f6e63652e73746f726167)].field_0) = 1
        if arg1 >= ('storage', 256, 0, 17):
            revert with 0, 'dpid >= poolInfo.length'
        if arg2 <= block.number:
            revert with 0, '_bonusEndBlock <= block.number'
        require arg1 < ('storage', 256, 0, 17)
        if block.number > ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            if ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                require arg1 < ('storage', 256, 0, 17)
                if block.number <= ('storage', 256, 0, ('add', 2, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
                else:
                    if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) >= ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
                    else:
                        if block.number < ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                            if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
                            else:
                                if (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) != ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))):
                                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
                                else:
                                    if (10^12 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: division by zero'
                                    if ((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = ((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
                        else:
                            if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) > ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
                            else:
                                if (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) != ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))):
                                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
                                else:
                                    if (10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: division by zero'
                                    if ((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = ((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
            uint256(stor[(15 * arg1) + sha3(17) + 5].field_0) = block.number
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
            if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x70726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f7269676900,
                            mem[205 len 23]
        require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
        if arg1 >= ('storage', 256, 0, 17):
            revert with 0, 'dpid >= poolInfo.length'
        if arg2 <= block.number:
            revert with 0, '_bonusEndBlock <= block.number'
        require arg1 < ('storage', 256, 0, 17)
        if block.number > ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            if ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                require arg1 < ('storage', 256, 0, 17)
                if block.number <= ('storage', 256, 0, ('add', 2, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
                else:
                    if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) >= ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
                    else:
                        if block.number < ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                            if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
                            else:
                                if (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) != ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                                if not (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))):
                                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
                                else:
                                    if (10^12 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: division by zero'
                                    if ((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = ((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
                        else:
                            if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) > ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
                            else:
                                if (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) != ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                                if not (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))):
                                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
                                else:
                                    if (10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: division by zero'
                                    if ((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(stor[(15 * arg1) + sha3(17) + 6].field_0) = ((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 17)))
            uint256(stor[(15 * arg1) + sha3(17) + 5].field_0) = block.number
    require arg1 < ('storage', 256, 0, 17)
    if ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) <= block.number:
        uint256(stor[(15 * arg1) + sha3(17) + 3].field_0) = block.number
    uint256(stor[(15 * arg1) + sha3(17) + 4].field_0) = arg2
    uint256(stor[(15 * arg1) + sha3(17) + 7].field_0) = arg3
    uint256(stor[sha3(arg1, 15)].field_0) = arg4
    uint256(stor[sha3(arg1, 15) + 1].field_0) = arg5
    emit UpdatePoolInfo(arg1, arg2, arg3);
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
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
        require ext_code.size(('storage', 160, 0, 7))
        staticcall ('storage', 160, 0, 7).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[calldata.size + 200] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = mem[mem[64]]
        while idx < ('storage', 256, 0, 17):
            if block.number <= ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))):
                revert with 0, 
                            32,
                            41,
                            0x6e7175697450687820626c6f636b2e6e756d626572203c3d207069642e626f6e7573456e64426c6f63,
                            mem[mem[64] + 109 len 23]
            require idx < ('storage', 256, 0, 17)
            mem[0] = 17
            if block.number <= ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))):
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1122 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1122] = 26
                    mem[_1122 + 32] = 'SafeMath: division by zero'
                    _1160 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1160] = 30
                    mem[_1160 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                        _1170 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1170 + 68] = mem[idx + _1160 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1170 + 68] = mem[_1170 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1170 + -mem[64] + 100
                    _1220 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1220] = 30
                    mem[_1220 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1263 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1263 + 68] = mem[idx + _1220 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1263 + 68] = mem[_1263 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1263 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1129 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1129] = 26
                mem[_1129 + 32] = 'SafeMath: division by zero'
                _1165 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1165] = 30
                mem[_1165 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    _1184 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1184 + 68] = mem[idx + _1165 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1184 + 68] = mem[_1184 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1184 + -mem[64] + 100
                _1239 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1239] = 30
                mem[_1239 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _1289 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1289 + 68] = mem[idx + _1239 + 32]
                    idx = idx + 32
                    continue 
                mem[_1289 + 68] = mem[_1289 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1289 + -mem[64] + 100
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1128 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1128] = 26
                    mem[_1128 + 32] = 'SafeMath: division by zero'
                    _1164 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1164] = 30
                    mem[_1164 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                        _1181 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1181 + 68] = mem[idx + _1164 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1181 + 68] = mem[_1181 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1181 + -mem[64] + 100
                    _1236 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1236] = 30
                    mem[_1236 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1286 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1286 + 68] = mem[idx + _1236 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1286 + 68] = mem[_1286 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1286 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1138 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1138] = 26
                mem[_1138 + 32] = 'SafeMath: division by zero'
                _1169 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1169] = 30
                mem[_1169 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    _1201 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1201 + 68] = mem[idx + _1169 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1201 + 68] = mem[_1201 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1201 + -mem[64] + 100
                _1258 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1258] = 30
                mem[_1258 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _1315 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1315 + 68] = mem[idx + _1258 + 32]
                    idx = idx + 32
                    continue 
                mem[_1315 + 68] = mem[_1315 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1315 + -mem[64] + 100
            require idx < ('storage', 256, 0, 17)
            mem[0] = 17
            if block.number <= ('storage', 256, 0, ('add', 2, ('mul', 15, ('var', 0)), ('sha3', 17))):
                _1168 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1168] = 26
                mem[_1168 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1168 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
                uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1502 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1502] = 26
                    mem[_1502 + 32] = 'SafeMath: division by zero'
                    _1555 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1555] = 30
                    mem[_1555 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                        _1587 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1587 + 68] = mem[idx + _1555 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1587 + 68] = mem[_1587 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1587 + -mem[64] + 100
                    _1630 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1630] = 30
                    mem[_1630 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1664 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1664 + 68] = mem[idx + _1630 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1664 + 68] = mem[_1664 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1664 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1527 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1527] = 26
                mem[_1527 + 32] = 'SafeMath: division by zero'
                _1570 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1570] = 30
                mem[_1570 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    _1606 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1606 + 68] = mem[idx + _1570 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1606 + 68] = mem[_1606 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1606 + -mem[64] + 100
                _1643 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1643] = 30
                mem[_1643 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _1689 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1689 + 68] = mem[idx + _1643 + 32]
                    idx = idx + 32
                    continue 
                mem[_1689 + 68] = mem[_1689 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1689 + -mem[64] + 100
            if ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) >= ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))):
                _1180 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1180] = 26
                mem[_1180 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    s = 32
                    while s < 26:
                        mem[s + mem[64] + 68] = mem[s + _1180 + 32]
                        s = s + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
                uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1526 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1526] = 26
                    mem[_1526 + 32] = 'SafeMath: division by zero'
                    _1569 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1569] = 30
                    mem[_1569 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                        _1603 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1603 + 68] = mem[idx + _1569 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1603 + 68] = mem[_1603 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1603 + -mem[64] + 100
                    _1640 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1640] = 30
                    mem[_1640 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1686 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1686 + 68] = mem[idx + _1640 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1686 + 68] = mem[_1686 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1686 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1541 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1541] = 26
                mem[_1541 + 32] = 'SafeMath: division by zero'
                _1586 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1586] = 30
                mem[_1586 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    _1619 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1619 + 68] = mem[idx + _1586 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1619 + 68] = mem[_1619 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1619 + -mem[64] + 100
                _1659 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1659] = 30
                mem[_1659 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _1718 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1718 + 68] = mem[idx + _1659 + 32]
                    idx = idx + 32
                    continue 
                mem[_1718 + 68] = mem[_1718 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1718 + -mem[64] + 100
            if block.number < ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))):
                _1118 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1118] = 30
                mem[_1118 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) > block.number:
                    _1132 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1132 + 68] = mem[idx + _1118 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1132 + 68] = mem[_1132 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1132 + -mem[64] + 100
                if not block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1280 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1280] = 26
                    mem[_1280 + 32] = 'SafeMath: division by zero'
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1280 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        _1552 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1552] = 26
                        mem[_1552 + 32] = 'SafeMath: division by zero'
                        _1638 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1638] = 30
                        mem[_1638 + 32] = 'SafeMath: subtraction overflow'
                        if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                            _1680 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1680 + 68] = mem[idx + _1638 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1680 + 68] = mem[_1680 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1680 + -mem[64] + 100
                        _1779 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1779] = 30
                        mem[_1779 + 32] = 'SafeMath: subtraction overflow'
                        if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                            idx = idx + 1
                            s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                            continue 
                        _1867 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1867 + 68] = mem[idx + _1779 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1867 + 68] = mem[_1867 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1867 + -mem[64] + 100
                    if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1565 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1565] = 26
                    mem[_1565 + 32] = 'SafeMath: division by zero'
                    _1657 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1657] = 30
                    mem[_1657 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                        _1710 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1710 + 68] = mem[idx + _1657 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1710 + 68] = mem[_1710 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1710 + -mem[64] + 100
                    _1821 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1821] = 30
                    mem[_1821 + 32] = 'SafeMath: subtraction overflow'
                    if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1910 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1910 + 68] = mem[idx + _1821 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1910 + 68] = mem[_1910 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1910 + -mem[64] + 100
                if (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))):
                    _1306 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1306] = 26
                    mem[_1306 + 32] = 'SafeMath: division by zero'
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1306 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        _1564 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1564] = 26
                        mem[_1564 + 32] = 'SafeMath: division by zero'
                        _1656 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1656] = 30
                        mem[_1656 + 32] = 'SafeMath: subtraction overflow'
                        if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                            _1707 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1707 + 68] = mem[idx + _1656 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1707 + 68] = mem[_1707 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1707 + -mem[64] + 100
                        _1818 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1818] = 30
                        mem[_1818 + 32] = 'SafeMath: subtraction overflow'
                        if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                            idx = idx + 1
                            s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                            continue 
                        _1907 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1907 + 68] = mem[idx + _1818 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1907 + 68] = mem[_1907 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1907 + -mem[64] + 100
                    if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1581 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1581] = 26
                    mem[_1581 + 32] = 'SafeMath: division by zero'
                    _1679 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1679] = 30
                    mem[_1679 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                        _1741 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1741 + 68] = mem[idx + _1679 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1741 + 68] = mem[_1741 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1741 + -mem[64] + 100
                    _1862 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1862] = 30
                    mem[_1862 + 32] = 'SafeMath: subtraction overflow'
                    if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1952 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1952 + 68] = mem[idx + _1862 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1952 + 68] = mem[_1952 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1952 + -mem[64] + 100
                if (10^12 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1332 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1332] = 26
                mem[_1332 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1332 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if ((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = ((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
                uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1580 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1580] = 26
                    mem[_1580 + 32] = 'SafeMath: division by zero'
                    _1678 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1678] = 30
                    mem[_1678 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                        _1738 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1738 + 68] = mem[idx + _1678 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1738 + 68] = mem[_1738 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1738 + -mem[64] + 100
                    _1859 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1859] = 30
                    mem[_1859 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1949 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1949 + 68] = mem[idx + _1859 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1949 + 68] = mem[_1949 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1949 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1600 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1600] = 26
                mem[_1600 + 32] = 'SafeMath: division by zero'
                _1706 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1706] = 30
                mem[_1706 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    _1774 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1774 + 68] = mem[idx + _1706 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1774 + 68] = mem[_1774 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1774 + -mem[64] + 100
                _1902 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1902] = 30
                mem[_1902 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _1986 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1986 + 68] = mem[idx + _1902 + 32]
                    idx = idx + 32
                    continue 
                mem[_1986 + 68] = mem[_1986 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1986 + -mem[64] + 100
            _1119 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1119] = 30
            mem[_1119 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))):
                _1135 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1135 + 68] = mem[idx + _1119 + 32]
                    idx = idx + 32
                    continue 
                mem[_1135 + 68] = mem[_1135 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1135 + -mem[64] + 100
            if not ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))):
                _1309 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1309] = 26
                mem[_1309 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1309 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
                uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1568 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1568] = 26
                    mem[_1568 + 32] = 'SafeMath: division by zero'
                    _1658 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1658] = 30
                    mem[_1658 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                        _1715 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1715 + 68] = mem[idx + _1658 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1715 + 68] = mem[_1715 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1715 + -mem[64] + 100
                    _1830 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1830] = 30
                    mem[_1830 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1922 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1922 + 68] = mem[idx + _1830 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1922 + 68] = mem[_1922 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1922 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1585 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1585] = 26
                mem[_1585 + 32] = 'SafeMath: division by zero'
                _1684 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1684] = 30
                mem[_1684 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    _1749 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1749 + 68] = mem[idx + _1684 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1749 + 68] = mem[_1749 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1749 + -mem[64] + 100
                _1875 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1875] = 30
                mem[_1875 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _1964 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1964 + 68] = mem[idx + _1875 + 32]
                    idx = idx + 32
                    continue 
                mem[_1964 + 68] = mem[_1964 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1964 + -mem[64] + 100
            if (('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))):
                _1336 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1336] = 26
                mem[_1336 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1336 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
                uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1584 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1584] = 26
                    mem[_1584 + 32] = 'SafeMath: division by zero'
                    _1683 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1683] = 30
                    mem[_1683 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                        _1746 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1746 + 68] = mem[idx + _1683 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1746 + 68] = mem[_1746 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1746 + -mem[64] + 100
                    _1872 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1872] = 30
                    mem[_1872 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1961 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1961 + 68] = mem[idx + _1872 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1961 + 68] = mem[_1961 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1961 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1602 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1602] = 26
                mem[_1602 + 32] = 'SafeMath: division by zero'
                _1714 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1714] = 30
                mem[_1714 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    _1785 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1785 + 68] = mem[idx + _1714 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1785 + 68] = mem[_1785 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1785 + -mem[64] + 100
                _1917 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1917] = 30
                mem[_1917 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _1997 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1997 + 68] = mem[idx + _1917 + 32]
                    idx = idx + 32
                    continue 
                mem[_1997 + 68] = mem[_1997 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1997 + -mem[64] + 100
            if (10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / (('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1360 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1360] = 26
            mem[_1360 + 32] = 'SafeMath: division by zero'
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1360 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if ((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                revert with 0, 'SafeMath: addition overflow'
            uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = ((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
            uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                _1601 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1601] = 26
                mem[_1601 + 32] = 'SafeMath: division by zero'
                _1713 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1713] = 30
                mem[_1713 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                    _1782 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1782 + 68] = mem[idx + _1713 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1782 + 68] = mem[_1782 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1782 + -mem[64] + 100
                _1914 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1914] = 30
                mem[_1914 + 32] = 'SafeMath: subtraction overflow'
                if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _1994 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1994 + 68] = mem[idx + _1914 + 32]
                    idx = idx + 32
                    continue 
                mem[_1994 + 68] = mem[_1994 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1994 + -mem[64] + 100
            if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1618 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1618] = 26
            mem[_1618 + 32] = 'SafeMath: division by zero'
            _1745 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1745] = 30
            mem[_1745 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                _1825 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1825 + 68] = mem[idx + _1745 + 32]
                    idx = idx + 32
                    continue 
                mem[_1825 + 68] = mem[_1825 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1825 + -mem[64] + 100
            _1956 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1956] = 30
            mem[_1956 + 32] = 'SafeMath: subtraction overflow'
            if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                idx = idx + 1
                s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                continue 
            _2023 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _2023 + 68] = mem[idx + _1956 + 32]
                idx = idx + 32
                continue 
            mem[_2023 + 68] = mem[_2023 + 70 len 30]
            revert with memory
              from mem[64]
               len _2023 + -mem[64] + 100
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
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
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
        require ext_code.size(('storage', 160, 0, 7))
        staticcall ('storage', 160, 0, 7).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[calldata.size + 200] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = mem[mem[64]]
        while idx < ('storage', 256, 0, 17):
            if block.number <= ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))):
                revert with 0, 
                            32,
                            41,
                            0x6e7175697450687820626c6f636b2e6e756d626572203c3d207069642e626f6e7573456e64426c6f63,
                            mem[mem[64] + 109 len 23]
            require idx < ('storage', 256, 0, 17)
            mem[0] = 17
            if block.number <= ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))):
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1127 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1127] = 26
                    mem[_1127 + 32] = 'SafeMath: division by zero'
                    _1163 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1163] = 30
                    mem[_1163 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                        _1175 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1175 + 68] = mem[idx + _1163 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1175 + 68] = mem[_1175 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1175 + -mem[64] + 100
                    _1229 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1229] = 30
                    mem[_1229 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1275 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1275 + 68] = mem[idx + _1229 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1275 + 68] = mem[_1275 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1275 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1131] = 26
                mem[_1131 + 32] = 'SafeMath: division by zero'
                _1167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1167] = 30
                mem[_1167 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    _1193 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1193 + 68] = mem[idx + _1167 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1193 + 68] = mem[_1193 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1193 + -mem[64] + 100
                _1250 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1250] = 30
                mem[_1250 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _1303 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1303 + 68] = mem[idx + _1250 + 32]
                    idx = idx + 32
                    continue 
                mem[_1303 + 68] = mem[_1303 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1303 + -mem[64] + 100
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1130 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1130] = 26
                    mem[_1130 + 32] = 'SafeMath: division by zero'
                    _1166 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1166] = 30
                    mem[_1166 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                        _1190 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1190 + 68] = mem[idx + _1166 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1190 + 68] = mem[_1190 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1190 + -mem[64] + 100
                    _1247 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1247] = 30
                    mem[_1247 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1300 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1300 + 68] = mem[idx + _1247 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1300 + 68] = mem[_1300 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1300 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1145 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1145] = 26
                mem[_1145 + 32] = 'SafeMath: division by zero'
                _1174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1174] = 30
                mem[_1174 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    _1210 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1210 + 68] = mem[idx + _1174 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1210 + 68] = mem[_1210 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1210 + -mem[64] + 100
                _1270 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1270] = 30
                mem[_1270 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _1328 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1328 + 68] = mem[idx + _1270 + 32]
                    idx = idx + 32
                    continue 
                mem[_1328 + 68] = mem[_1328 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1328 + -mem[64] + 100
            require idx < ('storage', 256, 0, 17)
            mem[0] = 17
            if block.number <= ('storage', 256, 0, ('add', 2, ('mul', 15, ('var', 0)), ('sha3', 17))):
                _1173 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1173] = 26
                mem[_1173 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1173 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
                uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1517 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1517] = 26
                    mem[_1517 + 32] = 'SafeMath: division by zero'
                    _1561 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1561] = 30
                    mem[_1561 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                        _1597 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1597 + 68] = mem[idx + _1561 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1597 + 68] = mem[_1597 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1597 + -mem[64] + 100
                    _1635 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1635] = 30
                    mem[_1635 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1675 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1675 + 68] = mem[idx + _1635 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1675 + 68] = mem[_1675 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1675 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1537 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1537] = 26
                mem[_1537 + 32] = 'SafeMath: division by zero'
                _1579 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1579] = 30
                mem[_1579 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    _1615 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1615 + 68] = mem[idx + _1579 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1615 + 68] = mem[_1615 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1615 + -mem[64] + 100
                _1652 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1652] = 30
                mem[_1652 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _1703 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1703 + 68] = mem[idx + _1652 + 32]
                    idx = idx + 32
                    continue 
                mem[_1703 + 68] = mem[_1703 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1703 + -mem[64] + 100
            if ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) >= ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))):
                _1189 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1189] = 26
                mem[_1189 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    s = 32
                    while s < 26:
                        mem[s + mem[64] + 68] = mem[s + _1189 + 32]
                        s = s + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
                uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1536 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1536] = 26
                    mem[_1536 + 32] = 'SafeMath: division by zero'
                    _1578 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1578] = 30
                    mem[_1578 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                        _1612 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1612 + 68] = mem[idx + _1578 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1612 + 68] = mem[_1612 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1612 + -mem[64] + 100
                    _1649 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1649] = 30
                    mem[_1649 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1700 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1700 + 68] = mem[idx + _1649 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1700 + 68] = mem[_1700 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1700 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1545 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1545] = 26
                mem[_1545 + 32] = 'SafeMath: division by zero'
                _1596 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1596] = 30
                mem[_1596 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    _1624 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1624 + 68] = mem[idx + _1596 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1624 + 68] = mem[_1624 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1624 + -mem[64] + 100
                _1670 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1670] = 30
                mem[_1670 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _1734 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1734 + 68] = mem[idx + _1670 + 32]
                    idx = idx + 32
                    continue 
                mem[_1734 + 68] = mem[_1734 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1734 + -mem[64] + 100
            if block.number < ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))):
                _1123 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1123] = 30
                mem[_1123 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) > block.number:
                    _1139 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1139 + 68] = mem[idx + _1123 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1139 + 68] = mem[_1139 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1139 + -mem[64] + 100
                if not block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1294 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1294] = 26
                    mem[_1294 + 32] = 'SafeMath: division by zero'
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1294 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        _1558 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1558] = 26
                        mem[_1558 + 32] = 'SafeMath: division by zero'
                        _1647 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1647] = 30
                        mem[_1647 + 32] = 'SafeMath: subtraction overflow'
                        if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                            _1694 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1694 + 68] = mem[idx + _1647 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1694 + 68] = mem[_1694 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1694 + -mem[64] + 100
                        _1800 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1800] = 30
                        mem[_1800 + 32] = 'SafeMath: subtraction overflow'
                        if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                            idx = idx + 1
                            s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                            continue 
                        _1889 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1889 + 68] = mem[idx + _1800 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1889 + 68] = mem[_1889 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1889 + -mem[64] + 100
                    if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1574 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1574] = 26
                    mem[_1574 + 32] = 'SafeMath: division by zero'
                    _1668 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1668] = 30
                    mem[_1668 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                        _1726 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1726 + 68] = mem[idx + _1668 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1726 + 68] = mem[_1726 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1726 + -mem[64] + 100
                    _1842 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1842] = 30
                    mem[_1842 + 32] = 'SafeMath: subtraction overflow'
                    if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1933 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1933 + 68] = mem[idx + _1842 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1933 + 68] = mem[_1933 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1933 + -mem[64] + 100
                if (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))):
                    _1319 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1319] = 26
                    mem[_1319 + 32] = 'SafeMath: division by zero'
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1319 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        _1573 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1573] = 26
                        mem[_1573 + 32] = 'SafeMath: division by zero'
                        _1667 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1667] = 30
                        mem[_1667 + 32] = 'SafeMath: subtraction overflow'
                        if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                            _1723 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1723 + 68] = mem[idx + _1667 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1723 + 68] = mem[_1723 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1723 + -mem[64] + 100
                        _1839 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1839] = 30
                        mem[_1839 + 32] = 'SafeMath: subtraction overflow'
                        if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                            idx = idx + 1
                            s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                            continue 
                        _1930 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1930 + 68] = mem[idx + _1839 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1930 + 68] = mem[_1930 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1930 + -mem[64] + 100
                    if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1591 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1591] = 26
                    mem[_1591 + 32] = 'SafeMath: division by zero'
                    _1693 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1693] = 30
                    mem[_1693 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                        _1759 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1759 + 68] = mem[idx + _1693 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1759 + 68] = mem[_1759 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1759 + -mem[64] + 100
                    _1884 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1884] = 30
                    mem[_1884 + 32] = 'SafeMath: subtraction overflow'
                    if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1971 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1971 + 68] = mem[idx + _1884 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1971 + 68] = mem[_1971 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1971 + -mem[64] + 100
                if (10^12 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1344 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1344] = 26
                mem[_1344 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1344 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if ((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = ((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
                uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1590 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1590] = 26
                    mem[_1590 + 32] = 'SafeMath: division by zero'
                    _1692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1692] = 30
                    mem[_1692 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                        _1756 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1756 + 68] = mem[idx + _1692 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1756 + 68] = mem[_1756 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1756 + -mem[64] + 100
                    _1881 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1881] = 30
                    mem[_1881 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1968 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1968 + 68] = mem[idx + _1881 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1968 + 68] = mem[_1968 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1968 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1609 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1609] = 26
                mem[_1609 + 32] = 'SafeMath: division by zero'
                _1722 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1722] = 30
                mem[_1722 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    _1795 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1795 + 68] = mem[idx + _1722 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1795 + 68] = mem[_1795 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1795 + -mem[64] + 100
                _1925 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1925] = 30
                mem[_1925 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _2001 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2001 + 68] = mem[idx + _1925 + 32]
                    idx = idx + 32
                    continue 
                mem[_2001 + 68] = mem[_2001 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2001 + -mem[64] + 100
            _1124 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1124] = 30
            mem[_1124 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))):
                _1142 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1142 + 68] = mem[idx + _1124 + 32]
                    idx = idx + 32
                    continue 
                mem[_1142 + 68] = mem[_1142 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1142 + -mem[64] + 100
            if not ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))):
                _1322 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1322] = 26
                mem[_1322 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1322 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
                uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1577 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1577] = 26
                    mem[_1577 + 32] = 'SafeMath: division by zero'
                    _1669 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1669] = 30
                    mem[_1669 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                        _1731 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1731 + 68] = mem[idx + _1669 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1731 + 68] = mem[_1731 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1731 + -mem[64] + 100
                    _1851 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1851] = 30
                    mem[_1851 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1945 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1945 + 68] = mem[idx + _1851 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1945 + 68] = mem[_1945 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1945 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1595 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1595] = 26
                mem[_1595 + 32] = 'SafeMath: division by zero'
                _1698 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1698] = 30
                mem[_1698 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    _1767 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1767 + 68] = mem[idx + _1698 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1767 + 68] = mem[_1767 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1767 + -mem[64] + 100
                _1897 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1897] = 30
                mem[_1897 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _1983 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1983 + 68] = mem[idx + _1897 + 32]
                    idx = idx + 32
                    continue 
                mem[_1983 + 68] = mem[_1983 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1983 + -mem[64] + 100
            if (('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))):
                _1348 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1348] = 26
                mem[_1348 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1348 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
                uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    _1594 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1594] = 26
                    mem[_1594 + 32] = 'SafeMath: division by zero'
                    _1697 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1697] = 30
                    mem[_1697 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                        _1764 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1764 + 68] = mem[idx + _1697 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1764 + 68] = mem[_1764 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1764 + -mem[64] + 100
                    _1894 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1894] = 30
                    mem[_1894 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                        continue 
                    _1980 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1980 + 68] = mem[idx + _1894 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1980 + 68] = mem[_1980 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1980 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1611 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1611] = 26
                mem[_1611 + 32] = 'SafeMath: division by zero'
                _1730 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1730] = 30
                mem[_1730 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                    _1806 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1806 + 68] = mem[idx + _1730 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1806 + 68] = mem[_1806 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1806 + -mem[64] + 100
                _1940 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1940] = 30
                mem[_1940 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _2012 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2012 + 68] = mem[idx + _1940 + 32]
                    idx = idx + 32
                    continue 
                mem[_2012 + 68] = mem[_2012 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2012 + -mem[64] + 100
            if (10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / (('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1374 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1374] = 26
            mem[_1374 + 32] = 'SafeMath: division by zero'
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1374 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if ((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                revert with 0, 'SafeMath: addition overflow'
            uint256(stor[(15 * idx) + sha3(17) + 6].field_0) = ((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 17)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17)))
            uint256(stor[(15 * idx) + sha3(17) + 5].field_0) = block.number
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))):
                _1610 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1610] = 26
                mem[_1610 + 32] = 'SafeMath: division by zero'
                _1729 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1729] = 30
                mem[_1729 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > 0:
                    _1803 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1803 + 68] = mem[idx + _1729 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1803 + 68] = mem[_1803 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1803 + -mem[64] + 100
                _1937 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1937] = 30
                mem[_1937 + 32] = 'SafeMath: subtraction overflow'
                if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                    idx = idx + 1
                    s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                    continue 
                _2009 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2009 + 68] = mem[idx + _1937 + 32]
                    idx = idx + 32
                    continue 
                mem[_2009 + 68] = mem[_2009 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2009 + -mem[64] + 100
            if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1623 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1623] = 26
            mem[_1623 + 32] = 'SafeMath: division by zero'
            _1763 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1763] = 30
            mem[_1763 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12:
                _1846 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1846 + 68] = mem[idx + _1763 + 32]
                    idx = idx + 32
                    continue 
                mem[_1846 + 68] = mem[_1846 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1846 + -mem[64] + 100
            _1975 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1975] = 30
            mem[_1975 + 32] = 'SafeMath: subtraction overflow'
            if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17))) <= s:
                idx = idx + 1
                s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 17))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 17))) / 10^12) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 17)))
                continue 
            _2037 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _2037 + 68] = mem[idx + _1975 + 32]
                idx = idx + 32
                continue 
            mem[_2037 + 68] = mem[_2037 + 70 len 30]
            revert with memory
              from mem[64]
               len _2037 + -mem[64] + 100
    require ext_code.size(('storage', 160, 0, 7))
    staticcall ('storage', 160, 0, 7).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 7))
    if s <= ext_call.return_data[0]:
        call ('storage', 160, 0, 7).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), s
    else:
        call ('storage', 160, 0, 7).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xd44b1c45: address(arg1), s
}

function sub_7d35a034(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= ('storage', 256, 0, 17):
        revert with 0, 'dpid >= poolInfo.length'
    if block.number <= ('storage', 256, 0, ('add', 5, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: addition overflow'
            if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) != ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
            if not (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       ((('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
            if not (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       ((('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: addition overflow'
        if not (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       0
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if not (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if 0 / ('storage', 256, 0, 1) > (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
               ((('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
    if not ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: addition overflow'
            if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) != ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
            if not (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       ((('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
            if not (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       ((('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: addition overflow'
        if not (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       0
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if not (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if 0 / ('storage', 256, 0, 1) > (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
               ((('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
    require arg1 < ('storage', 256, 0, 17)
    if block.number <= ('storage', 256, 0, ('add', 2, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
        if not ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: division by zero'
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: addition overflow'
            if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: addition overflow'
        if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       0
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
               (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
    if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) >= ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
        if not ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: division by zero'
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: addition overflow'
            if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: addition overflow'
        if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       0
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
               (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
    if block.number < ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
        if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
            if not ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 'SafeMath: division by zero'
            if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
                    if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ('storage', 256, 0, 1):
                            if not ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                                   0
                        if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                    if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                    if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
                    if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ('storage', 256, 0, 1):
                            if not ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                                   0
                        if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                    if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                    if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: addition overflow'
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
                if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
                if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: addition overflow'
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if (block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) != ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))):
            if not ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 'SafeMath: division by zero'
            if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
                    if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ('storage', 256, 0, 1):
                            if not ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                                   0
                        if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                    if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                    if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
                    if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ('storage', 256, 0, 1):
                            if not ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                                   0
                        if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                    if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                    if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: addition overflow'
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
                if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
                if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: addition overflow'
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if (10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / (block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: division by zero'
        if ((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: addition overflow'
            if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) != ((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > ((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
            if not (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       ((((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
            if not (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       ((((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: addition overflow'
        if not (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       0
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if not (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if 0 / ('storage', 256, 0, 1) > (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 10) * (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, 10) * (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
               ((((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
    if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) > ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
        revert with 0, 'SafeMath: subtraction overflow'
    if not ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))):
        if not ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: division by zero'
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: addition overflow'
            if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: addition overflow'
        if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       0
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
               (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
    if (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) != ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))):
        if not ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: division by zero'
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
                if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ('storage', 256, 0, 1):
                        if not ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                               0
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
                if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: addition overflow'
            if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: addition overflow'
        if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       0
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if not ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if 0 / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
               (((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
    if (10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
        revert with 0, 'SafeMath: division by zero'
    if ((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
        revert with 0, 'SafeMath: addition overflow'
    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))):
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
            if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
            if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ('storage', 256, 0, 1):
                    if not ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                           0
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
            if -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
            if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (-1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * -1 * ('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: addition overflow'
        if not -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       0
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if not (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if 0 / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
               ((-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (-1 * ('storage', 256, 0, 11) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) - (('storage', 256, 0, 1) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))))) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
    if ((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) != ((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) > ((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 6))):
        if not (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       0
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if not (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if 0 / ('storage', 256, 0, 1) > (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 10) * (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, 10) * (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
               ((((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))) < ('storage', 256, 0, 12):
        if not (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ('storage', 256, 0, 1):
                if not ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                       0
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
        if (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 1):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if not (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if 0 / ('storage', 256, 0, 1) > (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   ((((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
        if ('storage', 256, 0, 10) * (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, 10) * (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
               ((((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
    if ('storage', 256, 0, 11) + ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
        revert with 0, 'SafeMath: addition overflow'
    if not (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))):
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ('storage', 256, 0, 1):
            if not ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: division by zero'
            if 0 / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
                   0
        if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / 0 / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > 0 / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
               (0 / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * 0 / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
    if (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) != ('storage', 256, 0, 11) + ('storage', 256, 0, 1):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not ('storage', 256, 0, 1):
        revert with 0, 'SafeMath: division by zero'
    if not (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
        if not ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: division by zero'
        if 0 / ('storage', 256, 0, 1) > (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
               ((((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (0 / ('storage', 256, 0, 1))
    if ('storage', 256, 0, 10) * (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) != ('storage', 256, 0, 10):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not ('storage', 256, 0, 1):
        revert with 0, 'SafeMath: division by zero'
    if ('storage', 256, 0, 10) * (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1) > (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1):
        revert with 0, 'SafeMath: subtraction overflow'
    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16))))), 
           ((((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1)) - (('storage', 256, 0, 10) * (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 11)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 11)) + (((10^12 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) - (10^12 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 17))) * ('storage', 256, 0, ('add', 7, ('sha3', 17), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 17), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) / 10^12 * ('storage', 256, 0, 1)) - (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 16)))))) * ('storage', 256, 0, 1)) / ('storage', 256, 0, 1) / ('storage', 256, 0, 1))
}



}
