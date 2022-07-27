contract main {




// =====================  Runtime code  =====================


#
#  - swapBack()
#
address owner;
address sub_3123f8c1Address;
address sub_82d90f68Address;
address routerAddr;
address routerAddress;
address sub_bf8705beAddress;
uint8 sub_c16e459d; offset 160
address sub_60071676Address;
uint32 stor7;
address treasuryAddress;
uint256 stor7;
big512 stor7;
uint32 stor8;
address sub_40b2f5b5Address;
uint256 stor8;
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
array of struct stor17;

function swapThreshold() {
    return swapThreshold
}

function sub_3123f8c1(?) {
    return sub_3123f8c1Address
}

function sub_40b2f5b5(?) {
    return address(sub_40b2f5b5Address)
}

function sub_60071676(?) {
    return sub_60071676Address
}

function treasury() {
    return address(treasuryAddress)
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

function sub_bf8705be(?) {
    return sub_bf8705beAddress
}

function sub_c16e459d(?) {
    return bool(sub_c16e459d)
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
    address(treasuryAddress) = arg1
    address(sub_40b2f5b5Address) = arg2
    stableCoinAddress = arg3
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
    if uint8(stor14.field_0):
        revert with 0, 'Can't run while inSwap'
    if sub_c16e459d:
        revert with 0, 'Pairs already created'
    routerAddress = routerAddr
    sub_bf8705beAddress = 0xab563deab77362a7f393bd2f0909c176ae7af67a
    sub_60071676Address = 0xb1532cb9fb365255ab76424037565a2f6b0cb9f8
    mem[100] = routerAddr
    mem[132] = -1
    call sub_82d90f68Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddr, -1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = routerAddr
    mem[ceil32(return_data.size) + 132] = -1
    call stableCoinAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddr, -1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor17.length++
    stor17[stor17.length].field_0 = sub_bf8705beAddress
    stor17.length++
    stor17[stor17.length].field_0 = sub_60071676Address
    sub_c16e459d = 1
    mem[64] = (2 * ceil32(return_data.size)) + (32 * stor17.length) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = stor17.length
    if not stor17.length:
        mem[(2 * ceil32(return_data.size)) + (32 * stor17.length) + 128] = 32
        mem[(2 * ceil32(return_data.size)) + (32 * stor17.length) + 160] = stor17.length
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + (32 * stor17.length) + 192
        while idx < stor17.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (2 * ceil32(return_data.size)) + (32 * stor17.length) + 128
           len (96 * stor17.length) + 64
    mem[(2 * ceil32(return_data.size)) + 128] = address(stor17.field_0)
    idx = (2 * ceil32(return_data.size)) + 128
    s = 0
    while (2 * ceil32(return_data.size)) + (32 * stor17.length) + 96 > idx:
        mem[idx + 32] = stor17[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(2 * ceil32(return_data.size)) + (32 * stor17.length) + 128] = 32
    mem[(2 * ceil32(return_data.size)) + (32 * stor17.length) + 160] = stor17.length
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + 64
    while idx < stor17.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (2 * ceil32(return_data.size)) + (64 * stor17.length) + -mem[64] + 192
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd8306786(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xbf8705be(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    if unknown_0x8f32d59b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return (msg.sender == owner)
                    if unknown_0x98118cb4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return liquidityFee
                    require unknown_0x992642e5(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return stableCoinAddress
                if unknown_0xbf8705be(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_bf8705beAddress
                if unknown_0xc16e459d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(sub_c16e459d)
                if unknown_0xcc32d176(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return treasuryFee
                require unknown_0xd7c01032(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 == address(arg3)
                require msg.sender == owner
                if uint8(stor14.field_0):
                    revert with 0, 'Can't run while inSwap'
                address(treasuryAddress) = address(arg1)
                address(sub_40b2f5b5Address) = address(arg2)
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
                            require unknown_0x8a9b9d1c(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return bool(sub_8a9b9d1c)
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
                if unknown_0x40b2f5b5(?????) > uint32(call.func_hash) >> 224:
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
                    if uint8(stor14.field_0):
                        revert with 0, 'Can't run while inSwap'
                    if sub_c16e459d:
                        revert with 0, 'Pairs already created'
                    routerAddress = routerAddr
                    sub_bf8705beAddress = 0xab563deab77362a7f393bd2f0909c176ae7af67a
                    sub_60071676Address = 0xb1532cb9fb365255ab76424037565a2f6b0cb9f8
                    mem[132] = routerAddr
                    mem[164] = -1
                    call sub_82d90f68Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddr, -1
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 132] = routerAddr
                    mem[ceil32(return_data.size) + 164] = -1
                    call stableCoinAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddr, -1
                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    stor17.length++
                    stor17[stor17.length].field_0 = sub_bf8705beAddress
                    stor17.length++
                    stor17[stor17.length].field_0 = sub_60071676Address
                    sub_c16e459d = 1
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * stor17.length) + 160
                    mem[(2 * ceil32(return_data.size)) + 128] = stor17.length
                    if not stor17.length:
                        mem[(2 * ceil32(return_data.size)) + (32 * stor17.length) + 160] = 32
                        mem[(2 * ceil32(return_data.size)) + (32 * stor17.length) + 192] = stor17.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 160
                        t = (2 * ceil32(return_data.size)) + (32 * stor17.length) + 224
                        while idx < stor17.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from (2 * ceil32(return_data.size)) + (32 * stor17.length) + 160
                           len (96 * stor17.length) + 64
                    mem[(2 * ceil32(return_data.size)) + 160] = address(stor17.field_0)
                    idx = (2 * ceil32(return_data.size)) + 160
                    s = 0
                    while (2 * ceil32(return_data.size)) + (32 * stor17.length) + 128 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + (32 * stor17.length) + 160] = 32
                    mem[(2 * ceil32(return_data.size)) + (32 * stor17.length) + 192] = stor17.length
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 160
                    t = mem[64] + 64
                    while idx < stor17.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(return_data.size)) + (64 * stor17.length) + -mem[64] + 224
                if unknown_0x40b2f5b5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return address(sub_40b2f5b5Address)
                if unknown_0x60071676(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_60071676Address
                if unknown_0x61d027b3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return address(treasuryAddress)
                require unknown_0x6ac5eeee(?????) == uint32(call.func_hash) >> 224
                require not msg.value
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
                if ext_call.return_data[0] * liquidityFee / 100 / 2 > !(ext_call.return_data[0] * treasuryFee / 100):
                    revert with 0, 17
                if (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) > !(ext_call.return_data[0] * utilityFee / 100):
                    revert with 0, 17
                mem[ceil32(return_data.size) + 132] = this.address
                staticcall stableCoinAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) + (ext_call.return_data[0] * utilityFee / 100):
                    mem[(2 * ceil32(return_data.size)) + 132] = this.address
                    staticcall stableCoinAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    emit 0x6450fb88: (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) + (ext_call.return_data[0] * utilityFee / 100), 0, stableCoinAddress
                    if utilityFee > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if treasuryFee > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if liquidityFee > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if 10 * liquidityFee / 2 > !(10 * treasuryFee):
                        revert with 0, 17
                    if (10 * liquidityFee / 2) + (10 * treasuryFee) > !(10 * utilityFee):
                        revert with 0, 17
                    if liquidityFee > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                        revert with 0, 17
                    if not (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee):
                        revert with 0, 18
                    if treasuryFee > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                        revert with 0, 17
                    if not (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee):
                        revert with 0, 18
                    if 0 and 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee) > -1 / 0:
                        revert with 0, 17
                    if 0 and 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee) > -1 / 0:
                        revert with 0, 17
                    if 0 < (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18:
                        revert with 0, 17
                    if -(ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18 < (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18:
                        revert with 0, 17
                    if not (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18:
                        if not (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18:
                            if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                staticcall sub_82d90f68Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if sub_e70e298e:
                                    mem[(4 * ceil32(return_data.size)) + 228 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(4 * ceil32(return_data.size)) + 228 len 28]
                                    call stableCoinAddress.mem[(4 * ceil32(return_data.size)) + 228 len 4] with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 232 len 64]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(4 * ceil32(return_data.size)) + 260] == bool(mem[(4 * ceil32(return_data.size)) + 260])
                                            if not mem[(4 * ceil32(return_data.size)) + 260]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    staticcall sub_82d90f68Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 160] = stableCoinAddress
                                    staticcall routerAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                                    mem[(6 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 228] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 160
                                    t = (6 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    staticcall sub_82d90f68Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                call sub_82d90f68Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args 57005, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                        else:
                            if not sub_8a9b9d1c:
                                mem[(4 * ceil32(return_data.size)) + 160] = stableCoinAddress
                                staticcall routerAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                                mem[(6 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 228] = (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18
                                mem[(6 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 160
                                t = (6 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18, 0, 160, address(treasuryAddress), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                    staticcall sub_82d90f68Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        call sub_82d90f68Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                else:
                                    if sub_e70e298e:
                                        mem[(6 * ceil32(return_data.size)) + 324 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), Mask(224, 0, stor7)
                                        call stableCoinAddress with:
                                           funct uint32(0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18))
                                             gas gas_remaining wei
                                            args Mask(512, 0, stor7)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(6 * ceil32(return_data.size)) + 356] == bool(mem[(6 * ceil32(return_data.size)) + 356])
                                                if not mem[(6 * ceil32(return_data.size)) + 356]:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        staticcall sub_82d90f68Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            call sub_82d90f68Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args 57005, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 256] = stableCoinAddress
                                        staticcall routerAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[(6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                        mem[(7 * ceil32(return_data.size)) + 320] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(7 * ceil32(return_data.size)) + 324] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                        mem[(7 * ceil32(return_data.size)) + 388] = 160
                                        mem[(7 * ceil32(return_data.size)) + 484] = 2
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 256
                                        t = (7 * ceil32(return_data.size)) + 516
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(7 * ceil32(return_data.size)) + 420] = address(sub_40b2f5b5Address)
                                        mem[(7 * ceil32(return_data.size)) + 452] = block.timestamp
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 516 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        staticcall sub_82d90f68Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + 480 len 5 * ceil32(return_data.size)]
                                        else:
                                            call sub_82d90f68Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args 57005, ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + 388 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0], mem[(11 * ceil32(return_data.size)) + 480 len 9 * ceil32(return_data.size)]
                            else:
                                mem[(4 * ceil32(return_data.size)) + 228 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18, mem[(4 * ceil32(return_data.size)) + 228 len 28]
                                mem[(4 * ceil32(return_data.size)) + 296] = 0
                                call stableCoinAddress.mem[(4 * ceil32(return_data.size)) + 228 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 232 len 64]
                                if return_data.size:
                                    mem[(4 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(4 * ceil32(return_data.size)) + 260] == bool(mem[(4 * ceil32(return_data.size)) + 260])
                                        if not mem[(4 * ceil32(return_data.size)) + 260]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                        staticcall sub_82d90f68Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if sub_e70e298e:
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 28]
                                            call stableCoinAddress.mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 333 len 64]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            else:
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361])
                                                    if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361]:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = stableCoinAddress
                                            staticcall routerAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[12 len 20]
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        call sub_82d90f68Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                        staticcall sub_82d90f68Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            call sub_82d90f68Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args 57005, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                    else:
                                        if sub_e70e298e:
                                            mem[(4 * ceil32(return_data.size)) + 328 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(4 * ceil32(return_data.size)) + 328 len 28]
                                            call stableCoinAddress.mem[(4 * ceil32(return_data.size)) + 328 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + 332 len 64]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            else:
                                                mem[(4 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(4 * ceil32(return_data.size)) + 360] == bool(mem[(4 * ceil32(return_data.size)) + 360])
                                                    if not mem[(4 * ceil32(return_data.size)) + 360]:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                call sub_82d90f68Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args 57005, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                        else:
                                            mem[(4 * ceil32(return_data.size)) + 260] = stableCoinAddress
                                            staticcall routerAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[(4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[12 len 20]
                                            mem[(6 * ceil32(return_data.size)) + 324] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(6 * ceil32(return_data.size)) + 328] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                            mem[(6 * ceil32(return_data.size)) + 360] = 0
                                            mem[(6 * ceil32(return_data.size)) + 392] = 160
                                            mem[(6 * ceil32(return_data.size)) + 488] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 260
                                            t = (6 * ceil32(return_data.size)) + 520
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(6 * ceil32(return_data.size)) + 424] = address(sub_40b2f5b5Address)
                                            mem[(6 * ceil32(return_data.size)) + 456] = block.timestamp
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 520 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(6 * ceil32(return_data.size)) + 328] = this.address
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[(6 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                mem[(8 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                                                mem[(8 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] * treasuryFee / 100
                                                mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] * utilityFee / 100
                                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] * liquidityFee / 100
                                                mem[(8 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                                                emit 0xc20fef04: mem[(8 * ceil32(return_data.size)) + 324 len (13 * ceil32(return_data.size)) + 160]
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 328] = 57005
                                                mem[(8 * ceil32(return_data.size)) + 360] = ext_call.return_data[0]
                                                call sub_82d90f68Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args mem[(8 * ceil32(return_data.size)) + 328 len (13 * ceil32(return_data.size)) + 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                                                mem[(8 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] * treasuryFee / 100
                                                mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] * utilityFee / 100
                                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] * liquidityFee / 100
                                                mem[(8 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                                                emit 0xc20fef04: mem[(8 * ceil32(return_data.size)) + 324 len (15 * ceil32(return_data.size)) + 160]
                    else:
                        if ext_call.return_data[0] * liquidityFee / 100 < ext_call.return_data[0] * liquidityFee / 100 / 2:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 196] = (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2)
                        mem[(4 * ceil32(return_data.size)) + 228] = (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = address(treasuryAddress)
                        mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp
                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args sub_3123f8c1Address, stableCoinAddress, (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2), (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18, 0, 0, address(treasuryAddress), block.timestamp
                        mem[(4 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit 0x506b7ce7: (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2), (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18, stableCoinAddress
                        if not (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18:
                            if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                staticcall sub_82d90f68Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if sub_e70e298e:
                                    mem[(6 * ceil32(return_data.size)) + 228 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(6 * ceil32(return_data.size)) + 228 len 28]
                                    call stableCoinAddress.mem[(6 * ceil32(return_data.size)) + 228 len 4] with:
                                         gas gas_remaining wei
                                        args mem[(6 * ceil32(return_data.size)) + 232 len 64]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(6 * ceil32(return_data.size)) + 260] == bool(mem[(6 * ceil32(return_data.size)) + 260])
                                            if not mem[(6 * ceil32(return_data.size)) + 260]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    staticcall sub_82d90f68Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 160] = stableCoinAddress
                                    staticcall routerAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                                    mem[(7 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(7 * ceil32(return_data.size)) + 228] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 160
                                    t = (7 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    staticcall sub_82d90f68Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                call sub_82d90f68Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args 57005, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                        else:
                            if sub_8a9b9d1c:
                                mem[(6 * ceil32(return_data.size)) + 228 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18, mem[(6 * ceil32(return_data.size)) + 228 len 28]
                                mem[(6 * ceil32(return_data.size)) + 296] = 0
                                call stableCoinAddress.mem[(6 * ceil32(return_data.size)) + 228 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(6 * ceil32(return_data.size)) + 232 len 64]
                                if return_data.size:
                                    mem[(6 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not return_data.size:
                                        if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if sub_e70e298e:
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 28]
                                                call stableCoinAddress.mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 333 len 64]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if mem[96]:
                                                        require mem[96] >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                else:
                                                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361])
                                                        if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = stableCoinAddress
                                                staticcall routerAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[12 len 20]
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                                idx = 0
                                                s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            call sub_82d90f68Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args 57005, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                    else:
                                        require return_data.size >= 32
                                        require mem[(6 * ceil32(return_data.size)) + 260] == bool(mem[(6 * ceil32(return_data.size)) + 260])
                                        if not mem[(6 * ceil32(return_data.size)) + 260]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                call sub_82d90f68Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args 57005, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                        else:
                                            if sub_e70e298e:
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 28]
                                                call stableCoinAddress.mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 333 len 64]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if mem[96]:
                                                        require mem[96] >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                else:
                                                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361])
                                                        if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    call sub_82d90f68Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args 57005, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = stableCoinAddress
                                                staticcall routerAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[12 len 20]
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 160
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                                                idx = 0
                                                s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = address(sub_40b2f5b5Address)
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len 5 * ceil32(return_data.size)]
                                                else:
                                                    call sub_82d90f68Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args 57005, ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0], mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len 9 * ceil32(return_data.size)]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                        staticcall sub_82d90f68Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            call sub_82d90f68Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args 57005, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                    else:
                                        if sub_e70e298e:
                                            mem[(6 * ceil32(return_data.size)) + 328 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(6 * ceil32(return_data.size)) + 328 len 28]
                                            call stableCoinAddress.mem[(6 * ceil32(return_data.size)) + 328 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[(6 * ceil32(return_data.size)) + 332 len 64]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(6 * ceil32(return_data.size)) + 360] == bool(mem[(6 * ceil32(return_data.size)) + 360])
                                                    if not mem[(6 * ceil32(return_data.size)) + 360]:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                call sub_82d90f68Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args 57005, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 228] = 2
                                            mem[(6 * ceil32(return_data.size)) + 260] = stableCoinAddress
                                            staticcall routerAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[(6 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (7 * ceil32(return_data.size)) + 324
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[12 len 20]
                                            mem[(7 * ceil32(return_data.size)) + 324] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 328] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                            mem[(7 * ceil32(return_data.size)) + 360] = 0
                                            mem[(7 * ceil32(return_data.size)) + 392] = 160
                                            mem[(7 * ceil32(return_data.size)) + 488] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 260
                                            t = (7 * ceil32(return_data.size)) + 520
                                            while idx < mem[(6 * ceil32(return_data.size)) + 228]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(7 * ceil32(return_data.size)) + 424] = address(sub_40b2f5b5Address)
                                            mem[(7 * ceil32(return_data.size)) + 456] = block.timestamp
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, mem[(7 * ceil32(return_data.size)) + 488 len (32 * mem[(6 * ceil32(return_data.size)) + 228]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + 484 len 5 * ceil32(return_data.size)]
                                            else:
                                                call sub_82d90f68Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args 57005, ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + 392 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0], mem[(11 * ceil32(return_data.size)) + 484 len 9 * ceil32(return_data.size)]
                            else:
                                mem[(6 * ceil32(return_data.size)) + 160] = stableCoinAddress
                                staticcall routerAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                                mem[(7 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 228] = (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18
                                mem[(7 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 160
                                t = (7 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 324] = address(treasuryAddress)
                                mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18, 0, 160, address(treasuryAddress), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                    staticcall sub_82d90f68Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        call sub_82d90f68Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                else:
                                    if sub_e70e298e:
                                        mem[(7 * ceil32(return_data.size)) + 324 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), Mask(224, 0, stor7)
                                        call stableCoinAddress with:
                                           funct uint32(0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18))
                                             gas gas_remaining wei
                                            args Mask(512, 0, stor7)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        else:
                                            mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(7 * ceil32(return_data.size)) + 356] == bool(mem[(7 * ceil32(return_data.size)) + 356])
                                                if not mem[(7 * ceil32(return_data.size)) + 356]:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        staticcall sub_82d90f68Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            call sub_82d90f68Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args 57005, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                    else:
                                        mem[(7 * ceil32(return_data.size)) + 224] = 2
                                        mem[(7 * ceil32(return_data.size)) + 256] = stableCoinAddress
                                        staticcall routerAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[(7 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                        mem[(8 * ceil32(return_data.size)) + 320] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 324] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                        mem[(8 * ceil32(return_data.size)) + 356] = 0
                                        mem[(8 * ceil32(return_data.size)) + 388] = 160
                                        mem[(8 * ceil32(return_data.size)) + 484] = 2
                                        idx = 0
                                        s = (7 * ceil32(return_data.size)) + 256
                                        t = (8 * ceil32(return_data.size)) + 516
                                        while idx < mem[(7 * ceil32(return_data.size)) + 224]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(8 * ceil32(return_data.size)) + 420] = address(sub_40b2f5b5Address)
                                        mem[(8 * ceil32(return_data.size)) + 452] = block.timestamp
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, mem[(8 * ceil32(return_data.size)) + 484 len (32 * mem[(7 * ceil32(return_data.size)) + 224]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        staticcall sub_82d90f68Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 480 len 5 * ceil32(return_data.size)]
                                        else:
                                            call sub_82d90f68Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args 57005, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 388 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 480 len 9 * ceil32(return_data.size)]
                else:
                    mem[(2 * ceil32(return_data.size)) + 128] = 2
                    mem[(2 * ceil32(return_data.size)) + 160] = sub_3123f8c1Address
                    mem[(2 * ceil32(return_data.size)) + 192] = stableCoinAddress
                    mem[(2 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 228] = (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) + (ext_call.return_data[0] * utilityFee / 100)
                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 160
                    t = (2 * ceil32(return_data.size)) + 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) + (ext_call.return_data[0] * utilityFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 228] = this.address
                    staticcall stableCoinAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    emit 0x6450fb88: (ext_call.return_data[0] * liquidityFee / 100 / 2) + (ext_call.return_data[0] * treasuryFee / 100) + (ext_call.return_data[0] * utilityFee / 100), 0, stableCoinAddress
                    if utilityFee > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if treasuryFee > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if liquidityFee > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if 10 * liquidityFee / 2 > !(10 * treasuryFee):
                        revert with 0, 17
                    if (10 * liquidityFee / 2) + (10 * treasuryFee) > !(10 * utilityFee):
                        revert with 0, 17
                    if liquidityFee > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                        revert with 0, 17
                    if not (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee):
                        revert with 0, 18
                    if treasuryFee > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                        revert with 0, 17
                    if not (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee):
                        revert with 0, 18
                    if 0 and 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee) > -1 / 0:
                        revert with 0, 17
                    if 0 and 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee) > -1 / 0:
                        revert with 0, 17
                    if 0 < (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18:
                        revert with 0, 17
                    if -(ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18 < (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18:
                        revert with 0, 17
                    if not (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18:
                        if not (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18:
                            if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                staticcall sub_82d90f68Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if sub_e70e298e:
                                    mem[(4 * ceil32(return_data.size)) + 324 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(4 * ceil32(return_data.size)) + 324 len 28]
                                    call stableCoinAddress.mem[(4 * ceil32(return_data.size)) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 328 len 64]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(4 * ceil32(return_data.size)) + 356] == bool(mem[(4 * ceil32(return_data.size)) + 356])
                                            if not mem[(4 * ceil32(return_data.size)) + 356]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    staticcall sub_82d90f68Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 256] = stableCoinAddress
                                    staticcall routerAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[(4 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                    mem[(6 * ceil32(return_data.size)) + 320] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 324] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 256
                                    t = (6 * ceil32(return_data.size)) + 516
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 516 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    staticcall sub_82d90f68Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                call sub_82d90f68Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args 57005, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                        else:
                            if not sub_8a9b9d1c:
                                mem[(4 * ceil32(return_data.size)) + 256] = stableCoinAddress
                                staticcall routerAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[(4 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                mem[(6 * ceil32(return_data.size)) + 320] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 324] = (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 256
                                t = (6 * ceil32(return_data.size)) + 516
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18, 0, 160, address(treasuryAddress), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 516 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                    staticcall sub_82d90f68Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if sub_e70e298e:
                                        mem[(6 * ceil32(return_data.size)) + 420 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), Mask(224, 0, stor7)
                                        var153001 = 96
                                        call stableCoinAddress with:
                                             gas gas_remaining wei
                                            args Mask(512, 0, stor7)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(6 * ceil32(return_data.size)) + 452] == bool(mem[(6 * ceil32(return_data.size)) + 452])
                                                if not mem[(6 * ceil32(return_data.size)) + 452]:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        staticcall sub_82d90f68Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 352] = stableCoinAddress
                                        staticcall routerAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[(6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(6 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
                                        mem[(7 * ceil32(return_data.size)) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(7 * ceil32(return_data.size)) + 420] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 352
                                        t = (7 * ceil32(return_data.size)) + 612
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 612 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        staticcall sub_82d90f68Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    call sub_82d90f68Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 57005, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                            else:
                                mem[(4 * ceil32(return_data.size)) + 260] = address(treasuryAddress)
                                mem[(4 * ceil32(return_data.size)) + 292] = (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 224] = 68
                                mem[(4 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(4 * ceil32(return_data.size)) + 324 len 96] = 0, address(treasuryAddress), (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18, mem[(4 * ceil32(return_data.size)) + 324 len 28]
                                mem[(4 * ceil32(return_data.size)) + 392] = 0
                                call stableCoinAddress.mem[(4 * ceil32(return_data.size)) + 324 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 328 len 64]
                                if return_data.size:
                                    mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(4 * ceil32(return_data.size)) + 356] == bool(mem[(4 * ceil32(return_data.size)) + 356])
                                        if not mem[(4 * ceil32(return_data.size)) + 356]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                        staticcall sub_82d90f68Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if sub_e70e298e:
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 28]
                                            call stableCoinAddress.mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len 64]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            else:
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                                    if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = stableCoinAddress
                                            staticcall routerAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[12 len 20]
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        call sub_82d90f68Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not mem[96]:
                                        if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                call sub_82d90f68Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args 57005, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                        else:
                                            if sub_e70e298e:
                                                mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(4 * ceil32(return_data.size)) + 424 len 28]
                                                call stableCoinAddress.mem[(4 * ceil32(return_data.size)) + 424 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[(4 * ceil32(return_data.size)) + 428 len 64]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if mem[96]:
                                                        require mem[96] >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                else:
                                                    mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                                                        if not mem[(4 * ceil32(return_data.size)) + 456]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    call sub_82d90f68Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args 57005, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                            else:
                                                mem[(4 * ceil32(return_data.size)) + 324] = 2
                                                mem[(4 * ceil32(return_data.size)) + 356] = stableCoinAddress
                                                staticcall routerAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = (6 * ceil32(return_data.size)) + 420
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[12 len 20]
                                                mem[(6 * ceil32(return_data.size)) + 420] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(6 * ceil32(return_data.size)) + 424] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                                mem[(6 * ceil32(return_data.size)) + 456] = 0
                                                mem[(6 * ceil32(return_data.size)) + 488] = 160
                                                mem[(6 * ceil32(return_data.size)) + 584] = 2
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + 356
                                                t = (6 * ceil32(return_data.size)) + 616
                                                while idx < mem[(4 * ceil32(return_data.size)) + 324]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(6 * ceil32(return_data.size)) + 520] = address(sub_40b2f5b5Address)
                                                mem[(6 * ceil32(return_data.size)) + 552] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, mem[(6 * ceil32(return_data.size)) + 584 len (32 * mem[(4 * ceil32(return_data.size)) + 324]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(6 * ceil32(return_data.size)) + 424] = this.address
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[(6 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                                    mem[(8 * ceil32(return_data.size)) + 452] = ext_call.return_data[0] * treasuryFee / 100
                                                    mem[(8 * ceil32(return_data.size)) + 484] = ext_call.return_data[0] * utilityFee / 100
                                                    mem[(8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0] * liquidityFee / 100
                                                    mem[(8 * ceil32(return_data.size)) + 548] = ext_call.return_data[0]
                                                    emit 0xc20fef04: mem[(8 * ceil32(return_data.size)) + 420 len (13 * ceil32(return_data.size)) + 160]
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + 424] = 57005
                                                    mem[(8 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                                                    call sub_82d90f68Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args mem[(8 * ceil32(return_data.size)) + 424 len (13 * ceil32(return_data.size)) + 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                                    mem[(8 * ceil32(return_data.size)) + 452] = ext_call.return_data[0] * treasuryFee / 100
                                                    mem[(8 * ceil32(return_data.size)) + 484] = ext_call.return_data[0] * utilityFee / 100
                                                    mem[(8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0] * liquidityFee / 100
                                                    mem[(8 * ceil32(return_data.size)) + 548] = ext_call.return_data[0]
                                                    emit 0xc20fef04: mem[(8 * ceil32(return_data.size)) + 420 len (15 * ceil32(return_data.size)) + 160]
                                    else:
                                        require mem[96] >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                call sub_82d90f68Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args 57005, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                        else:
                                            if sub_e70e298e:
                                                mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(4 * ceil32(return_data.size)) + 424 len 28]
                                                call stableCoinAddress.mem[(4 * ceil32(return_data.size)) + 424 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[(4 * ceil32(return_data.size)) + 428 len 64]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if mem[96]:
                                                        require mem[96] >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                else:
                                                    mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                                                        if not mem[(4 * ceil32(return_data.size)) + 456]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    call sub_82d90f68Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args 57005, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                            else:
                                                mem[(4 * ceil32(return_data.size)) + 324] = 2
                                                mem[(4 * ceil32(return_data.size)) + 356] = stableCoinAddress
                                                staticcall routerAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = (6 * ceil32(return_data.size)) + 420
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[12 len 20]
                                                mem[(6 * ceil32(return_data.size)) + 420] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(6 * ceil32(return_data.size)) + 424] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                                mem[(6 * ceil32(return_data.size)) + 456] = 0
                                                mem[(6 * ceil32(return_data.size)) + 488] = 160
                                                mem[(6 * ceil32(return_data.size)) + 584] = 2
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + 356
                                                t = (6 * ceil32(return_data.size)) + 616
                                                while idx < mem[(4 * ceil32(return_data.size)) + 324]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(6 * ceil32(return_data.size)) + 520] = address(sub_40b2f5b5Address)
                                                mem[(6 * ceil32(return_data.size)) + 552] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + 324]) + -mem[64] + 612]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                _20276 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _20462 = mem[_20276]
                                                if not mem[_20276]:
                                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, mem[_20276]
                                                else:
                                                    mem[mem[64] + 4] = 57005
                                                    mem[mem[64] + 36] = _20462
                                                    call sub_82d90f68Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args 57005, _20462
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _20840 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_20840] == bool(mem[_20840])
                                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, _20462
                    else:
                        if ext_call.return_data[0] * liquidityFee / 100 < ext_call.return_data[0] * liquidityFee / 100 / 2:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 292] = (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2)
                        mem[(4 * ceil32(return_data.size)) + 324] = (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18
                        mem[(4 * ceil32(return_data.size)) + 356] = 0
                        mem[(4 * ceil32(return_data.size)) + 388] = 0
                        mem[(4 * ceil32(return_data.size)) + 420] = address(treasuryAddress)
                        mem[(4 * ceil32(return_data.size)) + 452] = block.timestamp
                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args sub_3123f8c1Address, stableCoinAddress, (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2), (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18, 0, 0, address(treasuryAddress), block.timestamp
                        mem[(4 * ceil32(return_data.size)) + 224 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit 0x506b7ce7: (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2), (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18, stableCoinAddress
                        if not (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18:
                            if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                staticcall sub_82d90f68Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if sub_e70e298e:
                                    mem[(6 * ceil32(return_data.size)) + 324 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(6 * ceil32(return_data.size)) + 324 len 28]
                                    call stableCoinAddress.mem[(6 * ceil32(return_data.size)) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[(6 * ceil32(return_data.size)) + 328 len 64]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(6 * ceil32(return_data.size)) + 356] == bool(mem[(6 * ceil32(return_data.size)) + 356])
                                            if not mem[(6 * ceil32(return_data.size)) + 356]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    staticcall sub_82d90f68Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 256] = stableCoinAddress
                                    staticcall routerAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[(6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                    mem[(7 * ceil32(return_data.size)) + 320] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(7 * ceil32(return_data.size)) + 324] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 256
                                    t = (7 * ceil32(return_data.size)) + 516
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 516 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    staticcall sub_82d90f68Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                call sub_82d90f68Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args 57005, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                        else:
                            if not sub_8a9b9d1c:
                                mem[(6 * ceil32(return_data.size)) + 256] = stableCoinAddress
                                staticcall routerAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[(6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                mem[(7 * ceil32(return_data.size)) + 320] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 324] = (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18
                                mem[(7 * ceil32(return_data.size)) + 484] = 2
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 256
                                t = (7 * ceil32(return_data.size)) + 516
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 420] = address(treasuryAddress)
                                mem[(7 * ceil32(return_data.size)) + 452] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18, 0, 160, address(treasuryAddress), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 516 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                    staticcall sub_82d90f68Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if sub_e70e298e:
                                        mem[(7 * ceil32(return_data.size)) + 420 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), Mask(224, 0, stor7)
                                        var165001 = 96
                                        call stableCoinAddress with:
                                             gas gas_remaining wei
                                            args Mask(512, 0, stor7)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        else:
                                            mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                                                if not mem[(7 * ceil32(return_data.size)) + 452]:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        staticcall sub_82d90f68Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[(7 * ceil32(return_data.size)) + 320] = 2
                                        mem[(7 * ceil32(return_data.size)) + 352] = stableCoinAddress
                                        staticcall routerAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[(7 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(7 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
                                        mem[(8 * ceil32(return_data.size)) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 420] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                        mem[(8 * ceil32(return_data.size)) + 452] = 0
                                        mem[(8 * ceil32(return_data.size)) + 484] = 160
                                        mem[(8 * ceil32(return_data.size)) + 580] = 2
                                        idx = 0
                                        s = (7 * ceil32(return_data.size)) + 352
                                        t = (8 * ceil32(return_data.size)) + 612
                                        while idx < mem[(7 * ceil32(return_data.size)) + 320]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(8 * ceil32(return_data.size)) + 516] = address(sub_40b2f5b5Address)
                                        mem[(8 * ceil32(return_data.size)) + 548] = block.timestamp
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, mem[(8 * ceil32(return_data.size)) + 580 len (32 * mem[(7 * ceil32(return_data.size)) + 320]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        staticcall sub_82d90f68Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    call sub_82d90f68Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 57005, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                            else:
                                mem[(6 * ceil32(return_data.size)) + 260] = address(treasuryAddress)
                                mem[(6 * ceil32(return_data.size)) + 292] = (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18
                                mem[(6 * ceil32(return_data.size)) + 224] = 68
                                mem[(6 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(6 * ceil32(return_data.size)) + 324 len 96] = 0, address(treasuryAddress), (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18, mem[(6 * ceil32(return_data.size)) + 324 len 28]
                                mem[(6 * ceil32(return_data.size)) + 392] = 0
                                call stableCoinAddress.mem[(6 * ceil32(return_data.size)) + 324 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(6 * ceil32(return_data.size)) + 328 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not mem[96]:
                                        if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                call sub_82d90f68Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args 57005, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                        else:
                                            if sub_e70e298e:
                                                mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(6 * ceil32(return_data.size)) + 424 len 28]
                                                var162001 = 96
                                                call stableCoinAddress.mem[(6 * ceil32(return_data.size)) + 424 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[(6 * ceil32(return_data.size)) + 428 len 64]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if mem[96]:
                                                        require mem[96] >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                else:
                                                    mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                                                        if not mem[(6 * ceil32(return_data.size)) + 456]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    call sub_82d90f68Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args 57005, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 356] = stableCoinAddress
                                                staticcall routerAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[(6 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(6 * ceil32(return_data.size)) + 388] = ext_call.return_data[12 len 20]
                                                mem[(7 * ceil32(return_data.size)) + 420] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + 424] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                                mem[(7 * ceil32(return_data.size)) + 488] = 160
                                                mem[(7 * ceil32(return_data.size)) + 584] = 2
                                                idx = 0
                                                s = (6 * ceil32(return_data.size)) + 356
                                                t = (7 * ceil32(return_data.size)) + 616
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(7 * ceil32(return_data.size)) + 520] = address(sub_40b2f5b5Address)
                                                mem[(7 * ceil32(return_data.size)) + 552] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 616 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + 580 len 5 * ceil32(return_data.size)]
                                                else:
                                                    call sub_82d90f68Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args 57005, ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + 488 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0], mem[(11 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                    else:
                                        require mem[96] >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                call sub_82d90f68Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args 57005, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                        else:
                                            if sub_e70e298e:
                                                mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(6 * ceil32(return_data.size)) + 424 len 28]
                                                call stableCoinAddress.mem[(6 * ceil32(return_data.size)) + 424 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[(6 * ceil32(return_data.size)) + 428 len 64]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if mem[96]:
                                                        require mem[96] >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                else:
                                                    mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                                                        if not mem[(6 * ceil32(return_data.size)) + 456]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    call sub_82d90f68Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args 57005, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 356] = stableCoinAddress
                                                staticcall routerAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[(6 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(6 * ceil32(return_data.size)) + 388] = ext_call.return_data[12 len 20]
                                                mem[(7 * ceil32(return_data.size)) + 420] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + 424] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                                mem[(7 * ceil32(return_data.size)) + 488] = 160
                                                mem[(7 * ceil32(return_data.size)) + 584] = 2
                                                idx = 0
                                                s = (6 * ceil32(return_data.size)) + 356
                                                t = (7 * ceil32(return_data.size)) + 616
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(7 * ceil32(return_data.size)) + 520] = address(sub_40b2f5b5Address)
                                                mem[(7 * ceil32(return_data.size)) + 552] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 616 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + 580 len 5 * ceil32(return_data.size)]
                                                else:
                                                    call sub_82d90f68Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args 57005, ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + 488 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0], mem[(11 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 324] = return_data.size
                                    mem[(6 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not return_data.size:
                                        if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                call sub_82d90f68Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args 57005, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                        else:
                                            if sub_e70e298e:
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 28]
                                                var162001 = 96
                                                call stableCoinAddress.mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len 64]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if mem[96]:
                                                        require mem[96] >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                else:
                                                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                                        if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    call sub_82d90f68Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args 57005, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 2
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = stableCoinAddress
                                                staticcall routerAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[12 len 20]
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 160
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 2
                                                idx = 0
                                                s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                                while idx < mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(sub_40b2f5b5Address)
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), 0, 160, address(sub_40b2f5b5Address), block.timestamp, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len (32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len 5 * ceil32(return_data.size)]
                                                else:
                                                    call sub_82d90f68Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args 57005, ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0], mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len 9 * ceil32(return_data.size)]
                                    else:
                                        require return_data.size >= 32
                                        require mem[(6 * ceil32(return_data.size)) + 356] == bool(mem[(6 * ceil32(return_data.size)) + 356])
                                        if not mem[(6 * ceil32(return_data.size)) + 356]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18):
                                            staticcall sub_82d90f68Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                call sub_82d90f68Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args 57005, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                        else:
                                            if sub_e70e298e:
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(sub_40b2f5b5Address), -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18), mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 28]
                                                call stableCoinAddress.mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len 64]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if mem[96]:
                                                        require mem[96] >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                else:
                                                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                                        if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    call sub_82d90f68Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args 57005, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, ext_call.return_data[0]
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 2
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = stableCoinAddress
                                                staticcall routerAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[12 len 20]
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = -((ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * liquidityFee / 2 / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18) - ((ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) - (ext_call.return_data[0] * 1000 * 10^18 * treasuryFee / (10 * liquidityFee / 2) + (10 * treasuryFee) + (10 * utilityFee)) / 100 * 10^18)
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 160
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 2
                                                idx = 0
                                                s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                                while idx < mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(sub_40b2f5b5Address)
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]) + -mem[64] + 613]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                staticcall sub_82d90f68Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                _20309 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _20539 = mem[_20309]
                                                if not mem[_20309]:
                                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, mem[_20309]
                                                else:
                                                    mem[mem[64] + 4] = 57005
                                                    mem[mem[64] + 36] = _20539
                                                    call sub_82d90f68Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args 57005, _20539
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _20917 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_20917] == bool(mem[_20917])
                                                    emit 0xc20fef04: ext_call.return_data[0], ext_call.return_data[0] * treasuryFee / 100, ext_call.return_data[0] * utilityFee / 100, ext_call.return_data[0] * liquidityFee / 100, _20539
                uint8(stor14.field_0) = 0
}



}
