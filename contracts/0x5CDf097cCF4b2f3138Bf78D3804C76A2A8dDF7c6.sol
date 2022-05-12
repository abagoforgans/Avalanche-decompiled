contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
mapping of uint8 stor1;
uint256 stor2;

function owner() {
    return owner
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, 'Caller not Admin Role'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, 'Caller not Admin Role'
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function sub_aa3c40cd(?) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, 'Caller not Admin Role'
    if arg2 <= 0:
        revert with 0, 'ZERO_AMOUNT_IN'
    require ext_code.size(arg4)
    staticcall arg4.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = address(ext_call.return_data[0])
    mem[160] = arg1
    mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[260] = this.address
    mem[292] = arg5
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(arg4)
    call arg4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg2 wei
         gas gas_remaining wei
        args arg3, Array(len=2, data=mem[356 len 64]), address(this.address), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _32 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _35 = mem[_32 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_32 + 192])] = mem[_32 + 224 len floor32(mem[_32 + 192])]
    mem[(32 * _35) + ceil32(return_data.size) + 224] = 32
    mem[(32 * _35) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 192]
    mem[(32 * _35) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 192])] = mem[ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 192])]
    return 32, mem[(32 * _35) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
}

function sub_bbf5b150(?) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, 'Caller not Admin Role'
    if arg2 <= 0:
        revert with 0, 'ZERO_AMOUNT_IN'
    require ext_code.size(arg4)
    staticcall arg4.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = address(ext_call.return_data[0])
    mem[160] = arg1
    mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[260] = this.address
    mem[292] = arg5
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(arg4)
    call arg4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg2 wei
         gas gas_remaining wei
        args arg3, Array(len=2, data=mem[356 len 64]), address(this.address), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _32 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _35 = mem[_32 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_32 + 192])] = mem[_32 + 224 len floor32(mem[_32 + 192])]
    mem[(32 * _35) + ceil32(return_data.size) + 224] = 32
    mem[(32 * _35) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 192]
    mem[(32 * _35) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 192])] = mem[ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 192])]
    return 32, mem[(32 * _35) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
}

function sub_8bb99018(?) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, 'Caller not Admin Role'
    if arg2 <= 0:
        revert with 0, 'ZERO_AMOUNT_IN'
    require ext_code.size(arg4)
    staticcall arg4.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = arg1
    mem[160] = address(ext_call.return_data[0])
    mem[192] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = arg3
    mem[292] = this.address
    mem[324] = arg5
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(arg4)
    call arg4.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=2, data=mem[388 len 64]), address(this.address), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _32 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    _35 = mem[_32 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_32 + 192])] = mem[_32 + 224 len floor32(mem[_32 + 192])]
    mem[(32 * _35) + ceil32(return_data.size) + 224] = 32
    mem[(32 * _35) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 192]
    mem[(32 * _35) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 192])] = mem[ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 192])]
    return 32, mem[(32 * _35) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
}

function sub_d98cf47c(?) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, 'Caller not Admin Role'
    if arg2 <= 0:
        revert with 0, 'ZERO_AMOUNT_IN'
    require ext_code.size(arg4)
    staticcall arg4.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = arg1
    mem[160] = address(ext_call.return_data[0])
    mem[192] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = arg3
    mem[292] = this.address
    mem[324] = arg5
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(arg4)
    call arg4.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=2, data=mem[388 len 64]), address(this.address), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _32 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    _35 = mem[_32 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_32 + 192])] = mem[_32 + 224 len floor32(mem[_32 + 192])]
    mem[(32 * _35) + ceil32(return_data.size) + 224] = 32
    mem[(32 * _35) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 192]
    mem[(32 * _35) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 192])] = mem[ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 192])]
    return 32, mem[(32 * _35) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
}

function sub_00663bf3(?) {
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
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Caller not Admin Role'
    idx = 0
    while idx < arg1.length:
        _66 = mem[(32 * arg1.length) + 128]
        s = 0
        while s < _66:
            require idx < mem[96]
            _68 = mem[(32 * idx) + 128]
            require s < mem[(32 * arg1.length) + 128]
            _71 = mem[64]
            mem[mem[64] + 36] = mem[(32 * s) + (32 * arg1.length) + 172 len 20]
            mem[mem[64] + 68] = stor2
            _72 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_72 + 32] = mem[_72 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            _75 = mem[_72]
            t = _72 + 32
            u = mem[64]
            idx = mem[_72]
            while idx >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[_72])] = mem[_72 + floor32(mem[_72]) + -(mem[_72] % 32) + 64 len mem[_72] % 32] or Mask(8 * -(mem[_72] % 32) + 32, -(8 * -(mem[_72] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_72])])
            call address(_68).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _75 + _71 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
            else:
                _99 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_99] = return_data.size
                mem[_99 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_99 + 32]:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}

function sub_ac7d6439(?) {
    require calldata.size - 4 >= 224
    if not stor1[address(msg.sender)]:
        revert with 0, 'Caller not Admin Role'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 == 0xe54ca86531e17ef3616d22ca28b0d458b6c89106:
        if not stor1[address(msg.sender)]:
            revert with 0, 'Caller not Admin Role'
        if arg2 <= 0:
            revert with 0, 'ZERO_AMOUNT_IN'
        require ext_code.size(arg4)
        staticcall arg4.WAVAX() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 2
        mem[128] = address(ext_call.return_data[0])
        mem[160] = arg1
        mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[260] = this.address
        mem[292] = arg6
        mem[228] = 128
        mem[324] = 2
        mem[356 len 0] = None
        require ext_code.size(arg4)
        call arg4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg2 wei
             gas gas_remaining wei
            args arg3, Array(len=2, data=mem[356 len 64]), address(this.address), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _188 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _193 = mem[_188 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_188 + 192])] = mem[_188 + 224 len floor32(mem[_188 + 192])]
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg4 == 0xe54ca86531e17ef3616d22ca28b0d458b6c89106:
            if not stor1[address(msg.sender)]:
                revert with 0, 'Caller not Admin Role'
            revert with 0, 'ZERO_AMOUNT_IN'
        if arg4 != 0x60ae616a2155ee3d9a68541ba4544862310933d4:
            revert with 0, 'unknown router'
        mem[0] = msg.sender
        mem[32] = 1
        if not stor1[address(msg.sender)]:
            revert with 0, 'Caller not Admin Role'
        if arg2 <= 0:
            revert with 0, 'ZERO_AMOUNT_IN'
        require ext_code.size(arg5)
        staticcall arg5.WAVAX() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _193) + ceil32(return_data.size) + 224] = 2
        mem[(32 * _193) + ceil32(return_data.size) + 256] = arg1
        mem[(32 * _193) + ceil32(return_data.size) + 288] = address(ext_call.return_data[0])
        mem[(32 * _193) + ceil32(return_data.size) + 320] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[(32 * _193) + ceil32(return_data.size) + 324] = arg2
        mem[(32 * _193) + ceil32(return_data.size) + 356] = arg3
        mem[(32 * _193) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _193) + ceil32(return_data.size) + 452] = arg6
        mem[(32 * _193) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _193) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _193) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(arg5)
        call arg5.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg3, Array(len=2, data=mem[(32 * _193) + ceil32(return_data.size) + 516 len 64]), address(this.address), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _193) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _193) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _462 = mem[(32 * _193) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _193) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _193) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _193) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _193) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _193) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _193) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _193) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _193) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _193) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _193) + ceil32(return_data.size) + 320]
        _472 = mem[_462 + (32 * _193) + ceil32(return_data.size) + 320]
        mem[(32 * _193) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_462 + (32 * _193) + ceil32(return_data.size) + 320])] = mem[_462 + (32 * _193) + ceil32(return_data.size) + 352 len floor32(mem[_462 + (32 * _193) + ceil32(return_data.size) + 320])]
        mem[(32 * _472) + (32 * _193) + (2 * ceil32(return_data.size)) + 352] = 32
        mem[(32 * _472) + (32 * _193) + (2 * ceil32(return_data.size)) + 384] = mem[(32 * _193) + (2 * ceil32(return_data.size)) + 320]
        mem[(32 * _472) + (32 * _193) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _193) + (2 * ceil32(return_data.size)) + 320])] = mem[(32 * _193) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _193) + (2 * ceil32(return_data.size)) + 320])]
        return 32, mem[(32 * _472) + (32 * _193) + (2 * ceil32(return_data.size)) + 384 len (32 * mem[(32 * _193) + (2 * ceil32(return_data.size)) + 320]) + 32], 
    if arg4 != 0x60ae616a2155ee3d9a68541ba4544862310933d4:
        revert with 0, 'unknown router'
    if not stor1[address(msg.sender)]:
        revert with 0, 'Caller not Admin Role'
    if arg2 <= 0:
        revert with 0, 'ZERO_AMOUNT_IN'
    require ext_code.size(arg4)
    staticcall arg4.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = address(ext_call.return_data[0])
    mem[160] = arg1
    mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[260] = this.address
    mem[292] = arg6
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(arg4)
    call arg4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg2 wei
         gas gas_remaining wei
        args arg3, Array(len=2, data=mem[356 len 64]), address(this.address), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _186 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _192 = mem[_186 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_186 + 192])] = mem[_186 + 224 len floor32(mem[_186 + 192])]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 == 0xe54ca86531e17ef3616d22ca28b0d458b6c89106:
        if not stor1[address(msg.sender)]:
            revert with 0, 'Caller not Admin Role'
        revert with 0, 'ZERO_AMOUNT_IN'
    if arg4 != 0x60ae616a2155ee3d9a68541ba4544862310933d4:
        revert with 0, 'unknown router'
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Caller not Admin Role'
    if arg2 <= 0:
        revert with 0, 'ZERO_AMOUNT_IN'
    require ext_code.size(arg5)
    staticcall arg5.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _192) + ceil32(return_data.size) + 224] = 2
    mem[(32 * _192) + ceil32(return_data.size) + 256] = arg1
    mem[(32 * _192) + ceil32(return_data.size) + 288] = address(ext_call.return_data[0])
    mem[(32 * _192) + ceil32(return_data.size) + 320] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[(32 * _192) + ceil32(return_data.size) + 324] = arg2
    mem[(32 * _192) + ceil32(return_data.size) + 356] = arg3
    mem[(32 * _192) + ceil32(return_data.size) + 420] = this.address
    mem[(32 * _192) + ceil32(return_data.size) + 452] = arg6
    mem[(32 * _192) + ceil32(return_data.size) + 388] = 160
    mem[(32 * _192) + ceil32(return_data.size) + 484] = 2
    mem[(32 * _192) + ceil32(return_data.size) + 516 len 0] = None
    require ext_code.size(arg5)
    call arg5.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=2, data=mem[(32 * _192) + ceil32(return_data.size) + 516 len 64]), address(this.address), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _192) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _192) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _458 = mem[(32 * _192) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
    require mem[(32 * _192) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * _192) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _192) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _192) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _192) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _192) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _192) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _192) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _192) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _192) + ceil32(return_data.size) + 320]
    _470 = mem[_458 + (32 * _192) + ceil32(return_data.size) + 320]
    mem[(32 * _192) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_458 + (32 * _192) + ceil32(return_data.size) + 320])] = mem[_458 + (32 * _192) + ceil32(return_data.size) + 352 len floor32(mem[_458 + (32 * _192) + ceil32(return_data.size) + 320])]
    mem[(32 * _470) + (32 * _192) + (2 * ceil32(return_data.size)) + 352] = 32
    mem[(32 * _470) + (32 * _192) + (2 * ceil32(return_data.size)) + 384] = mem[(32 * _192) + (2 * ceil32(return_data.size)) + 320]
    mem[(32 * _470) + (32 * _192) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _192) + (2 * ceil32(return_data.size)) + 320])] = mem[(32 * _192) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _192) + (2 * ceil32(return_data.size)) + 320])]
    return 32, mem[(32 * _470) + (32 * _192) + (2 * ceil32(return_data.size)) + 384 len (32 * mem[(32 * _192) + (2 * ceil32(return_data.size)) + 320]) + 32], 
}



}
