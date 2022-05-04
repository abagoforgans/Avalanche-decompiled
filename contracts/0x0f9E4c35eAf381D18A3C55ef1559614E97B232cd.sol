contract main {




// =====================  Runtime code  =====================


function sub_2a32e7ab(?) payable {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 5)))
}

function sub_51a482c4(?) payable {
    require calldata.size - 4 >= 32
    return ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 4))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), 4)))),
           ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), 4)))),
           ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), 4)))),
           bool(('storage', 8, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), 4)))))
}

function getMultiSignatureAddress() payable {
    return ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975))
}

function owner() payable {
    return ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'"))
}

function claimableBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 5))), 4))))
}

function rewardToken() payable {
    return ('storage', 160, 0, 2)
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
    address(stor[2].field_0) = arg1
}

function setUserStatus(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ('storage', 160, 0, 2)
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
    require arg1
    uint8(stor[sha3(('storage', 256, 0, ('sha3', ('data', 'msg.sender', 5))), 4) + 4].field_0) = uint8(arg2)
}

function sub_0f167f68(?) payable {
    require calldata.size - 4 >= 64
    require ('storage', 160, 0, 2)
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
    if arg2 >= 100:
        revert with 0, 'ratio need to below 100'
    uint256(stor[1].field_0) = arg2 + ('storage', 256, 0, 1) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 5))), 4))))
    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 5))), 4) + 1].field_0) = arg2
}

function claimReward() payable {
    require ('storage', 160, 0, 2)
    if ('storage', 8, 160, 0):
        revert with 0, 'This contract is halted'
    if not ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 5))):
        revert with 0, 'no this account'
    if not ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 5))), 4)))):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6470656e64696e6720616d6f756e74206e65656420746f20626520626967676572207468616e20,
                    mem[203 len 25]
    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', 'msg.sender', 5))), 4) + 3].field_0) = 0
    require ext_code.size(('storage', 160, 0, 2))
    staticcall ('storage', 160, 0, 2).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 2))
    call ('storage', 160, 0, 2).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 5))), 4))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 2))
    staticcall ('storage', 160, 0, 2).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 5))), 4)))) != 0:
        revert with 0, 32, 40, 0xfe6572726f72207472616e73666572206d656c742c62616c616e636520636865636b206661696c65, mem[268 len 24]
}

function sub_80c80a4c(?) payable {
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
    require ext_code.size(('storage', 160, 0, 2))
    staticcall ('storage', 160, 0, 2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 2))
    call ('storage', 160, 0, 2).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
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
                        0x774f726967696e5472616e73666572726564203a206f6c64206f726967696e20697320696c6c6567616c2061646472657373,
                        mem[calldata.size + 318 len 14]
        address(stor[sha3('org.defrost.Origin.storage.1')].field_0) = arg2
        Mask(96, 0, stor[sha3('org.defrost.Origin.storage.1')].field_160) = 0
}

function sub_8563dbe4(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require ('storage', 160, 0, 2)
    if arg1:
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = arg1
        require ext_code.size(('storage', 160, 0, 2))
        call ('storage', 160, 0, 2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ('storage', 256, 0, 1):
            idx = 1
            while idx < ('storage', 256, 0, 3) + 1:
                mem[0] = idx
                mem[32] = 4
                if ('storage', 8, 0, ('add', 4, ('sha3', ('data', ('var', 0), 4)))):
                    idx = idx + 1
                    continue 
                if not arg1:
                    _34 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_34] = 26
                    mem[_34 + 32] = 'SafeMath: division by zero'
                    if ('storage', 256, 0, 1):
                        if (0 / ('storage', 256, 0, 1)) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('var', 0), 4)))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('var', 0), 4)))):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[sha3(idx, 4) + 3].field_0) = (0 / ('storage', 256, 0, 1)) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('var', 0), 4))))
                        if (0 / ('storage', 256, 0, 1)) + ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('var', 0), 4)))) < ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('var', 0), 4)))):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[sha3(idx, 4) + 2].field_0) = (0 / ('storage', 256, 0, 1)) + ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('var', 0), 4))))
                        idx = idx + 1
                        continue 
                    _36 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _36 + 68] = mem[idx + _34 + 32]
                        idx = idx + 32
                        continue 
                    mem[_36 + 68] = mem[_36 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _36 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('var', 0), 4)))) * arg1 / arg1 != ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('var', 0), 4)))):
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _35 = mem[64]
                mem[64] = mem[64] + 64
                mem[_35] = 26
                mem[_35 + 32] = 'SafeMath: division by zero'
                if ('storage', 256, 0, 1):
                    if (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('var', 0), 4)))) * arg1 / ('storage', 256, 0, 1)) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('var', 0), 4)))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('var', 0), 4)))):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[sha3(idx, 4) + 3].field_0) = (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('var', 0), 4)))) * arg1 / ('storage', 256, 0, 1)) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('var', 0), 4))))
                    if (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('var', 0), 4)))) * arg1 / ('storage', 256, 0, 1)) + ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('var', 0), 4)))) < ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('var', 0), 4)))):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[sha3(idx, 4) + 2].field_0) = (('storage', 256, 0, ('add', 1, ('sha3', ('data', ('var', 0), 4)))) * arg1 / ('storage', 256, 0, 1)) + ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('var', 0), 4))))
                    idx = idx + 1
                    continue 
                _39 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _39 + 68] = mem[idx + _35 + 32]
                    idx = idx + 32
                    continue 
                mem[_39 + 68] = mem[_39 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _39 + -mem[64] + 100
}

function sub_8f3d3111(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ('storage', 160, 0, 2)
    if msg.sender == ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")):
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 'org.defrost.Once.storage'
        if ('storage', 256, 0, ('add', ('mask_shl', 256, -224, -224, ('cd', 0)), ('sha3', "'org.defrost.Once.storage'"))):
            revert with 0, 
                        32,
                        53,
                        0x6470726f78794f776e6572203a20546869732066756e6374696f6e206d75737420626520696e766f6b6564206f6e6c79206f6e6365,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 281 len 11]
        uint256(stor[(uint32(call.func_hash) >> 224) + sha3('org.defrost.Once.storage')].field_0) = 1
        require arg1.length == arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'user address is 0'
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                revert with 0, 'ratio should be bigger than 0'
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 160] > 100:
                revert with 0, 'ratio should below 100'
            require idx < mem[96]
            if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', ('add', 140, ('mask_shl', 251, 0, 5, ('var', 0))), 20)), 5))) != 0:
                revert with 0, 'the user exist already'
            uint256(stor[3].field_0) = ('storage', 256, 0, 3) + 1
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 5
            uint256(stor[sha3(mem[(32 * idx) + 140 len 20], 5)].field_0) = ('storage', 256, 0, 3) + 1
            _219 = mem[64]
            mem[64] = mem[64] + 160
            require idx < mem[96]
            mem[_219] = mem[(32 * idx) + 140 len 20]
            require idx < mem[(32 * arg1.length) + 128]
            mem[_219 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[_219 + 64] = 0
            mem[_219 + 96] = 0
            mem[_219 + 128] = 0
            mem[0] = ('storage', 256, 0, 3)
            mem[32] = 4
            address(stor[sha3(('storage', 256, 0, 3), 4)].field_0) = mem[_219 + 12 len 20]
            uint256(stor[sha3(('storage', 256, 0, 3), 4) + 1].field_0) = mem[_219 + 32]
            uint256(stor[sha3(('storage', 256, 0, 3), 4) + 2].field_0) = 0
            uint256(stor[sha3(('storage', 256, 0, 3), 4) + 3].field_0) = 0
            uint8(stor[sha3(('storage', 256, 0, 3), 4) + 4].field_0) = 0
            require idx < mem[(32 * arg1.length) + 128]
            uint256(stor[1].field_0) = mem[(32 * idx) + (32 * arg1.length) + 160] + ('storage', 256, 0, 1)
            idx = idx + 1
            continue 
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) == msg.sender:
            mem[(32 * arg1.length) + (32 * arg2.length) + 192] = address(msg.sender)
            mem[(32 * arg1.length) + (32 * arg2.length) + 212] = address(this.address)
            mem[(32 * arg1.length) + (32 * arg2.length) + 232] = msg.value
            mem[(32 * arg1.length) + (32 * arg2.length) + 264 len calldata.size] = call.data[0 len calldata.size]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = calldata.size + 72
            mem[64] = (32 * arg1.length) + (32 * arg2.length) + calldata.size + 264
            mem[(32 * arg1.length) + (32 * arg2.length) + calldata.size + 268] = sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])
            mem[(32 * arg1.length) + (32 * arg2.length) + calldata.size + 300] = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
            require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
            staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
                    gas gas_remaining wei
                   args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
            mem[(32 * arg1.length) + (32 * arg2.length) + calldata.size + 264] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            46,
                            0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                            mem[(32 * arg1.length) + (32 * arg2.length) + calldata.size + 378 len 18]
            uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
            require arg1.length == arg2.length
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'user address is 0'
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                    revert with 0, 'ratio should be bigger than 0'
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 160] > 100:
                    revert with 0, 'ratio should below 100'
                require idx < mem[96]
                if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', ('add', 140, ('mask_shl', 251, 0, 5, ('var', 0))), 20)), 5))) != 0:
                    revert with 0, 'the user exist already'
                uint256(stor[3].field_0) = ('storage', 256, 0, 3) + 1
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                uint256(stor[sha3(mem[(32 * idx) + 140 len 20], 5)].field_0) = ('storage', 256, 0, 3) + 1
                _211 = mem[64]
                mem[64] = mem[64] + 160
                require idx < mem[96]
                mem[_211] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * arg1.length) + 128]
                mem[_211 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[_211 + 64] = 0
                mem[_211 + 96] = 0
                mem[_211 + 128] = 0
                mem[0] = ('storage', 256, 0, 3)
                mem[32] = 4
                address(stor[sha3(('storage', 256, 0, 3), 4)].field_0) = mem[_211 + 12 len 20]
                uint256(stor[sha3(('storage', 256, 0, 3), 4) + 1].field_0) = mem[_211 + 32]
                uint256(stor[sha3(('storage', 256, 0, 3), 4) + 2].field_0) = 0
                uint256(stor[sha3(('storage', 256, 0, 3), 4) + 3].field_0) = 0
                uint8(stor[sha3(('storage', 256, 0, 3), 4) + 4].field_0) = 0
                require idx < mem[(32 * arg1.length) + 128]
                uint256(stor[1].field_0) = mem[(32 * idx) + (32 * arg1.length) + 160] + ('storage', 256, 0, 1)
                idx = idx + 1
                continue 
        else:
            if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
                revert with 0, 
                            32,
                            41,
                            0x3070726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f72696769,
                            mem[(32 * arg1.length) + (32 * arg2.length) + 269 len 23]
            mem[(32 * arg1.length) + (32 * arg2.length) + 192] = address(msg.sender)
            mem[(32 * arg1.length) + (32 * arg2.length) + 212] = address(this.address)
            mem[(32 * arg1.length) + (32 * arg2.length) + 232] = msg.value
            mem[(32 * arg1.length) + (32 * arg2.length) + 264 len calldata.size] = call.data[0 len calldata.size]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = calldata.size + 72
            mem[64] = (32 * arg1.length) + (32 * arg2.length) + calldata.size + 264
            mem[(32 * arg1.length) + (32 * arg2.length) + calldata.size + 268] = sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])
            mem[(32 * arg1.length) + (32 * arg2.length) + calldata.size + 300] = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
            require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
            staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).0x1ebaa166 with:
                    gas gas_remaining wei
                   args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
            mem[(32 * arg1.length) + (32 * arg2.length) + calldata.size + 264] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            46,
                            0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                            mem[(32 * arg1.length) + (32 * arg2.length) + calldata.size + 378 len 18]
            uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
            require arg1.length == arg2.length
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'user address is 0'
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                    revert with 0, 'ratio should be bigger than 0'
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 160] > 100:
                    revert with 0, 'ratio should below 100'
                require idx < mem[96]
                if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', ('add', 140, ('mask_shl', 251, 0, 5, ('var', 0))), 20)), 5))) != 0:
                    revert with 0, 'the user exist already'
                uint256(stor[3].field_0) = ('storage', 256, 0, 3) + 1
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                uint256(stor[sha3(mem[(32 * idx) + 140 len 20], 5)].field_0) = ('storage', 256, 0, 3) + 1
                _215 = mem[64]
                mem[64] = mem[64] + 160
                require idx < mem[96]
                mem[_215] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * arg1.length) + 128]
                mem[_215 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[_215 + 64] = 0
                mem[_215 + 96] = 0
                mem[_215 + 128] = 0
                mem[0] = ('storage', 256, 0, 3)
                mem[32] = 4
                address(stor[sha3(('storage', 256, 0, 3), 4)].field_0) = mem[_215 + 12 len 20]
                uint256(stor[sha3(('storage', 256, 0, 3), 4) + 1].field_0) = mem[_215 + 32]
                uint256(stor[sha3(('storage', 256, 0, 3), 4) + 2].field_0) = 0
                uint256(stor[sha3(('storage', 256, 0, 3), 4) + 3].field_0) = 0
                uint8(stor[sha3(('storage', 256, 0, 3), 4) + 4].field_0) = 0
                require idx < mem[(32 * arg1.length) + 128]
                uint256(stor[1].field_0) = mem[(32 * idx) + (32 * arg1.length) + 160] + ('storage', 256, 0, 1)
                idx = idx + 1
                continue 
}



}
