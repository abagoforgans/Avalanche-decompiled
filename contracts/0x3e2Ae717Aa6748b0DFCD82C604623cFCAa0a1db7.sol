contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address sub_3123f8c1Address;
address sub_82d90f68Address;
address routerAddr;
address routerAddress;
array of struct sub_319edda7;
uint8 stor7;
address treasuryAddress; offset 8
address sub_40b2f5b5Address;
address stableCoinAddress;
uint256 treasuryFee;
uint256 utilityFee;
uint256 liquidityFee;
uint256 burnFee;
uint8 stor14;
uint8 stor14; offset 8
uint256 stor14; offset 8
uint256 swapThreshold;
uint8 sub_8a9b9d1c;
uint8 sub_e70e298e; offset 8
uint256 stor16; offset 8

function swapThreshold() {
    return swapThreshold
}

function sub_3123f8c1(?) {
    return sub_3123f8c1Address
}

function sub_319edda7(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_319edda7.length
    return sub_319edda7[arg1].field_0
}

function sub_40b2f5b5(?) {
    return sub_40b2f5b5Address
}

function treasury() {
    return treasuryAddress
}

function routerAddr() {
    return routerAddr
}

function swapEnabled() {
    return bool(uint8(stor14.field_8))
}

function sub_82d90f68(?) {
    return sub_82d90f68Address
}

function sub_8a9b9d1c(?) {
    return bool(sub_8a9b9d1c)
}

function owner() {
    return owner
}

function liquidityFee() {
    return liquidityFee
}

function stableCoin() {
    return stableCoinAddress
}

function isSwapper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor1[address(arg1)])
}

function sub_c16e459d(?) {
    return bool(stor7)
}

function treasuryFee() {
    return treasuryFee
}

function inSwap() {
    return bool(uint8(stor14.field_0))
}

function utilityFee() {
    return utilityFee
}

function sub_e70e298e(?) {
    return bool(sub_e70e298e)
}

function router() {
    return routerAddress
}

function burnFee() {
    return burnFee
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_25c373d1(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == owner
    if uint8(stor14.field_0):
        revert with 0, 'Can't run while inSwap'
    sub_8a9b9d1c = uint8(bool(arg1))
}

function sub_72538c3a(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == owner
    if uint8(stor14.field_0):
        revert with 0, 'Can't run while inSwap'
    stor16 = Mask(248, 0, bool(arg1))
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == owner
    if uint8(stor14.field_0):
        revert with 0, 'Can't run while inSwap'
    Mask(248, 0, stor14.field_8) = Mask(248, 0, arg1)
    swapThreshold = arg2
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require msg.sender == owner
    if uint8(stor14.field_0):
        revert with 0, 'Can't run while inSwap'
    treasuryAddress = arg1
    sub_40b2f5b5Address = arg2
    stableCoinAddress = arg3
}

function sub_ceedcda9(?) {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor1[address(msg.sender)] = 0
    emit 0x1bdacea4: msg.sender
}

function addSwapper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit 0x459edbd4: arg1
}

function sub_72622a61(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require msg.sender == owner
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount larger than what's in the contract'
    call address(arg2) with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: AVAX_TRANSFER_FAILED'
}

function removeSwapper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor1[address(arg1)] = 0
    emit 0x1bdacea4: arg1
}

function sub_e4da7feb(?) {
    if uint8(stor14.field_0):
        return not bool(uint8(stor14.field_0)), 64, 4, 0, 0
    if not uint8(stor14.field_8):
        return bool(uint8(stor14.field_8)), 64, 4, 0, 0
    staticcall sub_82d90f68Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= swapThreshold, 64, 4, 0, 0
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    if uint8(stor14.field_0):
        revert with 0, 'Can't run while inSwap'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg1 + arg2 + arg3 + arg4 != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sum of percentages doesn't add to 100'
    treasuryFee = arg1
    utilityFee = arg2
    liquidityFee = arg3
    burnFee = arg4
}

function sub_de05e712(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require msg.sender == owner
    mem[100] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Amount larger than what's in the contract'
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, mem[ceil32(return_data.size) + 196 len 28]
    call address(arg1).mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function sub_0161a290(?) {
    if sub_3123f8c1Address != msg.sender:
        revert with 0, 'Can only be called by Omniverse'
    emit 0xfe651ed3: 'Entered createPairs'
    if uint8(stor14.field_0):
        revert with 0, 'Can't run while inSwap'
    emit 0xfe651ed3: Array(len=29, data='Cool, not in swap as expected')
    if stor7:
        revert with 0, 'Pairs already created'
    mem[128] = 39
    mem[160] = 'Cool, pairs not created yet as e'
    mem[192] = 0x7870656374656400000000000000000000000000000000000000000000000000
    emit 0xfe651ed3: 'Cool, pairs not created yet as expected'
    routerAddress = routerAddr
    staticcall routerAddr.factory() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall routerAddress.WAVAX() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = sub_3123f8c1Address
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), sub_3123f8c1Address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 100] = routerAddr
    mem[(4 * ceil32(return_data.size)) + 132] = -1
    call sub_82d90f68Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddr, -1
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xfe651ed3: Array(len=27, data='Cool, successfully approved')
    sub_319edda7.length++
    sub_319edda7[sub_319edda7.length].field_0 = address(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 192] = 0x7273000000000000000000000000000000000000000000000000000000000000
    emit 0xfe651ed3: 'Cool, added pair to omniversePairs'
    stor7 = 1
    mem[(6 * ceil32(return_data.size)) + 128] = 30
    mem[(6 * ceil32(return_data.size)) + 160] = 'Cool, pairsCreated set to true'
    emit 0xfe651ed3: Array(len=30, data='Cool, pairsCreated set to true')
    mem[64] = (6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 128
    mem[(6 * ceil32(return_data.size)) + 96] = sub_319edda7.length
    if not sub_319edda7.length:
        mem[(6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 128] = 32
        mem[(6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 160] = sub_319edda7.length
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = (6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 192
        while idx < sub_319edda7.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 128
           len (96 * sub_319edda7.length) + 64
    mem[(6 * ceil32(return_data.size)) + 128] = address(sub_319edda7.field_0)
    idx = (6 * ceil32(return_data.size)) + 128
    s = 0
    while (6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 96 > idx:
        mem[idx + 32] = sub_319edda7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 128] = 32
    mem[(6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 160] = sub_319edda7.length
    idx = 0
    s = (6 * ceil32(return_data.size)) + 128
    t = mem[64] + 64
    while idx < sub_319edda7.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (6 * ceil32(return_data.size)) + (64 * sub_319edda7.length) + -mem[64] + 192
}

function swapBack() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SwapperRole: caller does not have the Swapper role'
    if uint8(stor14.field_0):
        revert with 0, 'Already inSwap'
    if not uint8(stor14.field_8):
        revert with 0, 'swapBack is disabled'
    mem[100] = this.address
    staticcall sub_82d90f68Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < swapThreshold:
        revert with 0, 'Below swapBack threshold'
    uint8(stor14.field_0) = 1
    if ext_call.return_data[0] and liquidityFee > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] and treasuryFee > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] and utilityFee > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0] * liquidityFee / 100:
        revert with 0, 17
    if ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) < ext_call.return_data[0] * treasuryFee / 100:
        revert with 0, 17
    if ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * treasuryFee / 100) < ext_call.return_data[0] * utilityFee / 100:
        revert with 0, 17
    if ext_call.return_data[0] * liquidityFee / 100 / 2 > !(ext_call.return_data[0] * treasuryFee / 100):
        revert with 0, 17
    if (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) > !(ext_call.return_data[0] * utilityFee / 100):
        revert with 0, 17
    if not (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) + (ext_call.return_data[0] * utilityFee / 100):
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 17
        emit 0xf63259f0: (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) + (ext_call.return_data[0] * utilityFee / 100), 0
        if utilityFee > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
            revert with 0, 17
        if treasuryFee > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
            revert with 0, 17
        if liquidityFee > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
            revert with 0, 17
        if 100000 * liquidityFee / 2 > !(100000 * treasuryFee):
            revert with 0, 17
        if (100000 * liquidityFee / 2) + (100000 * treasuryFee) > !(100000 * utilityFee):
            revert with 0, 17
        if liquidityFee > 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310:
            revert with 0, 17
        if not (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee):
            revert with 0, 18
        if treasuryFee > 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310:
            revert with 0, 17
        if not (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee):
            revert with 0, 18
        if False and 10 * 10^6 * liquidityFee / 2 / (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee) > 0:
            revert with 0, 17
        if False and 10 * 10^6 * treasuryFee / (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee) > 0:
            revert with 0, 17
        if ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * treasuryFee / 100) - (ext_call.return_data[0] * utilityFee / 100):
            call sub_82d90f68Address.0xa9059cbb with:
                 gas gas_remaining wei
                args 57005, ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * treasuryFee / 100) - (ext_call.return_data[0] * utilityFee / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = sub_3123f8c1Address
        staticcall routerAddress.WAVAX() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) + (ext_call.return_data[0] * utilityFee / 100)
        mem[(2 * ceil32(return_data.size)) + 228] = 0
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < mem[ceil32(return_data.size) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = this.address
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 17
        emit 0xf63259f0: (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) + (ext_call.return_data[0] * utilityFee / 100), 0
        if utilityFee > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
            revert with 0, 17
        if treasuryFee > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
            revert with 0, 17
        if liquidityFee > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
            revert with 0, 17
        if 100000 * liquidityFee / 2 > !(100000 * treasuryFee):
            revert with 0, 17
        if (100000 * liquidityFee / 2) + (100000 * treasuryFee) > !(100000 * utilityFee):
            revert with 0, 17
        if liquidityFee > 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310:
            revert with 0, 17
        if not (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee):
            revert with 0, 18
        if treasuryFee > 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310:
            revert with 0, 17
        if not (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee):
            revert with 0, 18
        if False and 10 * 10^6 * liquidityFee / 2 / (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee) > 0:
            revert with 0, 17
        if False and 10 * 10^6 * treasuryFee / (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee) > 0:
            revert with 0, 17
        if ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * treasuryFee / 100) - (ext_call.return_data[0] * utilityFee / 100):
            mem[mem[64] + 4] = 57005
            mem[mem[64] + 36] = ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * treasuryFee / 100) - (ext_call.return_data[0] * utilityFee / 100)
            call sub_82d90f68Address.0xa9059cbb with:
                 gas gas_remaining wei
                args 57005, ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * treasuryFee / 100) - (ext_call.return_data[0] * utilityFee / 100)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _55 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_55] == bool(mem[_55])
    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * treasuryFee / 100) - (ext_call.return_data[0] * utilityFee / 100)
    uint8(stor14.field_0) = 0
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8f32d59b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd8306786(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xb64230ba(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x8f32d59b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return (msg.sender == owner)
                    if unknown_0x98118cb4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return liquidityFee
                    if unknown_0x992642e5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return stableCoinAddress
                    require unknown_0x99385006(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require msg.sender == owner
                    if not address(arg1):
                        revert with 0, 'Roles: account is the zero address'
                    if stor1[address(arg1)]:
                        revert with 0, 'Roles: account already has role'
                    stor1[address(arg1)] = 1
                    emit 0x459edbd4: address(arg1)
                else:
                    if unknown_0xb64230ba(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if not address(arg1):
                            revert with 0, 'Roles: account is the zero address'
                        return bool(stor1[address(arg1)])
                    if unknown_0xc16e459d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(stor7)
                    if unknown_0xcc32d176(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return treasuryFee
                    if unknown_0xceedcda9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if not msg.sender:
                            revert with 0, 'Roles: account is the zero address'
                        if not stor1[address(msg.sender)]:
                            revert with 0, 'Roles: account does not have role'
                        stor1[address(msg.sender)] = 0
                        emit 0x1bdacea4: msg.sender
                    else:
                        require unknown_0xd7c01032(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        require arg3 == address(arg3)
                        require msg.sender == owner
                        if uint8(stor14.field_0):
                            revert with 0, 'Can't run while inSwap'
                        treasuryAddress = address(arg1)
                        sub_40b2f5b5Address = address(arg2)
                        stableCoinAddress = address(arg3)
            else:
                if unknown_0xe4da7feb(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xe4da7feb(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if uint8(stor14.field_0):
                            return not bool(uint8(stor14.field_0)), 64, 4, 0, 0
                        if not uint8(stor14.field_8):
                            return bool(uint8(stor14.field_8)), 64, 4, 0, 0
                        staticcall sub_82d90f68Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0] >= swapThreshold, 64, 4, 0, 0
                    if unknown_0xe70e298e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(sub_e70e298e)
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        if unknown_0xf887ea40(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return routerAddress
                        require unknown_0xfce589d8(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return burnFee
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require msg.sender == owner
                    require address(arg1)
                    emit OwnershipTransferred(owner, address(arg1));
                    owner = address(arg1)
                else:
                    if unknown_0xd8306786(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(uint8(stor14.field_0))
                    if unknown_0xdccd8bd2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return utilityFee
                    if uint32(call.func_hash) >> 224 != unknown_0xde05e712(?????):
                        require unknown_0xdf20fd49(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == bool(arg1)
                        require msg.sender == owner
                        if uint8(stor14.field_0):
                            revert with 0, 'Can't run while inSwap'
                        Mask(248, 0, stor14.field_8) = Mask(248, 0, bool(arg1))
                        swapThreshold = arg2
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg1 == address(arg1)
                        require arg3 == address(arg3)
                        require msg.sender == owner
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 > ext_call.return_data[0]:
                            revert with 0, 'Amount larger than what's in the contract'
                        mem[ceil32(return_data.size) + 228 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, mem[ceil32(return_data.size) + 228 len 28]
                        call address(arg1).mem[ceil32(return_data.size) + 228 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + 232 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                                if not mem[ceil32(return_data.size) + 260]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            if unknown_0x6b90694c(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x72538c3a(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x72538c3a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == bool(arg1)
                        require msg.sender == owner
                        if uint8(stor14.field_0):
                            revert with 0, 'Can't run while inSwap'
                        stor16 = Mask(248, 0, bool(arg1))
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x72622a61(?????):
                            if unknown_0x82d90f68(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return sub_82d90f68Address
                            if unknown_0x8a9b9d1c(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return bool(sub_8a9b9d1c)
                            require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return owner
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg2 == address(arg2)
                        require msg.sender == owner
                        if arg1 > eth.balance(this.address):
                            revert with 0, 'Amount larger than what's in the contract'
                        call address(arg2) with:
                           value arg1 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: AVAX_TRANSFER_FAILED'
                else:
                    if unknown_0x6b90694c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return routerAddr
                    if unknown_0x6ddd1713(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(uint8(stor14.field_8))
                    if uint32(call.func_hash) >> 224 != unknown_0x6fcba377(?????):
                        require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require msg.sender == owner
                        emit OwnershipRenounced(owner);
                        owner = 0
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require msg.sender == owner
                        if uint8(stor14.field_0):
                            revert with 0, 'Can't run while inSwap'
                        if arg1 > !arg2:
                            revert with 0, 17
                        if arg1 + arg2 > !arg3:
                            revert with 0, 17
                        if arg1 + arg2 + arg3 > !arg4:
                            revert with 0, 17
                        if arg1 + arg2 + arg3 + arg4 != 100:
                            revert with 0, 'Sum of percentages doesn't add to 100'
                        treasuryFee = arg1
                        utilityFee = arg2
                        liquidityFee = arg3
                        burnFee = arg4
            else:
                if unknown_0x319edda7(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0x0161a290(?????):
                        if swapThreshold() == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return swapThreshold
                        if uint32(call.func_hash) >> 224 != unknown_0x25c373d1(?????):
                            require unknown_0x3123f8c1(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return sub_3123f8c1Address
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == bool(arg1)
                        require msg.sender == owner
                        if uint8(stor14.field_0):
                            revert with 0, 'Can't run while inSwap'
                        sub_8a9b9d1c = uint8(bool(arg1))
                    require not msg.value
                    if sub_3123f8c1Address != msg.sender:
                        revert with 0, 'Can only be called by Omniverse'
                    emit 0xfe651ed3: 'Entered createPairs'
                    if uint8(stor14.field_0):
                        revert with 0, 'Can't run while inSwap'
                    emit 0xfe651ed3: Array(len=29, data='Cool, not in swap as expected')
                    if stor7:
                        revert with 0, 'Pairs already created'
                    mem[160] = 39
                    mem[192] = 'Cool, pairs not created yet as e'
                    mem[224] = 0x7870656374656400000000000000000000000000000000000000000000000000
                    emit 0xfe651ed3: 'Cool, pairs not created yet as expected'
                    routerAddress = routerAddr
                    staticcall routerAddr.factory() with:
                            gas gas_remaining wei
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall routerAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 164] = sub_3123f8c1Address
                    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), sub_3123f8c1Address
                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 132] = routerAddr
                    mem[(4 * ceil32(return_data.size)) + 164] = -1
                    call sub_82d90f68Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddr, -1
                    mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit 0xfe651ed3: Array(len=27, data='Cool, successfully approved')
                    sub_319edda7.length++
                    sub_319edda7[sub_319edda7.length].field_0 = address(ext_call.return_data[0])
                    mem[(6 * ceil32(return_data.size)) + 224] = 0x7273000000000000000000000000000000000000000000000000000000000000
                    emit 0xfe651ed3: 'Cool, added pair to omniversePairs'
                    stor7 = 1
                    mem[(6 * ceil32(return_data.size)) + 160] = 30
                    mem[(6 * ceil32(return_data.size)) + 192] = 'Cool, pairsCreated set to true'
                    emit 0xfe651ed3: Array(len=30, data='Cool, pairsCreated set to true')
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 160
                    mem[(6 * ceil32(return_data.size)) + 128] = sub_319edda7.length
                    if not sub_319edda7.length:
                        mem[(6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 160] = 32
                        mem[(6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 192] = sub_319edda7.length
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 160
                        t = (6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 224
                        while idx < sub_319edda7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from (6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 160
                           len (96 * sub_319edda7.length) + 64
                    mem[(6 * ceil32(return_data.size)) + 160] = address(sub_319edda7.field_0)
                    idx = (6 * ceil32(return_data.size)) + 160
                    s = 0
                    while (6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 128 > idx:
                        mem[idx + 32] = sub_319edda7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 160] = 32
                    mem[(6 * ceil32(return_data.size)) + (32 * sub_319edda7.length) + 192] = sub_319edda7.length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 160
                    t = mem[64] + 64
                    while idx < sub_319edda7.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (6 * ceil32(return_data.size)) + (64 * sub_319edda7.length) + -mem[64] + 224
                if unknown_0x319edda7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 < sub_319edda7.length
                    return sub_319edda7[arg1].field_0
                if unknown_0x3f2d4131(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require msg.sender == owner
                    if not address(arg1):
                        revert with 0, 'Roles: account is the zero address'
                    if not stor1[address(arg1)]:
                        revert with 0, 'Roles: account does not have role'
                    stor1[address(arg1)] = 0
                    emit 0x1bdacea4: address(arg1)
                else:
                    if unknown_0x40b2f5b5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_40b2f5b5Address
                    if unknown_0x61d027b3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return treasuryAddress
                    require unknown_0x6ac5eeee(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if not msg.sender:
                        revert with 0, 'Roles: account is the zero address'
                    mem[0] = msg.sender
                    mem[32] = 1
                    if not stor1[address(msg.sender)]:
                        revert with 0, 'SwapperRole: caller does not have the Swapper role'
                    if uint8(stor14.field_0):
                        revert with 0, 'Already inSwap'
                    if not uint8(stor14.field_8):
                        revert with 0, 'swapBack is disabled'
                    mem[132] = this.address
                    staticcall sub_82d90f68Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < swapThreshold:
                        revert with 0, 'Below swapBack threshold'
                    uint8(stor14.field_0) = 1
                    if ext_call.return_data[0] and liquidityFee > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] and treasuryFee > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] and utilityFee > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] < ext_call.return_data[0] * liquidityFee / 100:
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) < ext_call.return_data[0] * treasuryFee / 100:
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * treasuryFee / 100) < ext_call.return_data[0] * utilityFee / 100:
                        revert with 0, 17
                    if ext_call.return_data[0] * liquidityFee / 100 / 2 > !(ext_call.return_data[0] * treasuryFee / 100):
                        revert with 0, 17
                    if (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) > !(ext_call.return_data[0] * utilityFee / 100):
                        revert with 0, 17
                    if not (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) + (ext_call.return_data[0] * utilityFee / 100):
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        emit 0xf63259f0: (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) + (ext_call.return_data[0] * utilityFee / 100), 0
                        if utilityFee > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                            revert with 0, 17
                        if treasuryFee > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                            revert with 0, 17
                        if liquidityFee > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                            revert with 0, 17
                        if 100000 * liquidityFee / 2 > !(100000 * treasuryFee):
                            revert with 0, 17
                        if (100000 * liquidityFee / 2) + (100000 * treasuryFee) > !(100000 * utilityFee):
                            revert with 0, 17
                        if liquidityFee > 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310:
                            revert with 0, 17
                        if not (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee):
                            revert with 0, 18
                        if treasuryFee > 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310:
                            revert with 0, 17
                        if not (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee):
                            revert with 0, 18
                        if False and 10 * 10^6 * liquidityFee / 2 / (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee) > 0:
                            revert with 0, 17
                        if False and 10 * 10^6 * treasuryFee / (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee) > 0:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * treasuryFee / 100) - (ext_call.return_data[0] * utilityFee / 100):
                            call sub_82d90f68Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 57005, ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * treasuryFee / 100) - (ext_call.return_data[0] * utilityFee / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[ceil32(return_data.size) + 128] = 2
                        mem[ceil32(return_data.size) + 160] = sub_3123f8c1Address
                        staticcall routerAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) + (ext_call.return_data[0] * utilityFee / 100)
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292] = 160
                        mem[(2 * ceil32(return_data.size)) + 388] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 160
                        t = (2 * ceil32(return_data.size)) + 420
                        while idx < mem[ceil32(return_data.size) + 128]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 480]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        emit 0xf63259f0: (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) + (ext_call.return_data[0] * utilityFee / 100), 0
                        if utilityFee > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                            revert with 0, 17
                        if treasuryFee > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                            revert with 0, 17
                        if liquidityFee > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                            revert with 0, 17
                        if 100000 * liquidityFee / 2 > !(100000 * treasuryFee):
                            revert with 0, 17
                        if (100000 * liquidityFee / 2) + (100000 * treasuryFee) > !(100000 * utilityFee):
                            revert with 0, 17
                        if liquidityFee > 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310:
                            revert with 0, 17
                        if not (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee):
                            revert with 0, 18
                        if treasuryFee > 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310:
                            revert with 0, 17
                        if not (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee):
                            revert with 0, 18
                        if False and 10 * 10^6 * liquidityFee / 2 / (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee) > 0:
                            revert with 0, 17
                        if False and 10 * 10^6 * treasuryFee / (100000 * liquidityFee / 2) + (100000 * treasuryFee) + (100000 * utilityFee) > 0:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * treasuryFee / 100) - (ext_call.return_data[0] * utilityFee / 100):
                            mem[mem[64] + 4] = 57005
                            mem[mem[64] + 36] = ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * treasuryFee / 100) - (ext_call.return_data[0] * utilityFee / 100)
                            call sub_82d90f68Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 57005, ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * treasuryFee / 100) - (ext_call.return_data[0] * utilityFee / 100)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _332 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_332] == bool(mem[_332])
                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0] - (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * treasuryFee / 100) - (ext_call.return_data[0] * utilityFee / 100)
                    uint8(stor14.field_0) = 0
}



}
