contract main {




// =====================  Runtime code  =====================


#
#  - releaseToken(address arg1, uint256 arg2)
#  - getClaimAbleBalance(address arg1)
#  - sub_bbb8c2b3(?)
#
const implementationVersion = 2


function lockedBalances(address arg1) payable {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7)))
}

function sub_216a75c7(?) payable {
    return ('storage', 160, 0, 1)
}

function dispatchTimes() payable {
    return ('storage', 256, 0, 4)
}

function lockedIndexs(address arg1) payable {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 9))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), 9))))
}

function txNum() payable {
    return ('storage', 256, 0, 5)
}

function lockPeriod() payable {
    return ('storage', 256, 0, 6)
}

function sub_5167c417(?) payable {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 11)))
}

function lockedAllRewards(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 8))))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 8))))))
}

function lockedBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
}

function getMultiSignatureAddress() payable {
    return ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975))
}

function sub_76396efb(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 10)))
    return ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 10))), ('param', 'arg2')))
}

function owner() payable {
    return ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'"))
}

function sub_a67a050b(?) payable {
    return ('storage', 256, 0, 2)
}

function timeSpan() payable {
    return ('storage', 256, 0, 3)
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

function sub_f4b081a2(?) payable {
    if not ('storage', 8, 160, 0):
        revert with 0, 'This contract is not halted'
    if not ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))):
        revert with 0, 'locked balance is zero'
    uint256(stor[sha3(msg.sender, 7)].field_0) = 0
    if ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 11))) < ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 11))):
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(('storage', 160, 0, 1))
    call ('storage', 160, 0, 1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
                        0x774f726967696e5472616e73666572726564203a206f6c64206f726967696e20697320696c6c6567616c2061646472657373,
                        mem[calldata.size + 318 len 14]
        address(stor[sha3('org.defrost.Origin.storage.1')].field_0) = arg2
        Mask(96, 0, stor[sha3('org.defrost.Origin.storage.1')].field_160) = 0
}

function sub_71970422(?) payable {
    require calldata.size - 4 >= 160
    if msg.sender == ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")):
        if ('storage', 256, 0, ('add', ('mask_shl', 256, -224, -224, ('cd', 0)), ('sha3', "'org.defrost.Once.storage'"))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0xfe70726f78794f776e6572203a20546869732066756e6374696f6e206d75737420626520696e766f6b6564206f6e6c79206f6e6365,
                        mem[217 len 11]
        uint256(stor[(uint32(call.func_hash) >> 224) + sha3('org.defrost.Once.storage')].field_0) = 1
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
            if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x6470726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f72696769,
                            mem[205 len 23]
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
    if arg1:
        address(stor[1].field_0) = arg1
    if arg2:
        uint256(stor[3].field_0) = arg2
    if arg3:
        uint256(stor[4].field_0) = arg3
    if arg4:
        uint256(stor[5].field_0) = arg4
    if arg5:
        uint256(stor[2].field_0) = arg5
    uint256(stor[6].field_0) = ('storage', 256, 0, 4) * ('storage', 256, 0, 3)
}



}
