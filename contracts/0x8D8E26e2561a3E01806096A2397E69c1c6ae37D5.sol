contract main {




// =====================  Runtime code  =====================


function REWARD_NUM() {
    return ('storage', 256, 0, 4)
}

function totalSupply() {
    return ('storage', 256, 0, 0)
}

function totalStakedFor(address arg1) {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1)))
}

function stakeToken() {
    return ('storage', 160, 0, 2)
}

function getMultiSignatureAddress() {
    return ('storage', 160, 0, ('sha3', 991116237751499768183652006675822047353863918211386268631731825209579758547001703))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1)))
}

function rewardTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < ('storage', 256, 0, 5)
    return ('storage', 160, 0, ('add', ('sha3', 5), ('param', 'arg1')))
}

function totalStaked() {
    return ('storage', 256, 0, 0)
}

function owner() {
    return ('storage', 160, 0, 3)
}

function sub_a7cf3438(?) {
    require calldata.size - 4 >= 32
    return ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 6)))
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == ('storage', 160, 0, 3))
}

function txOrigin() {
    return ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")), 
           ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'"))
}

function sub_b40643a9(?) {
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) == msg.sender:
        return True
    return (('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) == msg.sender)
}

function setHalt(bool arg1) {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, 3) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor[3].field_160) = Mask(96, 0, arg1)
}

function renounceOwnership() {
    if ('storage', 160, 0, 3) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(('storage', 160, 0, 3), 0);
    address(stor[3].field_0) = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, 3) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(('storage', 160, 0, 3), arg1);
    address(stor[3].field_0) = arg1
}

function rewardPerToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < ('storage', 256, 0, 5)
    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('param', 'arg1'), ('sha3', 5))), 6))))
    staticcall ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('param', 'arg1'), ('sha3', 5))), 6))).rewardPerToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_1147ff0b(?) {
    require calldata.size - 4 >= 32
    require arg1 < ('storage', 256, 0, 5)
    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('param', 'arg1'), ('sha3', 5))), 6))))
    staticcall ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('param', 'arg1'), ('sha3', 5))), 6))).getMineInfo() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function allPendingReward(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 < ('storage', 256, 0, 5)
    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('param', 'arg1'), ('sha3', 5))), 6))))
    staticcall ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('param', 'arg1'), ('sha3', 5))), 6))).earned(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getReward() {
    if ('storage', 8, 160, 3):
        revert with 0, 'This contract is halted'
    require not ('storage', 8, 168, 3)
    uint8(stor[3].field_168) = 1
    idx = 0
    while idx < ('storage', 256, 0, 5):
        mem[0] = ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5)))
        mem[32] = 6
        mem[96] = 0xc00007b000000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))))
        call ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))).getReward(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    uint8(stor[3].field_168) = 0
}

function sub_0e573242(?) {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 991116237751499768183652006675822047353863918211386268631731825209579758547001703)))
    staticcall ('storage', 160, 0, ('sha3', 991116237751499768183652006675822047353863918211386268631731825209579758547001703)).0x1ebaa166 with:
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
    idx = 0
    while idx < ('storage', 256, 0, 5):
        mem[0] = ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5)))
        mem[32] = 6
        mem[calldata.size + 200] = 0xe57324200000000000000000000000000000000000000000000000000000000
        mem[calldata.size + 204] = arg1
        require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))))
        call ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))).0xe573242 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'cannot stake 0'
    require ext_code.size(('storage', 160, 0, 2))
    staticcall ('storage', 160, 0, 2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 2))
    call ('storage', 160, 0, 2).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 2))
    staticcall ('storage', 160, 0, 2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1:
        revert with 0, 'token stake transfer error!'
    if arg1 + ('storage', 256, 0, 0) < ('storage', 256, 0, 0):
        revert with 0, 'SafeMath: addition overflow'
    uint256(stor[0].field_0) = arg1 + ('storage', 256, 0, 0)
    if arg1 + ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 1))) < ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 1))):
        revert with 0, 'SafeMath: addition overflow'
    uint256(stor[sha3(msg.sender, 1)].field_0) = arg1 + ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 1)))
    idx = 0
    while idx < ('storage', 256, 0, 5):
        mem[0] = ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5)))
        mem[32] = 6
        mem[96] = 0x2647620400000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))))
        call ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))).stake(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    emit Staked(arg1, msg.sender);
}

function sub_f6c1da1a(?) {
    require calldata.size - 4 >= 64
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 991116237751499768183652006675822047353863918211386268631731825209579758547001703)))
    staticcall ('storage', 160, 0, ('sha3', 991116237751499768183652006675822047353863918211386268631731825209579758547001703)).0x1ebaa166 with:
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
                        0x6c4f726967696e5472616e73666572726564203a206f6c64206f726967696e20697320696c6c6567616c2061646472657373,
                        mem[calldata.size + 318 len 14]
        address(stor[sha3('org.defrost.Origin.storage.1')].field_0) = arg2
        Mask(96, 0, stor[sha3('org.defrost.Origin.storage.1')].field_160) = 0
}

function exit() {
    if ('storage', 8, 160, 3):
        revert with 0, 'This contract is halted'
    require not ('storage', 8, 168, 3)
    uint8(stor[3].field_168) = 1
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) > ('storage', 256, 0, 0):
        revert with 0, 'SafeMath: subtraction overflow'
    uint256(stor[0].field_0) = ('storage', 256, 0, 0) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) > ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 1))):
        revert with 0, 'SafeMath: subtraction overflow'
    uint256(stor[sha3(msg.sender, 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 1))) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))
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
        args msg.sender, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 2))
    staticcall ('storage', 160, 0, 2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
        revert with 0, 'token unstake transfer error!'
    idx = 0
    while idx < ('storage', 256, 0, 5):
        mem[0] = ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5)))
        mem[32] = 6
        mem[224] = 0xb42652e900000000000000000000000000000000000000000000000000000000
        mem[228] = msg.sender
        require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))))
        call ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))).exit(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    uint8(stor[3].field_168) = 0
}

function sub_14852d8f(?) {
    require calldata.size - 4 >= 96
    if msg.sender == ('storage', 160, 0, 3):
        if ('storage', 256, 0, ('add', ('mask_shl', 256, -224, -224, ('cd', 0)), ('sha3', "'org.defrost.Once.storage'"))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x7370726f78794f776e6572203a20546869732066756e6374696f6e206d75737420626520696e766f6b6564206f6e6c79206f6e6365,
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
        require ext_code.size(('storage', 160, 0, ('sha3', 991116237751499768183652006675822047353863918211386268631731825209579758547001703)))
        staticcall ('storage', 160, 0, ('sha3', 991116237751499768183652006675822047353863918211386268631731825209579758547001703)).0x1ebaa166 with:
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
    require arg1 < ('storage', 256, 0, 4)
    require arg3 > 0
    require arg1 < ('storage', 256, 0, 5)
    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('param', 'arg1'), ('sha3', 5))), 6))))
    call ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('param', 'arg1'), ('sha3', 5))), 6))).setMineRate(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0e777c1a(?) {
    require calldata.size - 4 >= 96
    if msg.sender == ('storage', 160, 0, 3):
        if ('storage', 256, 0, ('add', ('mask_shl', 256, -224, -224, ('cd', 0)), ('sha3', "'org.defrost.Once.storage'"))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x7370726f78794f776e6572203a20546869732066756e6374696f6e206d75737420626520696e766f6b6564206f6e6c79206f6e6365,
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
        require ext_code.size(('storage', 160, 0, ('sha3', 991116237751499768183652006675822047353863918211386268631731825209579758547001703)))
        staticcall ('storage', 160, 0, ('sha3', 991116237751499768183652006675822047353863918211386268631731825209579758547001703)).0x1ebaa166 with:
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
    require arg1 < ('storage', 256, 0, 4)
    require arg2 > block.timestamp
    require arg3 > arg2
    require arg1 < ('storage', 256, 0, 5)
    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('param', 'arg1'), ('sha3', 5))), 6))))
    call ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('param', 'arg1'), ('sha3', 5))), 6))).setPeriodFinish(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        if ('storage', 8, 160, 3):
            revert with 0, 'This contract is halted'
        require not ('storage', 8, 168, 3)
        uint8(stor[3].field_168) = 1
        idx = 0
        while idx < ('storage', 256, 0, 5):
            mem[0] = ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5)))
            mem[32] = 6
            mem[96] = 0xc00007b000000000000000000000000000000000000000000000000000000000
            mem[100] = msg.sender
            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))))
            call ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))).getReward(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        uint8(stor[3].field_168) = 0
    else:
        if arg1 > ('storage', 256, 0, 0):
            revert with 0, 'SafeMath: subtraction overflow'
        uint256(stor[0].field_0) = ('storage', 256, 0, 0) - arg1
        if arg1 > ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 1))):
            revert with 0, 'SafeMath: subtraction overflow'
        uint256(stor[sha3(msg.sender, 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 1))) - arg1
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
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(('storage', 160, 0, 2))
        staticcall ('storage', 160, 0, 2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1:
            revert with 0, 'token unstake transfer error!'
        idx = 0
        while idx < ('storage', 256, 0, 5):
            mem[0] = ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5)))
            mem[32] = 6
            mem[224] = 0xf2888dbb00000000000000000000000000000000000000000000000000000000
            mem[228] = msg.sender
            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))))
            call ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))).unstake(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        emit Withdrawn(arg1, msg.sender);
}

function sub_a031df31(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if msg.sender == ('storage', 160, 0, 3):
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 'org.defrost.Once.storage' << 64
        if ('storage', 256, 0, ('add', ('mask_shl', 256, -224, -224, ('cd', 0)), ('sha3', "'org.defrost.Once.storage'"))):
            revert with 0, 
                        32,
                        53,
                        0x7370726f78794f776e6572203a20546869732066756e6374696f6e206d75737420626520696e766f6b6564206f6e6c79206f6e6365,
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 345 len 11]
        uint256(stor[(uint32(call.func_hash) >> 224) + sha3('org.defrost.Once.storage')].field_0) = 1
        if arg1.length != ('storage', 256, 0, 4):
            revert with 0, 
                        32,
                        47,
                        0xfe72657761726473206c656e677468206973206e6f7420657175616c2072657761726420746f6b656e206e756d6265,
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 339 len 17]
        if arg1.length != arg2.length:
            revert with 0, 'reward array length is not equal'
        if arg3.length != ('storage', 256, 0, 4):
            revert with 0, 
                        32,
                        36,
                        0x6e73746172742074696d65206172726179206c656e677468206973206e6f742065717561,
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 328 len 28]
        if arg3.length != arg4.length:
            revert with 0, 
                        32,
                        34,
                        0x6c656e642074696d65206172726179206c656e677468206973206e6f742065717561,
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 326 len 30]
        idx = 0
        while idx < ('storage', 256, 0, 4):
            require idx < arg1.length
            require mem[(32 * idx) + 128] > 0
            require idx < arg2.length
            require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
            require idx < ('storage', 256, 0, 5)
            require idx < arg1.length
            _182 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _190 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0xd9df89e700000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 228] = _182
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 260] = _190
            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))))
            call ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))).setMineRate(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args _182, _190
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg3.length
            require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] > 0
            require idx < arg4.length
            require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] > 0
            require idx < ('storage', 256, 0, 5)
            mem[0] = ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5)))
            mem[32] = 6
            require idx < arg3.length
            _218 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require idx < arg4.length
            _226 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0x51d32e8100000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 228] = _218
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 260] = _226
            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))))
            call ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))).setPeriodFinish(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args _218, _226
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) == msg.sender:
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = address(msg.sender)
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 276] = address(this.address)
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 296] = msg.value
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 328 len calldata.size] = call.data[0 len calldata.size]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = calldata.size + 72
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 332] = sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 364] = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
            require ext_code.size(('storage', 160, 0, ('sha3', 991116237751499768183652006675822047353863918211386268631731825209579758547001703)))
            staticcall ('storage', 160, 0, ('sha3', 991116237751499768183652006675822047353863918211386268631731825209579758547001703)).0x1ebaa166 with:
                    gas gas_remaining wei
                   args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 328] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            46,
                            0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 442 len 18]
            uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
            if arg1.length != ('storage', 256, 0, 4):
                revert with 0, 
                            32,
                            47,
                            0xfe72657761726473206c656e677468206973206e6f7420657175616c2072657761726420746f6b656e206e756d6265,
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 443 len 17]
            if arg1.length != arg2.length:
                revert with 0, 'reward array length is not equal'
            if arg3.length != ('storage', 256, 0, 4):
                revert with 0, 
                            32,
                            36,
                            0x6e73746172742074696d65206172726179206c656e677468206973206e6f742065717561,
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 432 len 28]
            if arg3.length != arg4.length:
                revert with 0, 
                            32,
                            34,
                            0x6c656e642074696d65206172726179206c656e677468206973206e6f742065717561,
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 430 len 30]
            idx = 0
            while idx < ('storage', 256, 0, 4):
                require idx < arg1.length
                require mem[(32 * idx) + 128] > 0
                require idx < arg2.length
                require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
                require idx < ('storage', 256, 0, 5)
                require idx < arg1.length
                _178 = mem[(32 * idx) + 128]
                require idx < arg2.length
                _184 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 328] = 0xd9df89e700000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 332] = _178
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 364] = _184
                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))))
                call ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))).setMineRate(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args _178, _184
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < arg3.length
                require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] > 0
                require idx < arg4.length
                require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] > 0
                require idx < ('storage', 256, 0, 5)
                mem[0] = ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5)))
                mem[32] = 6
                require idx < arg3.length
                _214 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                require idx < arg4.length
                _220 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 328] = 0x51d32e8100000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 332] = _214
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 364] = _220
                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))))
                call ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))).setPeriodFinish(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args _214, _220
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
                revert with 0, 
                            32,
                            41,
                            0x6470726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f72696769,
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 333 len 23]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = address(msg.sender)
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 276] = address(this.address)
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 296] = msg.value
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 328 len calldata.size] = call.data[0 len calldata.size]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = calldata.size + 72
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 332] = sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 364] = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
            require ext_code.size(('storage', 160, 0, ('sha3', 991116237751499768183652006675822047353863918211386268631731825209579758547001703)))
            staticcall ('storage', 160, 0, ('sha3', 991116237751499768183652006675822047353863918211386268631731825209579758547001703)).0x1ebaa166 with:
                    gas gas_remaining wei
                   args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 328] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            46,
                            0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 442 len 18]
            uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
            if arg1.length != ('storage', 256, 0, 4):
                revert with 0, 
                            32,
                            47,
                            0xfe72657761726473206c656e677468206973206e6f7420657175616c2072657761726420746f6b656e206e756d6265,
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 443 len 17]
            if arg1.length != arg2.length:
                revert with 0, 'reward array length is not equal'
            if arg3.length != ('storage', 256, 0, 4):
                revert with 0, 
                            32,
                            36,
                            0x6e73746172742074696d65206172726179206c656e677468206973206e6f742065717561,
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 432 len 28]
            if arg3.length != arg4.length:
                revert with 0, 
                            32,
                            34,
                            0x6c656e642074696d65206172726179206c656e677468206973206e6f742065717561,
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 430 len 30]
            idx = 0
            while idx < ('storage', 256, 0, 4):
                require idx < arg1.length
                require mem[(32 * idx) + 128] > 0
                require idx < arg2.length
                require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
                require idx < ('storage', 256, 0, 5)
                require idx < arg1.length
                _180 = mem[(32 * idx) + 128]
                require idx < arg2.length
                _187 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 328] = 0xd9df89e700000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 332] = _180
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 364] = _187
                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))))
                call ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))).setMineRate(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args _180, _187
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < arg3.length
                require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] > 0
                require idx < arg4.length
                require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] > 0
                require idx < ('storage', 256, 0, 5)
                mem[0] = ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5)))
                mem[32] = 6
                require idx < arg3.length
                _216 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                require idx < arg4.length
                _223 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 328] = 0x51d32e8100000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 332] = _216
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + calldata.size + 364] = _223
                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))))
                call ('storage', 160, 0, ('sha3', ('data', ('storage', 160, 0, ('add', ('var', 0), ('sha3', 5))), 6))).setPeriodFinish(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args _216, _223
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
}



}
