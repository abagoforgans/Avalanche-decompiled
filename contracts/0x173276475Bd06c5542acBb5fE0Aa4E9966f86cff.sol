contract main {




// =====================  Runtime code  =====================


const chainlinkOracleAddress = 0xa77230d17318075983913bc2145db16c7366156


uint32 stor0;
address owner;
uint256 stor0;
array of struct sub_3b707478;
uint256 sub_6c6fb378;
uint256 sub_ce4690bd;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779001;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779002;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779003;

function sub_3b707478(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_3b707478.length
    return sub_3b707478[arg1].field_0, 
           sub_3b707478[arg1].field_256,
           sub_3b707478[arg1].field_512,
           sub_3b707478[arg1].field_768,
           sub_3b707478[arg1].field_1024,
           sub_3b707478[arg1].field_1280
}

function sub_6c6fb378(?) {
    return sub_6c6fb378
}

function owner() {
    return address(owner)
}

function sub_bcb82ea1(?) {
    return sub_3b707478.length
}

function sub_ce4690bd(?) {
    return sub_ce4690bd
}

function renounceOwnership() {
    revert with 0, 'can't renounceOwnership'
}

function sub_c0220fd6(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6c6fb378 = arg1
}

function sub_c74e2072(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ce4690bd = arg1
}

function withdrawMatic(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'MATIC_TRANSFER_FAILED'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function sub_5cb9730b(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3b707478.length++
    sub_3b707478[sub_3b707478.length].field_0 = address(arg1)
    storB10E[stor1.length] = address(arg2)
    storB10E[stor1.length] = address(arg3)
    storB10E[stor1.length] = address(arg4)
    storB10E[stor1.length] = 0
    storB10E[stor1.length] = 0
}

function sub_d8b08ce4(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < sub_3b707478.length:
        if sub_3b707478.length < 1:
            revert with 0, 17
        if sub_3b707478.length - 1 >= sub_3b707478.length:
            revert with 0, 50
        if arg1 >= sub_3b707478.length:
            revert with 0, 50
        sub_3b707478[arg1].field_0 = sub_3b707478[sub_3b707478.length].field_0
        sub_3b707478[arg1].field_256 = sub_3b707478[sub_3b707478.length].field_0
        sub_3b707478[arg1].field_512 = sub_3b707478[sub_3b707478.length].field_0
        sub_3b707478[arg1].field_768 = sub_3b707478[sub_3b707478.length].field_0
        sub_3b707478[arg1].field_1024 = sub_3b707478[sub_3b707478.length].field_0
        sub_3b707478[arg1].field_1280 = sub_3b707478[sub_3b707478.length].field_0
        if not sub_3b707478.length:
            revert with 0, 49
        sub_3b707478[sub_3b707478.length].field_0 = 0
        sub_3b707478[sub_3b707478.length].field_0 = 0
        sub_3b707478[sub_3b707478.length].field_0 = 0
        sub_3b707478[sub_3b707478.length].field_0 = 0
        sub_3b707478[sub_3b707478.length].field_0 = 0
        sub_3b707478[sub_3b707478.length].field_0 = 0
        sub_3b707478.length--
}

function withdraw(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_5860ee3c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'not enough balance'
    mem[ceil32(return_data.size) + 132] = address(arg2)
    mem[ceil32(return_data.size) + 164] = arg3
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function available(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_3b707478.length:
        revert with 0, 50
    require ext_code.size(sub_3b707478[arg1].field_512)
    staticcall sub_3b707478[arg1].field_512.'Mb(1' with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xa77230d17318075983913bc2145db16c7366156)
    staticcall 0xa77230d17318075983913bc2145db16c7366156.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if block.timestamp < ext_call.return_data[96]:
        revert with 0, 17
    if block.timestamp - ext_call.return_data[96] <= 300:
        if ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
            revert with 0, 17
        if arg1 >= sub_3b707478.length:
            revert with 0, 50
        require ext_code.size(sub_3b707478[arg1].field_0)
        staticcall sub_3b707478[arg1].field_0.getCurrentICR(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), 10^10 * ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 >= sub_3b707478.length:
            revert with 0, 50
        require ext_code.size(sub_3b707478[arg1].field_0)
        staticcall sub_3b707478[arg1].field_0.checkRecoveryMode(uint256 rg1) with:
                gas gas_remaining wei
               args (10^10 * ext_call.return_data[32])
    else:
        if arg1 >= sub_3b707478.length:
            revert with 0, 50
        require ext_code.size(sub_3b707478[arg1].field_256)
        staticcall sub_3b707478[arg1].field_256.lastGoodPrice() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 >= sub_3b707478.length:
            revert with 0, 50
        require ext_code.size(sub_3b707478[arg1].field_0)
        staticcall sub_3b707478[arg1].field_0.getCurrentICR(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 >= sub_3b707478.length:
            revert with 0, 50
        require ext_code.size(sub_3b707478[arg1].field_0)
        staticcall sub_3b707478[arg1].field_0.checkRecoveryMode(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] >= sub_6c6fb378:
            return ext_call.return_data[0], 0, bool(ext_call.return_data[0])
    else:
        if ext_call.return_data[0] >= sub_ce4690bd:
            return ext_call.return_data[0], 0, bool(ext_call.return_data[0])
    return ext_call.return_data[0], 1, bool(ext_call.return_data[0])
}

function sub_1611d864(?) {
    require calldata.size - 4 >= 64
    if arg1 >= sub_3b707478.length:
        revert with 0, 50
    require ext_code.size(sub_3b707478[arg1].field_0)
    call sub_3b707478[arg1].field_0.liquidateTroves(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= sub_3b707478.length:
        revert with 0, 50
    if sub_3b707478[arg1].field_1024 > !eth.balance(this.address):
        revert with 0, 17
    if arg1 >= sub_3b707478.length:
        revert with 0, 50
    sub_3b707478[arg1].field_1024 += eth.balance(this.address)
    mem[100] = this.address
    require ext_code.size(sub_3b707478[arg1].field_768)
    staticcall sub_3b707478[arg1].field_768.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= sub_3b707478.length:
        revert with 0, 50
    if sub_3b707478[arg1].field_1280 > !ext_call.return_data[0]:
        revert with 0, 17
    if arg1 >= sub_3b707478.length:
        revert with 0, 50
    sub_3b707478[arg1].field_1280 += ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(sub_3b707478[arg1].field_768)
    staticcall sub_3b707478[arg1].field_768.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= sub_3b707478.length:
        revert with 0, 50
    mem[(2 * ceil32(return_data.size)) + 132] = address(owner)
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_3b707478[arg1].field_768):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call sub_3b707478[arg1].field_768 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    call address(owner) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'MATIC_TRANSFER_FAILED'
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xbcb82ea1(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd8b08ce4(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xbcb82ea1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_3b707478.length
                if unknown_0xc0220fd6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_6c6fb378 = arg1
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xc74e2072(?????):
                        require unknown_0xce4690bd(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_ce4690bd
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_ce4690bd = arg1
            else:
                if unknown_0xf2fde38b(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0xd8b08ce4(?????):
                        require unknown_0xe8a379b2(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if address(owner) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call msg.sender with:
                           value arg1 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'MATIC_TRANSFER_FAILED'
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if address(owner) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg1 < sub_3b707478.length:
                            if sub_3b707478.length < 1:
                                revert with 0, 17
                            if sub_3b707478.length - 1 >= sub_3b707478.length:
                                revert with 0, 50
                            if arg1 >= sub_3b707478.length:
                                revert with 0, 50
                            sub_3b707478[arg1].field_0 = sub_3b707478[sub_3b707478.length].field_0
                            sub_3b707478[arg1].field_256 = sub_3b707478[sub_3b707478.length].field_0
                            sub_3b707478[arg1].field_512 = sub_3b707478[sub_3b707478.length].field_0
                            sub_3b707478[arg1].field_768 = sub_3b707478[sub_3b707478.length].field_0
                            sub_3b707478[arg1].field_1024 = sub_3b707478[sub_3b707478.length].field_0
                            sub_3b707478[arg1].field_1280 = sub_3b707478[sub_3b707478.length].field_0
                            if not sub_3b707478.length:
                                revert with 0, 49
                            sub_3b707478[sub_3b707478.length].field_0 = 0
                            sub_3b707478[sub_3b707478.length].field_0 = 0
                            sub_3b707478[sub_3b707478.length].field_0 = 0
                            sub_3b707478[sub_3b707478.length].field_0 = 0
                            sub_3b707478[sub_3b707478.length].field_0 = 0
                            sub_3b707478[sub_3b707478.length].field_0 = 0
                            sub_3b707478.length--
                else:
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if address(owner) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(address(owner), address(arg1));
                        address(owner) = address(arg1)
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xf940e385(?????):
                            require unknown_0xfe21f306(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return 0xa77230d17318075983913bc2145db16c7366156
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        if address(owner) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[132] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 164] = address(arg2)
                        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 128] = 68
                        mem[ceil32(return_data.size) + 164 len 28] = address(arg2) << 64
                        mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 228] = 32
                        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 360] = 0
                        call address(arg1) with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                if not mem[ceil32(return_data.size) + 324]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if unknown_0x6c6fb378(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x6c6fb378(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_6c6fb378
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    revert with 0, 'can't renounceOwnership'
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return address(owner)
                require unknown_0x96e494e8(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                if arg1 >= sub_3b707478.length:
                    revert with 0, 50
                require ext_code.size(sub_3b707478[arg1].field_512)
                staticcall sub_3b707478[arg1].field_512.'Mb(1' with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa77230d17318075983913bc2145db16c7366156)
                staticcall 0xa77230d17318075983913bc2145db16c7366156.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if block.timestamp < ext_call.return_data[96]:
                    revert with 0, 17
                if block.timestamp - ext_call.return_data[96] <= 300:
                    if ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                        revert with 0, 17
                    if arg1 >= sub_3b707478.length:
                        revert with 0, 50
                    require ext_code.size(sub_3b707478[arg1].field_0)
                    staticcall sub_3b707478[arg1].field_0.getCurrentICR(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), 10^10 * ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 >= sub_3b707478.length:
                        revert with 0, 50
                    require ext_code.size(sub_3b707478[arg1].field_0)
                    staticcall sub_3b707478[arg1].field_0.checkRecoveryMode(uint256 rg1) with:
                            gas gas_remaining wei
                           args (10^10 * ext_call.return_data[32])
                else:
                    if arg1 >= sub_3b707478.length:
                        revert with 0, 50
                    require ext_code.size(sub_3b707478[arg1].field_256)
                    staticcall sub_3b707478[arg1].field_256.lastGoodPrice() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 >= sub_3b707478.length:
                        revert with 0, 50
                    require ext_code.size(sub_3b707478[arg1].field_0)
                    staticcall sub_3b707478[arg1].field_0.getCurrentICR(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 >= sub_3b707478.length:
                        revert with 0, 50
                    require ext_code.size(sub_3b707478[arg1].field_0)
                    staticcall sub_3b707478[arg1].field_0.checkRecoveryMode(uint256 rg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] >= sub_6c6fb378:
                        return ext_call.return_data[0], 0, bool(ext_call.return_data[0])
                else:
                    if ext_call.return_data[0] >= sub_ce4690bd:
                        return ext_call.return_data[0], 0, bool(ext_call.return_data[0])
                return ext_call.return_data[0], 1, bool(ext_call.return_data[0])
            if uint32(call.func_hash) >> 224 != unknown_0x1611d864(?????):
                if unknown_0x3b707478(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 < sub_3b707478.length
                    return sub_3b707478[arg1].field_0, 
                           sub_3b707478[arg1].field_256,
                           sub_3b707478[arg1].field_512,
                           sub_3b707478[arg1].field_768,
                           sub_3b707478[arg1].field_1024,
                           sub_3b707478[arg1].field_1280
                if uint32(call.func_hash) >> 224 != unknown_0x5860ee3c(?????):
                    require unknown_0x5cb9730b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require arg3 == address(arg3)
                    require arg4 == address(arg4)
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_3b707478.length++
                    sub_3b707478[sub_3b707478.length].field_0 = address(arg1)
                    storB10E[stor1.length] = address(arg2)
                    storB10E[stor1.length] = address(arg3)
                    storB10E[stor1.length] = address(arg4)
                    storB10E[stor1.length] = 0
                    storB10E[stor1.length] = 0
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[132] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg3 > ext_call.return_data[0]:
                        revert with 0, 'not enough balance'
                    mem[ceil32(return_data.size) + 164] = address(arg2)
                    mem[ceil32(return_data.size) + 196] = arg3
                    mem[ceil32(return_data.size) + 128] = 68
                    mem[ceil32(return_data.size) + 164 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 228] = 32
                    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
                    mem[ceil32(return_data.size) + 360] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                            if not mem[ceil32(return_data.size) + 324]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require not msg.value
                require calldata.size - 4 >= 64
                if arg1 >= sub_3b707478.length:
                    revert with 0, 50
                require ext_code.size(sub_3b707478[arg1].field_0)
                call sub_3b707478[arg1].field_0.liquidateTroves(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 >= sub_3b707478.length:
                    revert with 0, 50
                if sub_3b707478[arg1].field_1024 > !eth.balance(this.address):
                    revert with 0, 17
                if arg1 >= sub_3b707478.length:
                    revert with 0, 50
                sub_3b707478[arg1].field_1024 += eth.balance(this.address)
                mem[132] = this.address
                require ext_code.size(sub_3b707478[arg1].field_768)
                staticcall sub_3b707478[arg1].field_768.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 >= sub_3b707478.length:
                    revert with 0, 50
                if sub_3b707478[arg1].field_1280 > !ext_call.return_data[0]:
                    revert with 0, 17
                if arg1 >= sub_3b707478.length:
                    revert with 0, 50
                sub_3b707478[arg1].field_1280 += ext_call.return_data[0]
                mem[ceil32(return_data.size) + 132] = this.address
                require ext_code.size(sub_3b707478[arg1].field_768)
                staticcall sub_3b707478[arg1].field_768.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 >= sub_3b707478.length:
                    revert with 0, 50
                mem[(2 * ceil32(return_data.size)) + 164] = address(owner)
                mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 128] = 68
                mem[(2 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 0, stor0)
                mem[(2 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_3b707478[arg1].field_768):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 360] = 0
                call sub_3b707478[arg1].field_768 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                        if not mem[(2 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                call address(owner) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'MATIC_TRANSFER_FAILED'
}



}
