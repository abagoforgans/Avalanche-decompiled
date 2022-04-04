contract main {




// =====================  Runtime code  =====================


#
#  - removeLiquidity(uint256 arg1, uint256[] arg2, uint256 arg3)
#  - removeLiquidityImbalance(uint256[] arg1, uint256 arg2, uint256 arg3)
#  - initialize(address arg1, address arg2, address arg3)
#
uint256 stor1;
address baseSwapAddress;
address metaSwapAddress;
array of struct baseTokens;
array of struct metaTokens;
array of address token;
address metaLPTokenAddress;

function baseTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < baseTokens.length
    return baseTokens[arg1].field_0
}

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token.length
    return token[arg1]
}

function baseSwap() payable {
    return baseSwapAddress
}

function metaSwap() payable {
    return metaSwapAddress
}

function metaLPToken() payable {
    return metaLPTokenAddress
}

function getToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= token.length:
        revert with 0, 'index out of range'
    return token[arg1]
}

function metaTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < metaTokens.length
    return metaTokens[arg1].field_0
}

function _fallback() payable {
    revert
}

function calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(metaSwapAddress)
    staticcall metaSwapAddress.calculateSwapUnderlying(uint8 rg1, uint8 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args arg1 << 248, arg2 << 248, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function calculateRemoveLiquidityOneToken(uint256 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(metaSwapAddress)
    if arg2 < uint8(metaTokens.length - 1):
        staticcall metaSwapAddress.0x342a87a1 with:
                gas gas_remaining wei
               args arg1, arg2
    else:
        staticcall metaSwapAddress.0x342a87a1 with:
                gas gas_remaining wei
               args arg1, uint8(metaTokens.length - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(baseSwapAddress)
        staticcall baseSwapAddress.0x342a87a1 with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint8(arg2 + -metaTokens.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function calculateTokenAmount(uint256[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require metaTokens.length <= test266151307()
    mem[96] = metaTokens.length
    if not metaTokens.length:
        require baseTokens.length <= test266151307()
        mem[(32 * metaTokens.length) + 128] = baseTokens.length
        if not baseTokens.length:
            idx = 0
            while uint8(idx) < metaTokens.length - 1:
                require uint8(idx) < arg1.length
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = cd[((32 * uint8(idx)) + arg1 + 36)]
                idx = idx + 1
                continue 
            _168 = mem[(32 * metaTokens.length) + 128]
            idx = 0
            while uint8(idx) < _168:
                require metaTokens.length + uint8(idx) - 1 < arg1.length
                require uint8(idx) < mem[(32 * metaTokens.length) + 128]
                mem[(32 * uint8(idx)) + (32 * metaTokens.length) + 160] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                _168 = mem[(32 * metaTokens.length) + 128]
                idx = idx + 1
                continue 
        else:
            mem[(32 * metaTokens.length) + 160 len 32 * baseTokens.length] = call.data[calldata.size len 32 * baseTokens.length]
            idx = 0
            while uint8(idx) < metaTokens.length - 1:
                require uint8(idx) < arg1.length
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = cd[((32 * uint8(idx)) + arg1 + 36)]
                idx = idx + 1
                continue 
            _169 = mem[(32 * metaTokens.length) + 128]
            idx = 0
            while uint8(idx) < _169:
                require metaTokens.length + uint8(idx) - 1 < arg1.length
                require uint8(idx) < mem[(32 * metaTokens.length) + 128]
                mem[(32 * uint8(idx)) + (32 * metaTokens.length) + 160] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                _169 = mem[(32 * metaTokens.length) + 128]
                idx = idx + 1
                continue 
    else:
        mem[128 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
        require baseTokens.length <= test266151307()
        mem[(32 * metaTokens.length) + 128] = baseTokens.length
        if not baseTokens.length:
            idx = 0
            while uint8(idx) < metaTokens.length - 1:
                require uint8(idx) < arg1.length
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = cd[((32 * uint8(idx)) + arg1 + 36)]
                idx = idx + 1
                continue 
            _170 = mem[(32 * metaTokens.length) + 128]
            idx = 0
            while uint8(idx) < _170:
                require metaTokens.length + uint8(idx) - 1 < arg1.length
                require uint8(idx) < mem[(32 * metaTokens.length) + 128]
                mem[(32 * uint8(idx)) + (32 * metaTokens.length) + 160] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                _170 = mem[(32 * metaTokens.length) + 128]
                idx = idx + 1
                continue 
        else:
            mem[(32 * metaTokens.length) + 160 len 32 * baseTokens.length] = call.data[calldata.size len 32 * baseTokens.length]
            idx = 0
            while uint8(idx) < metaTokens.length - 1:
                require uint8(idx) < arg1.length
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = cd[((32 * uint8(idx)) + arg1 + 36)]
                idx = idx + 1
                continue 
            _171 = mem[(32 * metaTokens.length) + 128]
            idx = 0
            while uint8(idx) < _171:
                require metaTokens.length + uint8(idx) - 1 < arg1.length
                require uint8(idx) < mem[(32 * metaTokens.length) + 128]
                mem[(32 * uint8(idx)) + (32 * metaTokens.length) + 160] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                _171 = mem[(32 * metaTokens.length) + 128]
                idx = idx + 1
                continue 
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 160] = 0xe6ab280600000000000000000000000000000000000000000000000000000000
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 196] = arg2
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 164] = 64
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 228] = mem[(32 * metaTokens.length) + 128]
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 260 len floor32(mem[(32 * metaTokens.length) + 128])] = mem[(32 * metaTokens.length) + 160 len floor32(mem[(32 * metaTokens.length) + 128])]
    require ext_code.size(baseSwapAddress)
    staticcall baseSwapAddress.0xe6ab2806 with:
            gas gas_remaining wei
           args 64, arg2, mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 228 len (32 * mem[(32 * metaTokens.length) + 128]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require metaTokens.length - 1 < mem[96]
    mem[(32 * metaTokens.length - 1) + 128] = ext_call.return_data[0]
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 160] = 0xe6ab280600000000000000000000000000000000000000000000000000000000
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 196] = arg2
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 164] = 64
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 228] = mem[96]
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 260 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    require ext_code.size(metaSwapAddress)
    staticcall metaSwapAddress.0xe6ab2806 with:
            gas gas_remaining wei
           args 64, arg2, mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 228 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function calculateRemoveLiquidity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0xf2fad2b600000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(metaSwapAddress)
    staticcall metaSwapAddress.0xf2fad2b6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[64] = (32 * _7) + ceil32(return_data.size) + 128
    _45 = mem[ceil32(return_data.size) + 96]
    require uint8(mem[ceil32(return_data.size) + 96] - 1) < mem[ceil32(return_data.size) + 96]
    _47 = mem[(32 * uint8(mem[ceil32(return_data.size) + 96] - 1)) + ceil32(return_data.size) + 128]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 0xf2fad2b600000000000000000000000000000000000000000000000000000000
    mem[(32 * _7) + ceil32(return_data.size) + 132] = _47
    require ext_code.size(baseSwapAddress)
    staticcall baseSwapAddress.0xf2fad2b6 with:
            gas gas_remaining wei
           args _47
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _7) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _7) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _51 = mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32
    require mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 <= 4294967296
    require mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + 32 <= return_data.size
    require mem[(32 * _7) + ceil32(return_data.size) + mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + 128] <= 4294967296 and mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + (32 * mem[(32 * _7) + ceil32(return_data.size) + mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + 128]) + 32 <= return_data.size
    mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _7) + ceil32(return_data.size) + mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + 128]
    _54 = mem[(32 * _7) + ceil32(return_data.size) + _51 + 128]
    mem[(32 * _7) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _7) + ceil32(return_data.size) + _51 + 128])] = mem[(32 * _7) + ceil32(return_data.size) + _51 + 160 len floor32(mem[(32 * _7) + ceil32(return_data.size) + _51 + 128])]
    require uint8(mem[ceil32(return_data.size) + 96] - 1) + mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128] <= test266151307()
    mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160] = uint8(mem[ceil32(return_data.size) + 96] - 1) + mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]
    mem[64] = (32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + (32 * uint8(mem[ceil32(return_data.size) + 96] - 1) + mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]) + 192
    if not uint8(mem[ceil32(return_data.size) + 96] - 1) + mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]:
        idx = 0
        while uint8(idx) < uint8(_45 - 1):
            require uint8(idx) < mem[ceil32(return_data.size) + 96]
            require uint8(idx) < mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * uint8(idx)) + (32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 128]
            idx = idx + 1
            continue 
        idx = 0
        while uint8(idx) < mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]:
            require uint8(idx) < mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]
            require uint8(_45 + idx - 1) < mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * uint8(_45 + idx - 1)) + (32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * uint8(idx)) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
        _139 = mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
        mem[mem[64] + 64 len floor32(mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160])] = mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160])]
        return 32, mem[mem[64] + 32 len (32 * _139) + 32]
    mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 192 len 32 * uint8(mem[ceil32(return_data.size) + 96] - 1) + mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]] = call.data[calldata.size len 32 * uint8(mem[ceil32(return_data.size) + 96] - 1) + mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]]
    idx = 0
    while uint8(idx) < uint8(_45 - 1):
        require uint8(idx) < mem[ceil32(return_data.size) + 96]
        require uint8(idx) < mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
        mem[(32 * uint8(idx)) + (32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 128]
        idx = idx + 1
        continue 
    idx = 0
    while uint8(idx) < mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]:
        require uint8(idx) < mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]
        require uint8(_45 + idx - 1) < mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
        mem[(32 * uint8(_45 + idx - 1)) + (32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * uint8(idx)) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
    _144 = mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
    mem[mem[64] + 64 len floor32(mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160])] = mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160])]
    return 32, mem[mem[64] + 32 len (32 * _144) + 32]
}

function swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < token.length
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(token[arg1]):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[416 len 4] = 0
    call token[arg1] with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(metaSwapAddress)
        call metaSwapAddress.swapUnderlying(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1 << 248, arg2 << 248, arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 < token.length
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
        if not ext_code.size(token[arg2]):
            revert with 0, 'Address: call to non-contract'
        mem[456 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[520 len 0] = 0
        call token[arg2] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[520 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
        else:
            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[488]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
        stor1 = 1
        return ext_call.return_data[0]
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        require ext_code.size(metaSwapAddress)
        call metaSwapAddress.swapUnderlying(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1 << 248, arg2 << 248, arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 < token.length
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(token[arg2]):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[ceil32(return_data.size) + 521 len 0] = 0
        call token[arg2] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 567 len 22]
        else:
            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
        stor1 = 1
        return ext_call.return_data[0]
    require return_data.size >= 32
    if not mem[324]:
        revert with 0, 
                    32,
                    42,
                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(metaSwapAddress)
    call metaSwapAddress.swapUnderlying(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg1 << 248, arg2 << 248, arg3, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 < token.length
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 563 len 26]
    if not ext_code.size(token[arg2]):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[ceil32(return_data.size) + 549 len 4] = 0
    call token[arg2] with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 521 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 567 len 22]
        stor1 = 1
        return ext_call.return_data[0]
    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 489]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    stor1 = 1
    return ext_call.return_data[0], 
           mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(metaLPTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call metaLPTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if arg2 < uint8(metaTokens.length - 1):
            require ext_code.size(metaSwapAddress)
            call metaSwapAddress.0x3e3a1560 with:
                 gas gas_remaining wei
                args arg1, arg2 << 248, arg3, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg2 < metaTokens.length
            require ext_code.size(metaTokens[arg2].field_0)
            staticcall metaTokens[arg2].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if not ext_code.size(metaTokens[arg2].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
            call metaTokens[arg2].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[392 len 24], 0, mem[520 len 4]
        else:
            if arg2 >= uint8(metaTokens.length + baseTokens.length - 1):
                revert with 0, 'out of range'
            require ext_code.size(metaSwapAddress)
            call metaSwapAddress.0x3e3a1560 with:
                 gas gas_remaining wei
                args arg1, metaTokens.length - 1 << 248, 0, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(baseSwapAddress)
            call baseSwapAddress.0x3e3a1560 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg2 + -metaTokens.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff << 248, arg3, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(arg2 + -metaTokens.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < baseTokens.length
            require ext_code.size(baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)].field_0)
            staticcall baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if not ext_code.size(baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
            call baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[392 len 24], 0, mem[520 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
        else:
            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[488]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if arg2 < uint8(metaTokens.length - 1):
                require ext_code.size(metaSwapAddress)
                call metaSwapAddress.0x3e3a1560 with:
                     gas gas_remaining wei
                    args arg1, arg2 << 248, arg3, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg2 < metaTokens.length
                require ext_code.size(metaTokens[arg2].field_0)
                staticcall metaTokens[arg2].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(metaTokens[arg2].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call metaTokens[arg2].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
            else:
                if arg2 >= uint8(metaTokens.length + baseTokens.length - 1):
                    revert with 0, 'out of range'
                require ext_code.size(metaSwapAddress)
                call metaSwapAddress.0x3e3a1560 with:
                     gas gas_remaining wei
                    args arg1, metaTokens.length - 1 << 248, 0, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(baseSwapAddress)
                call baseSwapAddress.0x3e3a1560 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg2 + -metaTokens.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff << 248, arg3, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(arg2 + -metaTokens.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < baseTokens.length
                require ext_code.size(baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)].field_0)
                staticcall baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            if arg2 < uint8(metaTokens.length - 1):
                require ext_code.size(metaSwapAddress)
                call metaSwapAddress.0x3e3a1560 with:
                     gas gas_remaining wei
                    args arg1, arg2 << 248, arg3, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg2 < metaTokens.length
                require ext_code.size(metaTokens[arg2].field_0)
                staticcall metaTokens[arg2].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(metaTokens[arg2].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call metaTokens[arg2].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                if arg2 >= uint8(metaTokens.length + baseTokens.length - 1):
                    revert with 0, 'out of range'
                require ext_code.size(metaSwapAddress)
                call metaSwapAddress.0x3e3a1560 with:
                     gas gas_remaining wei
                    args arg1, metaTokens.length - 1 << 248, 0, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(baseSwapAddress)
                call baseSwapAddress.0x3e3a1560 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg2 + -metaTokens.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff << 248, arg3, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(arg2 + -metaTokens.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < baseTokens.length
                require ext_code.size(baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)].field_0)
                staticcall baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
    stor1 = 1
    return ext_call.return_data[0]
}

function addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[96] = baseTokens.length
    if not baseTokens.length:
        mem[(32 * baseTokens.length) + 128] = metaTokens.length
        if not metaTokens.length:
            require arg1.length == baseTokens.length + metaTokens.length - 1
            require baseTokens.length <= test266151307()
            mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160] = baseTokens.length
            mem[64] = (64 * baseTokens.length) + (32 * metaTokens.length) + 192
            if not baseTokens.length:
                idx = 0
                s = 0
                while uint8(idx) < baseTokens.length:
                    require uint8(idx) < mem[96]
                    _648 = mem[(32 * uint8(idx)) + 128]
                    require metaTokens.length + uint8(idx) - 1 < arg1.length
                    if cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    _659 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                    _660 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_660 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_660 + 36 len 28]
                    mem[64] = _659 + 196
                    mem[_659 + 132] = 32
                    mem[_659 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_659 + 302 len 26]
                    if not ext_code.size(address(_648)):
                        revert with 0, 'Address: call to non-contract'
                    _731 = mem[_660]
                    t = _660 + 32
                    u = _659 + 196
                    s = mem[_660]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_659 + floor32(mem[_660]) + 196] = mem[_660 + -(mem[_660] % 32) + floor32(mem[_660]) + 64 len mem[_660] % 32] or Mask(8 * -(mem[_660] % 32) + 32, -(8 * -(mem[_660] % 32) + 32) + 256, mem[_659 + floor32(mem[_660]) + 196])
                    call address(_648).mem[_659 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_659 + 200 len _731 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_659 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_659 + 200] = 32
                            mem[_659 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _659 + 264] = mem[idx + _659 + 164]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _659 + -mem[64] + 296
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_659 + 306 len 22]
                        mem[_659 + 200] = this.address
                        require ext_code.size(address(_648))
                        staticcall address(_648).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_659 + 196] = ext_call.return_data[0]
                    else:
                        mem[64] = _659 + ceil32(return_data.size) + 197
                        mem[_659 + 196] = return_data.size
                        mem[_659 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_659 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_659 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _659 + ceil32(return_data.size) + 265] = mem[idx + _659 + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_659 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_659 + 228]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_659 + ceil32(return_data.size) + 307 len 22]
                        mem[_659 + ceil32(return_data.size) + 201] = this.address
                        require ext_code.size(address(_648))
                        staticcall address(_648).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_659 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[(32 * uint8(idx)) + (32 * baseTokens.length) + (32 * metaTokens.length) + 192] = ext_call.return_data[0]
                    idx = idx + 1
                    s = 1
                    continue 
                if not s:
                    require metaTokens.length <= test266151307()
                    _653 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if not metaTokens.length:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _1813 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _1844 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _1845 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1845 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1845 + 36 len 28]
                                mem[64] = _1844 + 196
                                mem[_1844 + 132] = 32
                                mem[_1844 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1844 + 302 len 26]
                                if not ext_code.size(address(_1813)):
                                    revert with 0, 'Address: call to non-contract'
                                _2011 = mem[_1845]
                                t = _1845 + 32
                                u = mem[64]
                                s = mem[_1845]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_1845])] = mem[_1845 + floor32(mem[_1845]) + -(mem[_1845] % 32) + 64 len mem[_1845] % 32] or Mask(8 * -(mem[_1845] % 32) + 32, -(8 * -(mem[_1845] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1845])])
                                call address(_1813).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2011 + _1844 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _4326 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_1844 + 132]
                                        _4328 = mem[_1844 + 132]
                                        idx = 0
                                        while idx < _4328:
                                            mem[idx + _4326 + 68] = mem[idx + _1844 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _4328 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _4328 + _4326 + -mem[64] + 68
                                        mem[floor32(_4328) + _4326 + 68] = mem[floor32(_4328) + _4326 + -(_4328 % 32) + 100 len _4328 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_4328) + _4326 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _4205 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4205] = return_data.size
                                    mem[_4205 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4330 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_1844 + 132]
                                        _4332 = mem[_1844 + 132]
                                        idx = 0
                                        while idx < _4332:
                                            mem[idx + _4330 + 68] = mem[idx + _1844 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _4332 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _4332 + _4330 + -mem[64] + 68
                                        mem[floor32(_4332) + _4330 + 68] = mem[floor32(_4332) + _4330 + -(_4332 % 32) + 100 len _4332 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_4332) + _4330 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_4205 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_1813))
                                staticcall address(_1813).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_653]
                                mem[(32 * uint8(idx)) + _653 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_653]
                        mem[(32 * metaTokens.length - 1) + _653 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_653]
                        _1812 = mem[_653]
                        mem[mem[64] + 132 len floor32(mem[_653])] = mem[_653 + 32 len floor32(mem[_653])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _1812) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4281 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _4282 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_4281 + 100] = 32
                        mem[_4281 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4281 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _4582 = mem[_4282]
                        mem[_4281 + 164 len floor32(mem[_4282])] = mem[_4282 + 32 len floor32(mem[_4282])]
                        mem[_4281 + floor32(mem[_4282]) + -(mem[_4282] % 32) + 196 len mem[_4282] % 32] = mem[_4282 + floor32(mem[_4282]) + -(mem[_4282] % 32) + 64 len mem[_4282] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_4281 + 168 len _4582 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_4281 + 274 len 22]
                        else:
                            mem[_4281 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_4281 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_4281 + ceil32(return_data.size) + 275 len 22]
                    else:
                        mem[_653 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _1817 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _1847 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _1848 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1848 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1848 + 36 len 28]
                                mem[64] = _1847 + 196
                                mem[_1847 + 132] = 32
                                mem[_1847 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1847 + 302 len 26]
                                if not ext_code.size(address(_1817)):
                                    revert with 0, 'Address: call to non-contract'
                                _2017 = mem[_1848]
                                t = _1848 + 32
                                u = mem[64]
                                s = mem[_1848]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_1848])] = mem[_1848 + floor32(mem[_1848]) + -(mem[_1848] % 32) + 64 len mem[_1848] % 32] or Mask(8 * -(mem[_1848] % 32) + 32, -(8 * -(mem[_1848] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1848])])
                                call address(_1817).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2017 + _1847 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _4335 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_1847 + 132]
                                        _4337 = mem[_1847 + 132]
                                        idx = 0
                                        while idx < _4337:
                                            mem[idx + _4335 + 68] = mem[idx + _1847 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _4337 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _4337 + _4335 + -mem[64] + 68
                                        mem[floor32(_4337) + _4335 + 68] = mem[floor32(_4337) + _4335 + -(_4337 % 32) + 100 len _4337 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_4337) + _4335 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _4206 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4206] = return_data.size
                                    mem[_4206 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4339 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_1847 + 132]
                                        _4341 = mem[_1847 + 132]
                                        idx = 0
                                        while idx < _4341:
                                            mem[idx + _4339 + 68] = mem[idx + _1847 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _4341 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _4341 + _4339 + -mem[64] + 68
                                        mem[floor32(_4341) + _4339 + 68] = mem[floor32(_4341) + _4339 + -(_4341 % 32) + 100 len _4341 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_4341) + _4339 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_4206 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_1817))
                                staticcall address(_1817).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_653]
                                mem[(32 * uint8(idx)) + _653 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_653]
                        mem[(32 * metaTokens.length - 1) + _653 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_653]
                        _1816 = mem[_653]
                        mem[mem[64] + 132 len floor32(mem[_653])] = mem[_653 + 32 len floor32(mem[_653])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _1816) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4286 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _4287 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_4286 + 100] = 32
                        mem[_4286 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4286 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _4594 = mem[_4287]
                        mem[_4286 + 164 len floor32(mem[_4287])] = mem[_4287 + 32 len floor32(mem[_4287])]
                        mem[_4286 + floor32(mem[_4287]) + -(mem[_4287] % 32) + 196 len mem[_4287] % 32] = mem[_4287 + floor32(mem[_4287]) + -(mem[_4287] % 32) + 64 len mem[_4287] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_4286 + 168 len _4594 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_4286 + 274 len 22]
                        else:
                            mem[_4286 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_4286 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_4286 + ceil32(return_data.size) + 275 len 22]
                else:
                    mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = arg3
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    _647 = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[mem[64] + 132 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 192 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])]
                    require ext_code.size(baseSwapAddress)
                    call baseSwapAddress.0x4d49e87d with:
                         gas gas_remaining wei
                        args 96, 0, arg3, mem[mem[64] + 100 len (32 * _647) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require metaTokens.length <= test266151307()
                    _1867 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if not metaTokens.length:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _4210 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _4291 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _4292 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_4292 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_4292 + 36 len 28]
                                mem[64] = _4291 + 196
                                mem[_4291 + 132] = 32
                                mem[_4291 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4291 + 302 len 26]
                                if not ext_code.size(address(_4210)):
                                    revert with 0, 'Address: call to non-contract'
                                _4608 = mem[_4292]
                                t = _4292 + 32
                                u = mem[64]
                                s = mem[_4292]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_4292])] = mem[_4292 + floor32(mem[_4292]) + -(mem[_4292] % 32) + 64 len mem[_4292] % 32] or Mask(8 * -(mem[_4292] % 32) + 32, -(8 * -(mem[_4292] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4292])])
                                call address(_4210).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4608 + _4291 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _7661 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_4291 + 132]
                                        _7663 = mem[_4291 + 132]
                                        idx = 0
                                        while idx < _7663:
                                            mem[idx + _7661 + 68] = mem[idx + _4291 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _7663 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _7663 + _7661 + -mem[64] + 68
                                        mem[floor32(_7663) + _7661 + 68] = mem[floor32(_7663) + _7661 + -(_7663 % 32) + 100 len _7663 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_7663) + _7661 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _7490 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_7490] = return_data.size
                                    mem[_7490 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7665 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_4291 + 132]
                                        _7667 = mem[_4291 + 132]
                                        idx = 0
                                        while idx < _7667:
                                            mem[idx + _7665 + 68] = mem[idx + _4291 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _7667 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _7667 + _7665 + -mem[64] + 68
                                        mem[floor32(_7667) + _7665 + 68] = mem[floor32(_7667) + _7665 + -(_7667 % 32) + 100 len _7667 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_7667) + _7665 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_7490 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_4210))
                                staticcall address(_4210).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_1867]
                                mem[(32 * uint8(idx)) + _1867 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_1867]
                        mem[(32 * metaTokens.length - 1) + _1867 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_1867]
                        _4209 = mem[_1867]
                        mem[mem[64] + 132 len floor32(mem[_1867])] = mem[_1867 + 32 len floor32(mem[_1867])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _4209) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _7586 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _7587 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_7586 + 100] = 32
                        mem[_7586 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7586 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _8076 = mem[_7587]
                        mem[_7586 + 164 len floor32(mem[_7587])] = mem[_7587 + 32 len floor32(mem[_7587])]
                        mem[_7586 + floor32(mem[_7587]) + -(mem[_7587] % 32) + 196 len mem[_7587] % 32] = mem[_7587 + floor32(mem[_7587]) + -(mem[_7587] % 32) + 64 len mem[_7587] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_7586 + 168 len _8076 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_7586 + 274 len 22]
                        else:
                            mem[_7586 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_7586 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_7586 + ceil32(return_data.size) + 275 len 22]
                    else:
                        mem[_1867 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _4214 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _4294 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _4295 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_4295 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_4295 + 36 len 28]
                                mem[64] = _4294 + 196
                                mem[_4294 + 132] = 32
                                mem[_4294 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4294 + 302 len 26]
                                if not ext_code.size(address(_4214)):
                                    revert with 0, 'Address: call to non-contract'
                                _4614 = mem[_4295]
                                t = _4295 + 32
                                u = mem[64]
                                s = mem[_4295]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_4295])] = mem[_4295 + floor32(mem[_4295]) + -(mem[_4295] % 32) + 64 len mem[_4295] % 32] or Mask(8 * -(mem[_4295] % 32) + 32, -(8 * -(mem[_4295] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4295])])
                                call address(_4214).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4614 + _4294 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _7670 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_4294 + 132]
                                        _7672 = mem[_4294 + 132]
                                        idx = 0
                                        while idx < _7672:
                                            mem[idx + _7670 + 68] = mem[idx + _4294 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _7672 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _7672 + _7670 + -mem[64] + 68
                                        mem[floor32(_7672) + _7670 + 68] = mem[floor32(_7672) + _7670 + -(_7672 % 32) + 100 len _7672 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_7672) + _7670 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _7491 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_7491] = return_data.size
                                    mem[_7491 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7674 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_4294 + 132]
                                        _7676 = mem[_4294 + 132]
                                        idx = 0
                                        while idx < _7676:
                                            mem[idx + _7674 + 68] = mem[idx + _4294 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _7676 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _7676 + _7674 + -mem[64] + 68
                                        mem[floor32(_7676) + _7674 + 68] = mem[floor32(_7676) + _7674 + -(_7676 % 32) + 100 len _7676 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_7676) + _7674 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_7491 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_4214))
                                staticcall address(_4214).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_1867]
                                mem[(32 * uint8(idx)) + _1867 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_1867]
                        mem[(32 * metaTokens.length - 1) + _1867 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_1867]
                        _4213 = mem[_1867]
                        mem[mem[64] + 132 len floor32(mem[_1867])] = mem[_1867 + 32 len floor32(mem[_1867])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _4213) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _7591 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _7592 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_7591 + 100] = 32
                        mem[_7591 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7591 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _8088 = mem[_7592]
                        mem[_7591 + 164 len floor32(mem[_7592])] = mem[_7592 + 32 len floor32(mem[_7592])]
                        mem[_7591 + floor32(mem[_7592]) + -(mem[_7592] % 32) + 196 len mem[_7592] % 32] = mem[_7592 + -(mem[_7592] % 32) + floor32(mem[_7592]) + 64 len mem[_7592] % 32]
                        call metaLPTokenAddress.mem[_7591 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_7591 + 168 len _8088 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_7591 + 274 len 22]
                        else:
                            mem[_7591 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_7591 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_7591 + ceil32(return_data.size) + 275 len 22]
            else:
                mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 192 len 32 * baseTokens.length] = call.data[calldata.size len 32 * baseTokens.length]
                idx = 0
                s = 0
                while uint8(idx) < baseTokens.length:
                    require uint8(idx) < mem[96]
                    _652 = mem[(32 * uint8(idx)) + 128]
                    require metaTokens.length + uint8(idx) - 1 < arg1.length
                    if cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    _662 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                    _663 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_663 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_663 + 36 len 28]
                    mem[64] = _662 + 196
                    mem[_662 + 132] = 32
                    mem[_662 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_662 + 302 len 26]
                    if not ext_code.size(address(_652)):
                        revert with 0, 'Address: call to non-contract'
                    _740 = mem[_663]
                    t = _663 + 32
                    u = mem[64]
                    s = mem[_663]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_663])] = mem[_663 + floor32(mem[_663]) + -(mem[_663] % 32) + 64 len mem[_663] % 32] or Mask(8 * -(mem[_663] % 32) + 32, -(8 * -(mem[_663] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_663])])
                    call address(_652).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _740 + _662 + -mem[64] + 192]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _1881 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_662 + 132]
                            _1883 = mem[_662 + 132]
                            idx = 0
                            while idx < _1883:
                                mem[idx + _1881 + 68] = mem[idx + _662 + 164]
                                idx = idx + 32
                                continue 
                            if not _1883 % 32:
                                revert with memory
                                  from mem[64]
                                   len _1883 + _1881 + -mem[64] + 68
                            mem[floor32(_1883) + _1881 + 68] = mem[floor32(_1883) + _1881 + -(_1883 % 32) + 100 len _1883 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_1883) + _1881 + -mem[64] + 100
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    else:
                        _1827 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1827] = return_data.size
                        mem[_1827 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1885 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_662 + 132]
                            _1887 = mem[_662 + 132]
                            idx = 0
                            while idx < _1887:
                                mem[idx + _1885 + 68] = mem[idx + _662 + 164]
                                idx = idx + 32
                                continue 
                            if not _1887 % 32:
                                revert with memory
                                  from mem[64]
                                   len _1887 + _1885 + -mem[64] + 68
                            mem[floor32(_1887) + _1885 + 68] = mem[floor32(_1887) + _1885 + -(_1887 % 32) + 100 len _1887 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_1887) + _1885 + -mem[64] + 100
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1827 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_652))
                    staticcall address(_652).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[(32 * uint8(idx)) + (32 * baseTokens.length) + (32 * metaTokens.length) + 192] = ext_call.return_data[0]
                    idx = idx + 1
                    s = 1
                    continue 
                if not s:
                    require metaTokens.length <= test266151307()
                    _654 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if not metaTokens.length:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _1822 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _1852 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _1853 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1853 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1853 + 36 len 28]
                                mem[64] = _1852 + 196
                                mem[_1852 + 132] = 32
                                mem[_1852 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1852 + 302 len 26]
                                if not ext_code.size(address(_1822)):
                                    revert with 0, 'Address: call to non-contract'
                                _2033 = mem[_1853]
                                t = _1853 + 32
                                u = _1852 + 196
                                s = mem[_1853]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1852 + floor32(mem[_1853]) + 196] = mem[_1853 + -(mem[_1853] % 32) + floor32(mem[_1853]) + 64 len mem[_1853] % 32] or Mask(8 * -(mem[_1853] % 32) + 32, -(8 * -(mem[_1853] % 32) + 32) + 256, mem[_1852 + floor32(mem[_1853]) + 196])
                                call address(_1822).mem[_1852 + 196 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1852 + 200 len _2033 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_1852 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1852 + 200] = 32
                                        mem[_1852 + 232] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1852 + 264] = mem[idx + _1852 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _1852 + -mem[64] + 296
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_1852 + 306 len 22]
                                    mem[_1852 + 200] = this.address
                                    require ext_code.size(address(_1822))
                                    staticcall address(_1822).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1852 + 196] = ext_call.return_data[0]
                                else:
                                    mem[64] = _1852 + ceil32(return_data.size) + 197
                                    mem[_1852 + 196] = return_data.size
                                    mem[_1852 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1852 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1852 + ceil32(return_data.size) + 201] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1852 + ceil32(return_data.size) + 265] = mem[idx + _1852 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1852 + ceil32(return_data.size) + 265]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1852 + 228]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_1852 + ceil32(return_data.size) + 307 len 22]
                                    mem[_1852 + ceil32(return_data.size) + 201] = this.address
                                    require ext_code.size(address(_1822))
                                    staticcall address(_1822).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1852 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_654]
                                mem[(32 * uint8(idx)) + _654 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_654]
                        mem[(32 * metaTokens.length - 1) + _654 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_654]
                        _1821 = mem[_654]
                        mem[mem[64] + 132 len floor32(mem[_654])] = mem[_654 + 32 len floor32(mem[_654])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _1821) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4297 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _4298 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_4297 + 100] = 32
                        mem[_4297 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4297 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _4618 = mem[_4298]
                        mem[_4297 + 164 len floor32(mem[_4298])] = mem[_4298 + 32 len floor32(mem[_4298])]
                        mem[_4297 + floor32(mem[_4298]) + -(mem[_4298] % 32) + 196 len mem[_4298] % 32] = mem[_4298 + -(mem[_4298] % 32) + floor32(mem[_4298]) + 64 len mem[_4298] % 32]
                        call metaLPTokenAddress.mem[_4297 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_4297 + 168 len _4618 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_4297 + 274 len 22]
                        else:
                            mem[_4297 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_4297 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_4297 + ceil32(return_data.size) + 275 len 22]
                    else:
                        mem[_654 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _1826 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _1855 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _1856 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1856 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1856 + 36 len 28]
                                mem[64] = _1855 + 196
                                mem[_1855 + 132] = 32
                                mem[_1855 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1855 + 302 len 26]
                                if not ext_code.size(address(_1826)):
                                    revert with 0, 'Address: call to non-contract'
                                _2039 = mem[_1856]
                                t = _1856 + 32
                                u = mem[64]
                                s = mem[_1856]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_1856])] = mem[_1856 + floor32(mem[_1856]) + -(mem[_1856] % 32) + 64 len mem[_1856] % 32] or Mask(8 * -(mem[_1856] % 32) + 32, -(8 * -(mem[_1856] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1856])])
                                call address(_1826).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2039 + _1855 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _4357 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_1855 + 132]
                                        _4359 = mem[_1855 + 132]
                                        idx = 0
                                        while idx < _4359:
                                            mem[idx + _4357 + 68] = mem[idx + _1855 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _4359 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _4359 + _4357 + -mem[64] + 68
                                        mem[floor32(_4359) + _4357 + 68] = mem[floor32(_4359) + _4357 + -(_4359 % 32) + 100 len _4359 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_4359) + _4357 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _4220 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4220] = return_data.size
                                    mem[_4220 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4361 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_1855 + 132]
                                        _4363 = mem[_1855 + 132]
                                        idx = 0
                                        while idx < _4363:
                                            mem[idx + _4361 + 68] = mem[idx + _1855 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _4363 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _4363 + _4361 + -mem[64] + 68
                                        mem[floor32(_4363) + _4361 + 68] = mem[floor32(_4363) + _4361 + -(_4363 % 32) + 100 len _4363 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_4363) + _4361 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_4220 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_1826))
                                staticcall address(_1826).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_654]
                                mem[(32 * uint8(idx)) + _654 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_654]
                        mem[(32 * metaTokens.length - 1) + _654 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_654]
                        _1825 = mem[_654]
                        mem[mem[64] + 132 len floor32(mem[_654])] = mem[_654 + 32 len floor32(mem[_654])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _1825) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4302 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _4303 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_4302 + 100] = 32
                        mem[_4302 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4302 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _4630 = mem[_4303]
                        mem[_4302 + 164 len floor32(mem[_4303])] = mem[_4303 + 32 len floor32(mem[_4303])]
                        mem[_4302 + floor32(mem[_4303]) + -(mem[_4303] % 32) + 196 len mem[_4303] % 32] = mem[_4303 + floor32(mem[_4303]) + -(mem[_4303] % 32) + 64 len mem[_4303] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_4302 + 168 len _4630 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_4302 + 274 len 22]
                        else:
                            mem[_4302 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_4302 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_4302 + ceil32(return_data.size) + 275 len 22]
                else:
                    mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = arg3
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    _651 = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[mem[64] + 132 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 192 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])]
                    require ext_code.size(baseSwapAddress)
                    call baseSwapAddress.0x4d49e87d with:
                         gas gas_remaining wei
                        args 96, 0, arg3, mem[mem[64] + 100 len (32 * _651) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require metaTokens.length <= test266151307()
                    _1880 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if not metaTokens.length:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _4224 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _4307 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _4308 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_4308 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_4308 + 36 len 28]
                                mem[64] = _4307 + 196
                                mem[_4307 + 132] = 32
                                mem[_4307 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4307 + 302 len 26]
                                if not ext_code.size(address(_4224)):
                                    revert with 0, 'Address: call to non-contract'
                                _4644 = mem[_4308]
                                t = _4308 + 32
                                u = mem[64]
                                s = mem[_4308]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_4308])] = mem[_4308 + floor32(mem[_4308]) + -(mem[_4308] % 32) + 64 len mem[_4308] % 32] or Mask(8 * -(mem[_4308] % 32) + 32, -(8 * -(mem[_4308] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4308])])
                                call address(_4224).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4644 + _4307 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _7695 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_4307 + 132]
                                        _7697 = mem[_4307 + 132]
                                        idx = 0
                                        while idx < _7697:
                                            mem[idx + _7695 + 68] = mem[idx + _4307 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _7697 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _7697 + _7695 + -mem[64] + 68
                                        mem[floor32(_7697) + _7695 + 68] = mem[floor32(_7697) + _7695 + -(_7697 % 32) + 100 len _7697 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_7697) + _7695 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _7502 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_7502] = return_data.size
                                    mem[_7502 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7699 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_4307 + 132]
                                        _7701 = mem[_4307 + 132]
                                        idx = 0
                                        while idx < _7701:
                                            mem[idx + _7699 + 68] = mem[idx + _4307 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _7701 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _7701 + _7699 + -mem[64] + 68
                                        mem[floor32(_7701) + _7699 + 68] = mem[floor32(_7701) + _7699 + -(_7701 % 32) + 100 len _7701 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_7701) + _7699 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_7502 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_4224))
                                staticcall address(_4224).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_1880]
                                mem[(32 * uint8(idx)) + _1880 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_1880]
                        mem[(32 * metaTokens.length - 1) + _1880 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_1880]
                        _4223 = mem[_1880]
                        mem[mem[64] + 132 len floor32(mem[_1880])] = mem[_1880 + 32 len floor32(mem[_1880])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _4223) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _7600 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _7601 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_7600 + 100] = 32
                        mem[_7600 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7600 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _8108 = mem[_7601]
                        mem[_7600 + 164 len floor32(mem[_7601])] = mem[_7601 + 32 len floor32(mem[_7601])]
                        mem[_7600 + floor32(mem[_7601]) + -(mem[_7601] % 32) + 196 len mem[_7601] % 32] = mem[_7601 + -(mem[_7601] % 32) + floor32(mem[_7601]) + 64 len mem[_7601] % 32]
                        call metaLPTokenAddress.mem[_7600 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_7600 + 168 len _8108 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_7600 + 274 len 22]
                        else:
                            mem[_7600 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_7600 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_7600 + ceil32(return_data.size) + 275 len 22]
                    else:
                        mem[_1880 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _4228 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _4310 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _4311 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_4311 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_4311 + 36 len 28]
                                mem[64] = _4310 + 196
                                mem[_4310 + 132] = 32
                                mem[_4310 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4310 + 302 len 26]
                                if not ext_code.size(address(_4228)):
                                    revert with 0, 'Address: call to non-contract'
                                _4650 = mem[_4311]
                                t = _4311 + 32
                                u = mem[64]
                                s = mem[_4311]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_4311])] = mem[_4311 + floor32(mem[_4311]) + -(mem[_4311] % 32) + 64 len mem[_4311] % 32] or Mask(8 * -(mem[_4311] % 32) + 32, -(8 * -(mem[_4311] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4311])])
                                call address(_4228).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4650 + _4310 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _7704 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_4310 + 132]
                                        _7706 = mem[_4310 + 132]
                                        idx = 0
                                        while idx < _7706:
                                            mem[idx + _7704 + 68] = mem[idx + _4310 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _7706 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _7706 + _7704 + -mem[64] + 68
                                        mem[floor32(_7706) + _7704 + 68] = mem[floor32(_7706) + _7704 + -(_7706 % 32) + 100 len _7706 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_7706) + _7704 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _7503 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_7503] = return_data.size
                                    mem[_7503 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7708 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_4310 + 132]
                                        _7710 = mem[_4310 + 132]
                                        idx = 0
                                        while idx < _7710:
                                            mem[idx + _7708 + 68] = mem[idx + _4310 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _7710 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _7710 + _7708 + -mem[64] + 68
                                        mem[floor32(_7710) + _7708 + 68] = mem[floor32(_7710) + _7708 + -(_7710 % 32) + 100 len _7710 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_7710) + _7708 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_7503 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_4228))
                                staticcall address(_4228).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_1880]
                                mem[(32 * uint8(idx)) + _1880 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_1880]
                        mem[(32 * metaTokens.length - 1) + _1880 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_1880]
                        _4227 = mem[_1880]
                        mem[mem[64] + 132 len floor32(mem[_1880])] = mem[_1880 + 32 len floor32(mem[_1880])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _4227) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _7605 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _7606 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_7605 + 100] = 32
                        mem[_7605 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7605 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _8120 = mem[_7606]
                        mem[_7605 + 164 len floor32(mem[_7606])] = mem[_7606 + 32 len floor32(mem[_7606])]
                        mem[_7605 + floor32(mem[_7606]) + -(mem[_7606] % 32) + 196 len mem[_7606] % 32] = mem[_7606 + -(mem[_7606] % 32) + floor32(mem[_7606]) + 64 len mem[_7606] % 32]
                        call metaLPTokenAddress.mem[_7605 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_7605 + 168 len _8120 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_7605 + 274 len 22]
                        else:
                            mem[_7605 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_7605 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_7605 + ceil32(return_data.size) + 275 len 22]
        else:
            mem[0] = 54
            mem[(32 * baseTokens.length) + 160] = address(metaTokens.field_0)
            idx = (32 * baseTokens.length) + 160
            s = 0
            while (32 * baseTokens.length) + (32 * metaTokens.length) + 128 > idx:
                mem[idx + 32] = metaTokens[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require arg1.length == baseTokens.length + metaTokens.length - 1
            require baseTokens.length <= test266151307()
            mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160] = baseTokens.length
            mem[64] = (64 * baseTokens.length) + (32 * metaTokens.length) + 192
            if not baseTokens.length:
                idx = 0
                s = 0
                while uint8(idx) < baseTokens.length:
                    require uint8(idx) < mem[96]
                    _4236 = mem[(32 * uint8(idx)) + 128]
                    require metaTokens.length + uint8(idx) - 1 < arg1.length
                    if cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    _4313 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                    _4314 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_4314 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_4314 + 36 len 28]
                    mem[64] = _4313 + 196
                    mem[_4313 + 132] = 32
                    mem[_4313 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4313 + 302 len 26]
                    if not ext_code.size(address(_4236)):
                        revert with 0, 'Address: call to non-contract'
                    _4659 = mem[_4314]
                    t = _4314 + 32
                    u = mem[64]
                    s = mem[_4314]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_4314])] = mem[_4314 + floor32(mem[_4314]) + -(mem[_4314] % 32) + 64 len mem[_4314] % 32] or Mask(8 * -(mem[_4314] % 32) + 32, -(8 * -(mem[_4314] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4314])])
                    call address(_4236).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4659 + _4313 + -mem[64] + 192]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _7717 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_4313 + 132]
                            _7719 = mem[_4313 + 132]
                            idx = 0
                            while idx < _7719:
                                mem[idx + _7717 + 68] = mem[idx + _4313 + 164]
                                idx = idx + 32
                                continue 
                            if not _7719 % 32:
                                revert with memory
                                  from mem[64]
                                   len _7719 + _7717 + -mem[64] + 68
                            mem[floor32(_7719) + _7717 + 68] = mem[floor32(_7719) + _7717 + -(_7719 % 32) + 100 len _7719 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_7719) + _7717 + -mem[64] + 100
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    else:
                        _7512 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_7512] = return_data.size
                        mem[_7512 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7721 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_4313 + 132]
                            _7723 = mem[_4313 + 132]
                            idx = 0
                            while idx < _7723:
                                mem[idx + _7721 + 68] = mem[idx + _4313 + 164]
                                idx = idx + 32
                                continue 
                            if not _7723 % 32:
                                revert with memory
                                  from mem[64]
                                   len _7723 + _7721 + -mem[64] + 68
                            mem[floor32(_7723) + _7721 + 68] = mem[floor32(_7723) + _7721 + -(_7723 % 32) + 100 len _7723 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_7723) + _7721 + -mem[64] + 100
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_7512 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_4236))
                    staticcall address(_4236).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[(32 * uint8(idx)) + (32 * baseTokens.length) + (32 * metaTokens.length) + 192] = ext_call.return_data[0]
                    idx = idx + 1
                    s = 1
                    continue 
                if not s:
                    require metaTokens.length <= test266151307()
                    _4257 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if not metaTokens.length:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _7507 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _7610 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _7611 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_7611 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_7611 + 36 len 28]
                                mem[64] = _7610 + 196
                                mem[_7610 + 132] = 32
                                mem[_7610 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7610 + 302 len 26]
                                if not ext_code.size(address(_7507)):
                                    revert with 0, 'Address: call to non-contract'
                                _8134 = mem[_7611]
                                t = _7611 + 32
                                u = _7610 + 196
                                s = mem[_7611]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_7610 + floor32(mem[_7611]) + 196] = mem[_7611 + -(mem[_7611] % 32) + floor32(mem[_7611]) + 64 len mem[_7611] % 32] or Mask(8 * -(mem[_7611] % 32) + 32, -(8 * -(mem[_7611] % 32) + 32) + 256, mem[_7610 + floor32(mem[_7611]) + 196])
                                call address(_7507).mem[_7610 + 196 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_7610 + 200 len _8134 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_7610 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_7610 + 200] = 32
                                        mem[_7610 + 232] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _7610 + 264] = mem[idx + _7610 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _7610 + -mem[64] + 296
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_7610 + 306 len 22]
                                    mem[_7610 + 200] = this.address
                                    require ext_code.size(address(_7507))
                                    staticcall address(_7507).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_7610 + 196] = ext_call.return_data[0]
                                else:
                                    mem[64] = _7610 + ceil32(return_data.size) + 197
                                    mem[_7610 + 196] = return_data.size
                                    mem[_7610 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_7610 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_7610 + ceil32(return_data.size) + 201] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _7610 + ceil32(return_data.size) + 265] = mem[idx + _7610 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_7610 + ceil32(return_data.size) + 265]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_7610 + 228]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_7610 + ceil32(return_data.size) + 307 len 22]
                                    mem[_7610 + ceil32(return_data.size) + 201] = this.address
                                    require ext_code.size(address(_7507))
                                    staticcall address(_7507).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_7610 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_4257]
                                mem[(32 * uint8(idx)) + _4257 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_4257]
                        mem[(32 * metaTokens.length - 1) + _4257 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_4257]
                        _7506 = mem[_4257]
                        mem[mem[64] + 132 len floor32(mem[_4257])] = mem[_4257 + 32 len floor32(mem[_4257])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _7506) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _11145 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _11146 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_11145 + 100] = 32
                        mem[_11145 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11145 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _11652 = mem[_11146]
                        mem[_11145 + 164 len floor32(mem[_11146])] = mem[_11146 + 32 len floor32(mem[_11146])]
                        mem[_11145 + floor32(mem[_11146]) + -(mem[_11146] % 32) + 196 len mem[_11146] % 32] = mem[_11146 + -(mem[_11146] % 32) + floor32(mem[_11146]) + 64 len mem[_11146] % 32]
                        call metaLPTokenAddress.mem[_11145 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_11145 + 168 len _11652 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var51001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11145 + 274 len 22]
                        else:
                            mem[_11145 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var51001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_11145 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11145 + ceil32(return_data.size) + 275 len 22]
                    else:
                        mem[_4257 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _7511 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _7613 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _7614 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_7614 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_7614 + 36 len 28]
                                mem[64] = _7613 + 196
                                mem[_7613 + 132] = 32
                                mem[_7613 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7613 + 302 len 26]
                                if not ext_code.size(address(_7511)):
                                    revert with 0, 'Address: call to non-contract'
                                _8140 = mem[_7614]
                                t = _7614 + 32
                                u = mem[64]
                                s = mem[_7614]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_7614])] = mem[_7614 + floor32(mem[_7614]) + -(mem[_7614] % 32) + 64 len mem[_7614] % 32] or Mask(8 * -(mem[_7614] % 32) + 32, -(8 * -(mem[_7614] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_7614])])
                                call address(_7511).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _8140 + _7613 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _11257 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_7613 + 132]
                                        _11259 = mem[_7613 + 132]
                                        idx = 0
                                        while idx < _11259:
                                            mem[idx + _11257 + 68] = mem[idx + _7613 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _11259 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _11259 + _11257 + -mem[64] + 68
                                        mem[floor32(_11259) + _11257 + 68] = mem[floor32(_11259) + _11257 + -(_11259 % 32) + 100 len _11259 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_11259) + _11257 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _11012 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_11012] = return_data.size
                                    mem[_11012 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11261 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_7613 + 132]
                                        _11263 = mem[_7613 + 132]
                                        idx = 0
                                        while idx < _11263:
                                            mem[idx + _11261 + 68] = mem[idx + _7613 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _11263 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _11263 + _11261 + -mem[64] + 68
                                        mem[floor32(_11263) + _11261 + 68] = mem[floor32(_11263) + _11261 + -(_11263 % 32) + 100 len _11263 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_11263) + _11261 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_11012 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_7511))
                                staticcall address(_7511).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_4257]
                                mem[(32 * uint8(idx)) + _4257 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_4257]
                        mem[(32 * metaTokens.length - 1) + _4257 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_4257]
                        _7510 = mem[_4257]
                        mem[mem[64] + 132 len floor32(mem[_4257])] = mem[_4257 + 32 len floor32(mem[_4257])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _7510) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _11150 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _11151 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_11150 + 100] = 32
                        mem[_11150 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11150 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _11664 = mem[_11151]
                        mem[_11150 + 164 len floor32(mem[_11151])] = mem[_11151 + 32 len floor32(mem[_11151])]
                        mem[_11150 + floor32(mem[_11151]) + -(mem[_11151] % 32) + 196 len mem[_11151] % 32] = mem[_11151 + floor32(mem[_11151]) + -(mem[_11151] % 32) + 64 len mem[_11151] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_11150 + 168 len _11664 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11150 + 274 len 22]
                        else:
                            mem[_11150 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_11150 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11150 + ceil32(return_data.size) + 275 len 22]
                else:
                    mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = arg3
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    _4235 = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[mem[64] + 132 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 192 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])]
                    require ext_code.size(baseSwapAddress)
                    call baseSwapAddress.0x4d49e87d with:
                         gas gas_remaining wei
                        args 96, 0, arg3, mem[mem[64] + 100 len (32 * _4235) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require metaTokens.length <= test266151307()
                    _7716 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if not metaTokens.length:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _11016 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _11155 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _11156 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_11156 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_11156 + 36 len 28]
                                mem[64] = _11155 + 196
                                mem[_11155 + 132] = 32
                                mem[_11155 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11155 + 302 len 26]
                                if not ext_code.size(address(_11016)):
                                    revert with 0, 'Address: call to non-contract'
                                _11678 = mem[_11156]
                                t = _11156 + 32
                                u = mem[64]
                                s = mem[_11156]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_11156])] = mem[_11156 + floor32(mem[_11156]) + -(mem[_11156] % 32) + 64 len mem[_11156] % 32] or Mask(8 * -(mem[_11156] % 32) + 32, -(8 * -(mem[_11156] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_11156])])
                                call address(_11016).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _11678 + _11155 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _14472 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_11155 + 132]
                                        _14474 = mem[_11155 + 132]
                                        idx = 0
                                        while idx < _14474:
                                            mem[idx + _14472 + 68] = mem[idx + _11155 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _14474 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _14474 + _14472 + -mem[64] + 68
                                        mem[floor32(_14474) + _14472 + 68] = mem[floor32(_14474) + _14472 + -(_14474 % 32) + 100 len _14474 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_14474) + _14472 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _14275 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_14275] = return_data.size
                                    mem[_14275 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _14476 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_11155 + 132]
                                        _14478 = mem[_11155 + 132]
                                        idx = 0
                                        while idx < _14478:
                                            mem[idx + _14476 + 68] = mem[idx + _11155 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _14478 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _14478 + _14476 + -mem[64] + 68
                                        mem[floor32(_14478) + _14476 + 68] = mem[floor32(_14478) + _14476 + -(_14478 % 32) + 100 len _14478 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_14478) + _14476 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_14275 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_11016))
                                staticcall address(_11016).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_7716]
                                mem[(32 * uint8(idx)) + _7716 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_7716]
                        mem[(32 * metaTokens.length - 1) + _7716 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_7716]
                        _11015 = mem[_7716]
                        mem[mem[64] + 132 len floor32(mem[_7716])] = mem[_7716 + 32 len floor32(mem[_7716])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _11015) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _14387 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _14388 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_14387 + 100] = 32
                        mem[_14387 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_14387 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _14946 = mem[_14388]
                        mem[_14387 + 164 len floor32(mem[_14388])] = mem[_14388 + 32 len floor32(mem[_14388])]
                        idx = _14388 + floor32(mem[_14388]) + 32
                        s = _14387 + floor32(mem[_14388]) + 164
                        mem[_14387 + floor32(mem[_14388]) + -(mem[_14388] % 32) + 196 len mem[_14388] % 32] = mem[_14388 + -(mem[_14388] % 32) + floor32(mem[_14388]) + 64 len mem[_14388] % 32]
                        call metaLPTokenAddress.mem[_14387 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_14387 + 168 len _14946 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var58001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14387 + 274 len 22]
                        else:
                            mem[_14387 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var58001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_14387 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14387 + ceil32(return_data.size) + 275 len 22]
                    else:
                        mem[_7716 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _11020 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _11158 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _11159 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_11159 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_11159 + 36 len 28]
                                mem[64] = _11158 + 196
                                mem[_11158 + 132] = 32
                                mem[_11158 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11158 + 302 len 26]
                                if not ext_code.size(address(_11020)):
                                    revert with 0, 'Address: call to non-contract'
                                _11684 = mem[_11159]
                                t = _11159 + 32
                                u = mem[64]
                                s = mem[_11159]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_11159])] = mem[_11159 + floor32(mem[_11159]) + -(mem[_11159] % 32) + 64 len mem[_11159] % 32] or Mask(8 * -(mem[_11159] % 32) + 32, -(8 * -(mem[_11159] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_11159])])
                                call address(_11020).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _11684 + _11158 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _14481 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_11158 + 132]
                                        _14483 = mem[_11158 + 132]
                                        idx = 0
                                        while idx < _14483:
                                            mem[idx + _14481 + 68] = mem[idx + _11158 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _14483 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _14483 + _14481 + -mem[64] + 68
                                        mem[floor32(_14483) + _14481 + 68] = mem[floor32(_14483) + _14481 + -(_14483 % 32) + 100 len _14483 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_14483) + _14481 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _14276 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_14276] = return_data.size
                                    mem[_14276 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _14485 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_11158 + 132]
                                        _14487 = mem[_11158 + 132]
                                        idx = 0
                                        while idx < _14487:
                                            mem[idx + _14485 + 68] = mem[idx + _11158 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _14487 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _14487 + _14485 + -mem[64] + 68
                                        mem[floor32(_14487) + _14485 + 68] = mem[floor32(_14487) + _14485 + -(_14487 % 32) + 100 len _14487 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_14487) + _14485 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_14276 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_11020))
                                staticcall address(_11020).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_7716]
                                mem[(32 * uint8(idx)) + _7716 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_7716]
                        mem[(32 * metaTokens.length - 1) + _7716 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_7716]
                        _11019 = mem[_7716]
                        mem[mem[64] + 132 len floor32(mem[_7716])] = mem[_7716 + 32 len floor32(mem[_7716])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _11019) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _14392 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _14393 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_14392 + 100] = 32
                        mem[_14392 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_14392 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _14958 = mem[_14393]
                        mem[_14392 + 164 len floor32(mem[_14393])] = mem[_14393 + 32 len floor32(mem[_14393])]
                        var51001 = _14393 + floor32(mem[_14393]) + 32
                        var51002 = _14392 + floor32(mem[_14393]) + 164
                        mem[_14392 + floor32(mem[_14393]) + -(mem[_14393] % 32) + 196 len mem[_14393] % 32] = mem[_14393 + floor32(mem[_14393]) + -(mem[_14393] % 32) + 64 len mem[_14393] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_14392 + 168 len _14958 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14392 + 274 len 22]
                        else:
                            mem[_14392 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_14392 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14392 + ceil32(return_data.size) + 275 len 22]
            else:
                mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 192 len 32 * baseTokens.length] = call.data[calldata.size len 32 * baseTokens.length]
                idx = 0
                s = 0
                while uint8(idx) < baseTokens.length:
                    require uint8(idx) < mem[96]
                    _4240 = mem[(32 * uint8(idx)) + 128]
                    require metaTokens.length + uint8(idx) - 1 < arg1.length
                    if cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    _4316 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                    _4317 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_4317 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_4317 + 36 len 28]
                    mem[64] = _4316 + 196
                    mem[_4316 + 132] = 32
                    mem[_4316 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4316 + 302 len 26]
                    if not ext_code.size(address(_4240)):
                        revert with 0, 'Address: call to non-contract'
                    _4668 = mem[_4317]
                    t = _4317 + 32
                    u = _4316 + 196
                    s = mem[_4317]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_4316 + floor32(mem[_4317]) + 196] = mem[_4317 + -(mem[_4317] % 32) + floor32(mem[_4317]) + 64 len mem[_4317] % 32] or Mask(8 * -(mem[_4317] % 32) + 32, -(8 * -(mem[_4317] % 32) + 32) + 256, mem[_4316 + floor32(mem[_4317]) + 196])
                    call address(_4240).mem[_4316 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_4316 + 200 len _4668 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_4316 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_4316 + 200] = 32
                            mem[_4316 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _4316 + 264] = mem[idx + _4316 + 164]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _4316 + -mem[64] + 296
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4316 + 306 len 22]
                        mem[_4316 + 200] = this.address
                        require ext_code.size(address(_4240))
                        staticcall address(_4240).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_4316 + 196] = ext_call.return_data[0]
                    else:
                        mem[64] = _4316 + ceil32(return_data.size) + 197
                        mem[_4316 + 196] = return_data.size
                        mem[_4316 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_4316 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_4316 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _4316 + ceil32(return_data.size) + 265] = mem[idx + _4316 + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_4316 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_4316 + 228]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4316 + ceil32(return_data.size) + 307 len 22]
                        mem[_4316 + ceil32(return_data.size) + 201] = this.address
                        require ext_code.size(address(_4240))
                        staticcall address(_4240).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_4316 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[(32 * uint8(idx)) + (32 * baseTokens.length) + (32 * metaTokens.length) + 192] = ext_call.return_data[0]
                    idx = idx + 1
                    s = 1
                    continue 
                if not s:
                    require metaTokens.length <= test266151307()
                    _4258 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if not metaTokens.length:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _7516 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _7618 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _7619 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_7619 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_7619 + 36 len 28]
                                mem[64] = _7618 + 196
                                mem[_7618 + 132] = 32
                                mem[_7618 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7618 + 302 len 26]
                                if not ext_code.size(address(_7516)):
                                    revert with 0, 'Address: call to non-contract'
                                _8156 = mem[_7619]
                                t = _7619 + 32
                                u = mem[64]
                                s = mem[_7619]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_7619])] = mem[_7619 + floor32(mem[_7619]) + -(mem[_7619] % 32) + 64 len mem[_7619] % 32] or Mask(8 * -(mem[_7619] % 32) + 32, -(8 * -(mem[_7619] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_7619])])
                                call address(_7516).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _8156 + _7618 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _11270 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_7618 + 132]
                                        _11272 = mem[_7618 + 132]
                                        idx = 0
                                        while idx < _11272:
                                            mem[idx + _11270 + 68] = mem[idx + _7618 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _11272 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _11272 + _11270 + -mem[64] + 68
                                        mem[floor32(_11272) + _11270 + 68] = mem[floor32(_11272) + _11270 + -(_11272 % 32) + 100 len _11272 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_11272) + _11270 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _11025 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_11025] = return_data.size
                                    mem[_11025 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11274 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_7618 + 132]
                                        _11276 = mem[_7618 + 132]
                                        idx = 0
                                        while idx < _11276:
                                            mem[idx + _11274 + 68] = mem[idx + _7618 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _11276 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _11276 + _11274 + -mem[64] + 68
                                        mem[floor32(_11276) + _11274 + 68] = mem[floor32(_11276) + _11274 + -(_11276 % 32) + 100 len _11276 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_11276) + _11274 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_11025 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_7516))
                                staticcall address(_7516).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_4258]
                                mem[(32 * uint8(idx)) + _4258 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_4258]
                        mem[(32 * metaTokens.length - 1) + _4258 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_4258]
                        _7515 = mem[_4258]
                        mem[mem[64] + 132 len floor32(mem[_4258])] = mem[_4258 + 32 len floor32(mem[_4258])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _7515) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _11161 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _11162 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_11161 + 100] = 32
                        mem[_11161 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11161 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _11688 = mem[_11162]
                        mem[_11161 + 164 len floor32(mem[_11162])] = mem[_11162 + 32 len floor32(mem[_11162])]
                        mem[_11161 + floor32(mem[_11162]) + -(mem[_11162] % 32) + 196 len mem[_11162] % 32] = mem[_11162 + floor32(mem[_11162]) + -(mem[_11162] % 32) + 64 len mem[_11162] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_11161 + 168 len _11688 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11161 + 274 len 22]
                        else:
                            mem[_11161 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_11161 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11161 + ceil32(return_data.size) + 275 len 22]
                    else:
                        mem[_4258 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _7520 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _7621 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _7622 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_7622 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_7622 + 36 len 28]
                                mem[64] = _7621 + 196
                                mem[_7621 + 132] = 32
                                mem[_7621 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7621 + 302 len 26]
                                if not ext_code.size(address(_7520)):
                                    revert with 0, 'Address: call to non-contract'
                                _8162 = mem[_7622]
                                t = _7622 + 32
                                u = _7621 + 196
                                s = mem[_7622]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_7621 + floor32(mem[_7622]) + 196] = mem[_7622 + -(mem[_7622] % 32) + floor32(mem[_7622]) + 64 len mem[_7622] % 32] or Mask(8 * -(mem[_7622] % 32) + 32, -(8 * -(mem[_7622] % 32) + 32) + 256, mem[_7621 + floor32(mem[_7622]) + 196])
                                call address(_7520).mem[_7621 + 196 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_7621 + 200 len _8162 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_7621 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_7621 + 200] = 32
                                        mem[_7621 + 232] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _7621 + 264] = mem[idx + _7621 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _7621 + -mem[64] + 296
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_7621 + 306 len 22]
                                    mem[_7621 + 200] = this.address
                                    require ext_code.size(address(_7520))
                                    staticcall address(_7520).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_7621 + 196] = ext_call.return_data[0]
                                else:
                                    mem[64] = _7621 + ceil32(return_data.size) + 197
                                    mem[_7621 + 196] = return_data.size
                                    mem[_7621 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_7621 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_7621 + ceil32(return_data.size) + 201] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _7621 + ceil32(return_data.size) + 265] = mem[idx + _7621 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_7621 + ceil32(return_data.size) + 265]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_7621 + 228]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_7621 + ceil32(return_data.size) + 307 len 22]
                                    mem[_7621 + ceil32(return_data.size) + 201] = this.address
                                    require ext_code.size(address(_7520))
                                    staticcall address(_7520).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_7621 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_4258]
                                mem[(32 * uint8(idx)) + _4258 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_4258]
                        mem[(32 * metaTokens.length - 1) + _4258 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_4258]
                        _7519 = mem[_4258]
                        mem[mem[64] + 132 len floor32(mem[_4258])] = mem[_4258 + 32 len floor32(mem[_4258])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _7519) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _11166 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _11167 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_11166 + 100] = 32
                        mem[_11166 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11166 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _11700 = mem[_11167]
                        mem[_11166 + 164 len floor32(mem[_11167])] = mem[_11167 + 32 len floor32(mem[_11167])]
                        mem[_11166 + floor32(mem[_11167]) + -(mem[_11167] % 32) + 196 len mem[_11167] % 32] = mem[_11167 + floor32(mem[_11167]) + -(mem[_11167] % 32) + 64 len mem[_11167] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_11166 + 168 len _11700 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11166 + 274 len 22]
                        else:
                            mem[_11166 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_11166 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11166 + ceil32(return_data.size) + 275 len 22]
                else:
                    mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = arg3
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    _4239 = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[mem[64] + 132 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 192 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])]
                    require ext_code.size(baseSwapAddress)
                    call baseSwapAddress.0x4d49e87d with:
                         gas gas_remaining wei
                        args 96, 0, arg3, mem[mem[64] + 100 len (32 * _4239) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require metaTokens.length <= test266151307()
                    _7729 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if metaTokens.length:
                        mem[_7729 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _11034 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _11174 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _11175 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_11175 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_11175 + 36 len 28]
                                mem[64] = _11174 + 196
                                mem[_11174 + 132] = 32
                                mem[_11174 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11174 + 302 len 26]
                                if not ext_code.size(address(_11034)):
                                    revert with 0, 'Address: call to non-contract'
                                _11720 = mem[_11175]
                                t = _11175 + 32
                                u = _11174 + 196
                                s = mem[_11175]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_11174 + floor32(mem[_11175]) + 196] = mem[_11175 + -(mem[_11175] % 32) + floor32(mem[_11175]) + 64 len mem[_11175] % 32] or Mask(8 * -(mem[_11175] % 32) + 32, -(8 * -(mem[_11175] % 32) + 32) + 256, mem[_11174 + floor32(mem[_11175]) + 196])
                                call address(_11034).mem[_11174 + 196 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_11174 + 200 len _11720 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_11174 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11174 + 200] = 32
                                        mem[_11174 + 232] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _11174 + 264] = mem[idx + _11174 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _11174 + -mem[64] + 296
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_11174 + 306 len 22]
                                    mem[_11174 + 200] = this.address
                                    require ext_code.size(address(_11034))
                                    staticcall address(_11034).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_11174 + 196] = ext_call.return_data[0]
                                else:
                                    mem[64] = _11174 + ceil32(return_data.size) + 197
                                    mem[_11174 + 196] = return_data.size
                                    mem[_11174 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_11174 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11174 + ceil32(return_data.size) + 201] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _11174 + ceil32(return_data.size) + 265] = mem[idx + _11174 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_11174 + ceil32(return_data.size) + 265]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_11174 + 228]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_11174 + ceil32(return_data.size) + 307 len 22]
                                    mem[_11174 + ceil32(return_data.size) + 201] = this.address
                                    require ext_code.size(address(_11034))
                                    staticcall address(_11034).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_11174 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_7729]
                                mem[(32 * uint8(idx)) + _7729 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_7729]
                        mem[(32 * metaTokens.length - 1) + _7729 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_7729]
                        _11033 = mem[_7729]
                        mem[mem[64] + 132 len floor32(mem[_7729])] = mem[_7729 + 32 len floor32(mem[_7729])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _11033) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _14406 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _14407 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_14406 + 100] = 32
                        mem[_14406 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_14406 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _14990 = mem[_14407]
                        mem[_14406 + 164 len floor32(mem[_14407])] = mem[_14407 + 32 len floor32(mem[_14407])]
                        mem[_14406 + floor32(mem[_14407]) + -(mem[_14407] % 32) + 196 len mem[_14407] % 32] = mem[_14407 + floor32(mem[_14407]) + -(mem[_14407] % 32) + 64 len mem[_14407] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_14406 + 168 len _14990 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14406 + 274 len 22]
                        else:
                            mem[_14406 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_14406 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14406 + ceil32(return_data.size) + 275 len 22]
                    else:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _11030 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _11171 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _11172 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_11172 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_11172 + 36 len 28]
                                mem[64] = _11171 + 196
                                mem[_11171 + 132] = 32
                                mem[_11171 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11171 + 302 len 26]
                                if not ext_code.size(address(_11030)):
                                    revert with 0, 'Address: call to non-contract'
                                _11714 = mem[_11172]
                                t = _11172 + 32
                                u = _11171 + 196
                                s = mem[_11172]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_11171 + floor32(mem[_11172]) + 196] = mem[_11172 + -(mem[_11172] % 32) + floor32(mem[_11172]) + 64 len mem[_11172] % 32] or Mask(8 * -(mem[_11172] % 32) + 32, -(8 * -(mem[_11172] % 32) + 32) + 256, mem[_11171 + floor32(mem[_11172]) + 196])
                                call address(_11030).mem[_11171 + 196 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_11171 + 200 len _11714 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_11171 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11171 + 200] = 32
                                        mem[_11171 + 232] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _11171 + 264] = mem[idx + _11171 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _11171 + -mem[64] + 296
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_11171 + 306 len 22]
                                    mem[_11171 + 200] = this.address
                                    require ext_code.size(address(_11030))
                                    staticcall address(_11030).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_11171 + 196] = ext_call.return_data[0]
                                else:
                                    mem[64] = _11171 + ceil32(return_data.size) + 197
                                    mem[_11171 + 196] = return_data.size
                                    mem[_11171 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_11171 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11171 + ceil32(return_data.size) + 201] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _11171 + ceil32(return_data.size) + 265] = mem[idx + _11171 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_11171 + ceil32(return_data.size) + 265]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_11171 + 228]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_11171 + ceil32(return_data.size) + 307 len 22]
                                    mem[_11171 + ceil32(return_data.size) + 201] = this.address
                                    require ext_code.size(address(_11030))
                                    staticcall address(_11030).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_11171 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_7729]
                                mem[(32 * uint8(idx)) + _7729 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_7729]
                        mem[(32 * metaTokens.length - 1) + _7729 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_7729]
                        _11029 = mem[_7729]
                        mem[mem[64] + 132 len floor32(mem[_7729])] = mem[_7729 + 32 len floor32(mem[_7729])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _11029) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _14401 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _14402 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_14401 + 100] = 32
                        mem[_14401 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_14401 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _14978 = mem[_14402]
                        mem[_14401 + 164 len floor32(mem[_14402])] = mem[_14402 + 32 len floor32(mem[_14402])]
                        idx = _14402 + floor32(mem[_14402]) + 32
                        s = _14401 + floor32(mem[_14402]) + 164
                        mem[_14401 + floor32(mem[_14402]) + -(mem[_14402] % 32) + 196 len mem[_14402] % 32] = mem[_14402 + -(mem[_14402] % 32) + floor32(mem[_14402]) + 64 len mem[_14402] % 32]
                        call metaLPTokenAddress.mem[_14401 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_14401 + 168 len _14978 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14401 + 274 len 22]
                        else:
                            mem[_14401 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_14401 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14401 + ceil32(return_data.size) + 275 len 22]
    else:
        mem[0] = 53
        mem[128] = address(baseTokens.field_0)
        idx = 128
        s = 0
        while (32 * baseTokens.length) + 96 > idx:
            mem[idx + 32] = baseTokens[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * baseTokens.length) + 128] = metaTokens.length
        if not metaTokens.length:
            require arg1.length == baseTokens.length + metaTokens.length - 1
            require baseTokens.length <= test266151307()
            mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160] = baseTokens.length
            mem[64] = (64 * baseTokens.length) + (32 * metaTokens.length) + 192
            if not baseTokens.length:
                idx = 0
                s = 0
                while uint8(idx) < baseTokens.length:
                    require uint8(idx) < mem[96]
                    _4244 = mem[(32 * uint8(idx)) + 128]
                    require metaTokens.length + uint8(idx) - 1 < arg1.length
                    if cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    _4319 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                    _4320 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_4320 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_4320 + 36 len 28]
                    mem[64] = _4319 + 196
                    mem[_4319 + 132] = 32
                    mem[_4319 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4319 + 302 len 26]
                    if not ext_code.size(address(_4244)):
                        revert with 0, 'Address: call to non-contract'
                    _4677 = mem[_4320]
                    t = _4320 + 32
                    u = _4319 + 196
                    s = mem[_4320]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_4319 + floor32(mem[_4320]) + 196] = mem[_4320 + -(mem[_4320] % 32) + floor32(mem[_4320]) + 64 len mem[_4320] % 32] or Mask(8 * -(mem[_4320] % 32) + 32, -(8 * -(mem[_4320] % 32) + 32) + 256, mem[_4319 + floor32(mem[_4320]) + 196])
                    call address(_4244).mem[_4319 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_4319 + 200 len _4677 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_4319 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_4319 + 200] = 32
                            mem[_4319 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _4319 + 264] = mem[idx + _4319 + 164]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _4319 + -mem[64] + 296
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4319 + 306 len 22]
                        mem[_4319 + 200] = this.address
                        require ext_code.size(address(_4244))
                        staticcall address(_4244).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_4319 + 196] = ext_call.return_data[0]
                    else:
                        mem[64] = _4319 + ceil32(return_data.size) + 197
                        mem[_4319 + 196] = return_data.size
                        mem[_4319 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_4319 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_4319 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _4319 + ceil32(return_data.size) + 265] = mem[idx + _4319 + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_4319 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_4319 + 228]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4319 + ceil32(return_data.size) + 307 len 22]
                        mem[_4319 + ceil32(return_data.size) + 201] = this.address
                        require ext_code.size(address(_4244))
                        staticcall address(_4244).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_4319 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[(32 * uint8(idx)) + (32 * baseTokens.length) + (32 * metaTokens.length) + 192] = ext_call.return_data[0]
                    idx = idx + 1
                    s = 1
                    continue 
                if not s:
                    require metaTokens.length <= test266151307()
                    _4259 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if not metaTokens.length:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _7525 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _7626 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _7627 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_7627 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_7627 + 36 len 28]
                                mem[64] = _7626 + 196
                                mem[_7626 + 132] = 32
                                mem[_7626 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7626 + 302 len 26]
                                if not ext_code.size(address(_7525)):
                                    revert with 0, 'Address: call to non-contract'
                                _8178 = mem[_7627]
                                t = _7627 + 32
                                u = _7626 + 196
                                s = mem[_7627]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_7626 + floor32(mem[_7627]) + 196] = mem[_7627 + -(mem[_7627] % 32) + floor32(mem[_7627]) + 64 len mem[_7627] % 32] or Mask(8 * -(mem[_7627] % 32) + 32, -(8 * -(mem[_7627] % 32) + 32) + 256, mem[_7626 + floor32(mem[_7627]) + 196])
                                call address(_7525).mem[_7626 + 196 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_7626 + 200 len _8178 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_7626 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_7626 + 200] = 32
                                        mem[_7626 + 232] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _7626 + 264] = mem[idx + _7626 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _7626 + -mem[64] + 296
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_7626 + 306 len 22]
                                    mem[_7626 + 200] = this.address
                                    require ext_code.size(address(_7525))
                                    staticcall address(_7525).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_7626 + 196] = ext_call.return_data[0]
                                else:
                                    mem[64] = _7626 + ceil32(return_data.size) + 197
                                    mem[_7626 + 196] = return_data.size
                                    mem[_7626 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_7626 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_7626 + ceil32(return_data.size) + 201] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _7626 + ceil32(return_data.size) + 265] = mem[idx + _7626 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_7626 + ceil32(return_data.size) + 265]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_7626 + 228]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_7626 + ceil32(return_data.size) + 307 len 22]
                                    mem[_7626 + ceil32(return_data.size) + 201] = this.address
                                    require ext_code.size(address(_7525))
                                    staticcall address(_7525).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_7626 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_4259]
                                mem[(32 * uint8(idx)) + _4259 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_4259]
                        mem[(32 * metaTokens.length - 1) + _4259 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_4259]
                        _7524 = mem[_4259]
                        mem[mem[64] + 132 len floor32(mem[_4259])] = mem[_4259 + 32 len floor32(mem[_4259])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _7524) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _11177 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _11178 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_11177 + 100] = 32
                        mem[_11177 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11177 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _11724 = mem[_11178]
                        mem[_11177 + 164 len floor32(mem[_11178])] = mem[_11178 + 32 len floor32(mem[_11178])]
                        var43001 = _11178 + floor32(mem[_11178]) + 32
                        var43002 = _11177 + floor32(mem[_11178]) + 164
                        var43003 = mem[_11178] - (32 * Mask(251, 0, mem[_11178]) >> 5)
                        mem[_11177 + floor32(mem[_11178]) + -(mem[_11178] % 32) + 196 len mem[_11178] % 32] = mem[_11178 + floor32(mem[_11178]) + -(mem[_11178] % 32) + 64 len mem[_11178] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_11177 + 168 len _11724 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var51001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11177 + 274 len 22]
                        else:
                            mem[_11177 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var51001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_11177 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11177 + ceil32(return_data.size) + 275 len 22]
                    else:
                        mem[_4259 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _7529 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _7629 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _7630 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_7630 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_7630 + 36 len 28]
                                mem[64] = _7629 + 196
                                mem[_7629 + 132] = 32
                                mem[_7629 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7629 + 302 len 26]
                                if not ext_code.size(address(_7529)):
                                    revert with 0, 'Address: call to non-contract'
                                _8184 = mem[_7630]
                                t = _7630 + 32
                                u = mem[64]
                                s = mem[_7630]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_7630])] = mem[_7630 + floor32(mem[_7630]) + -(mem[_7630] % 32) + 64 len mem[_7630] % 32] or Mask(8 * -(mem[_7630] % 32) + 32, -(8 * -(mem[_7630] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_7630])])
                                call address(_7529).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _8184 + _7629 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _11301 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_7629 + 132]
                                        _11303 = mem[_7629 + 132]
                                        idx = 0
                                        while idx < _11303:
                                            mem[idx + _11301 + 68] = mem[idx + _7629 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _11303 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _11303 + _11301 + -mem[64] + 68
                                        mem[floor32(_11303) + _11301 + 68] = mem[floor32(_11303) + _11301 + -(_11303 % 32) + 100 len _11303 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_11303) + _11301 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _11040 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_11040] = return_data.size
                                    mem[_11040 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11305 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_7629 + 132]
                                        _11307 = mem[_7629 + 132]
                                        idx = 0
                                        while idx < _11307:
                                            mem[idx + _11305 + 68] = mem[idx + _7629 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _11307 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _11307 + _11305 + -mem[64] + 68
                                        mem[floor32(_11307) + _11305 + 68] = mem[floor32(_11307) + _11305 + -(_11307 % 32) + 100 len _11307 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_11307) + _11305 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_11040 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_7529))
                                staticcall address(_7529).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_4259]
                                mem[(32 * uint8(idx)) + _4259 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_4259]
                        mem[(32 * metaTokens.length - 1) + _4259 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_4259]
                        _7528 = mem[_4259]
                        mem[mem[64] + 132 len floor32(mem[_4259])] = mem[_4259 + 32 len floor32(mem[_4259])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _7528) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _11182 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _11183 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_11182 + 100] = 32
                        mem[_11182 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11182 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _11736 = mem[_11183]
                        mem[_11182 + 164 len floor32(mem[_11183])] = mem[_11183 + 32 len floor32(mem[_11183])]
                        var44001 = _11183 + floor32(mem[_11183]) + 32
                        var44002 = _11182 + floor32(mem[_11183]) + 164
                        var44003 = mem[_11183] - (32 * Mask(251, 0, mem[_11183]) >> 5)
                        mem[_11182 + floor32(mem[_11183]) + -(mem[_11183] % 32) + 196 len mem[_11183] % 32] = mem[_11183 + -(mem[_11183] % 32) + floor32(mem[_11183]) + 64 len mem[_11183] % 32]
                        call metaLPTokenAddress.mem[_11182 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_11182 + 168 len _11736 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var52001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11182 + 274 len 22]
                        else:
                            mem[_11182 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var52001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_11182 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11182 + ceil32(return_data.size) + 275 len 22]
                else:
                    mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = arg3
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    _4243 = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[mem[64] + 132 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 192 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])]
                    require ext_code.size(baseSwapAddress)
                    call baseSwapAddress.0x4d49e87d with:
                         gas gas_remaining wei
                        args 96, 0, arg3, mem[mem[64] + 100 len (32 * _4243) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require metaTokens.length <= test266151307()
                    _7742 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if not metaTokens.length:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _11044 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _11187 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _11188 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_11188 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_11188 + 36 len 28]
                                mem[64] = _11187 + 196
                                mem[_11187 + 132] = 32
                                mem[_11187 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11187 + 302 len 26]
                                if not ext_code.size(address(_11044)):
                                    revert with 0, 'Address: call to non-contract'
                                _11750 = mem[_11188]
                                t = _11188 + 32
                                u = mem[64]
                                s = mem[_11188]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_11188])] = mem[_11188 + floor32(mem[_11188]) + -(mem[_11188] % 32) + 64 len mem[_11188] % 32] or Mask(8 * -(mem[_11188] % 32) + 32, -(8 * -(mem[_11188] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_11188])])
                                call address(_11044).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _11750 + _11187 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _14540 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_11187 + 132]
                                        _14542 = mem[_11187 + 132]
                                        idx = 0
                                        while idx < _14542:
                                            mem[idx + _14540 + 68] = mem[idx + _11187 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _14542 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _14542 + _14540 + -mem[64] + 68
                                        mem[floor32(_14542) + _14540 + 68] = mem[floor32(_14542) + _14540 + -(_14542 % 32) + 100 len _14542 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_14542) + _14540 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _14299 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_14299] = return_data.size
                                    mem[_14299 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _14544 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_11187 + 132]
                                        _14546 = mem[_11187 + 132]
                                        idx = 0
                                        while idx < _14546:
                                            mem[idx + _14544 + 68] = mem[idx + _11187 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _14546 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _14546 + _14544 + -mem[64] + 68
                                        mem[floor32(_14546) + _14544 + 68] = mem[floor32(_14546) + _14544 + -(_14546 % 32) + 100 len _14546 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_14546) + _14544 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_14299 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_11044))
                                staticcall address(_11044).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_7742]
                                mem[(32 * uint8(idx)) + _7742 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_7742]
                        mem[(32 * metaTokens.length - 1) + _7742 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_7742]
                        _11043 = mem[_7742]
                        mem[mem[64] + 132 len floor32(mem[_7742])] = mem[_7742 + 32 len floor32(mem[_7742])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _11043) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _14415 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _14416 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_14415 + 100] = 32
                        mem[_14415 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_14415 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _15010 = mem[_14416]
                        mem[_14415 + 164 len floor32(mem[_14416])] = mem[_14416 + 32 len floor32(mem[_14416])]
                        idx = _14416 + floor32(mem[_14416]) + 32
                        s = _14415 + floor32(mem[_14416]) + 164
                        var50003 = mem[_14416] - (32 * Mask(251, 0, mem[_14416]) >> 5)
                        mem[_14415 + floor32(mem[_14416]) + -(mem[_14416] % 32) + 196 len mem[_14416] % 32] = mem[_14416 + -(mem[_14416] % 32) + floor32(mem[_14416]) + 64 len mem[_14416] % 32]
                        call metaLPTokenAddress.mem[_14415 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_14415 + 168 len _15010 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var58001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14415 + 274 len 22]
                        else:
                            mem[_14415 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var58001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_14415 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14415 + ceil32(return_data.size) + 275 len 22]
                    else:
                        mem[_7742 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _11048 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _11190 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _11191 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_11191 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_11191 + 36 len 28]
                                mem[64] = _11190 + 196
                                mem[_11190 + 132] = 32
                                mem[_11190 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11190 + 302 len 26]
                                if not ext_code.size(address(_11048)):
                                    revert with 0, 'Address: call to non-contract'
                                _11756 = mem[_11191]
                                t = _11191 + 32
                                u = mem[64]
                                s = mem[_11191]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_11191])] = mem[_11191 + floor32(mem[_11191]) + -(mem[_11191] % 32) + 64 len mem[_11191] % 32] or Mask(8 * -(mem[_11191] % 32) + 32, -(8 * -(mem[_11191] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_11191])])
                                call address(_11048).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _11756 + _11190 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _14549 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_11190 + 132]
                                        _14551 = mem[_11190 + 132]
                                        idx = 0
                                        while idx < _14551:
                                            mem[idx + _14549 + 68] = mem[idx + _11190 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _14551 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _14551 + _14549 + -mem[64] + 68
                                        mem[floor32(_14551) + _14549 + 68] = mem[floor32(_14551) + _14549 + -(_14551 % 32) + 100 len _14551 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_14551) + _14549 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _14300 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_14300] = return_data.size
                                    mem[_14300 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _14553 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_11190 + 132]
                                        _14555 = mem[_11190 + 132]
                                        idx = 0
                                        while idx < _14555:
                                            mem[idx + _14553 + 68] = mem[idx + _11190 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _14555 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _14555 + _14553 + -mem[64] + 68
                                        mem[floor32(_14555) + _14553 + 68] = mem[floor32(_14555) + _14553 + -(_14555 % 32) + 100 len _14555 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_14555) + _14553 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_14300 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_11048))
                                staticcall address(_11048).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_7742]
                                mem[(32 * uint8(idx)) + _7742 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_7742]
                        mem[(32 * metaTokens.length - 1) + _7742 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_7742]
                        _11047 = mem[_7742]
                        mem[mem[64] + 132 len floor32(mem[_7742])] = mem[_7742 + 32 len floor32(mem[_7742])]
                        var37001 = floor32(_11047)
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _11047) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _14420 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _14421 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_14420 + 100] = 32
                        mem[_14420 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_14420 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _15022 = mem[_14421]
                        mem[_14420 + 164 len floor32(mem[_14421])] = mem[_14421 + 32 len floor32(mem[_14421])]
                        var51001 = _14421 + floor32(mem[_14421]) + 32
                        var51002 = _14420 + floor32(mem[_14421]) + 164
                        var51003 = mem[_14421] - (32 * Mask(251, 0, mem[_14421]) >> 5)
                        mem[_14420 + floor32(mem[_14421]) + -(mem[_14421] % 32) + 196 len mem[_14421] % 32] = mem[_14421 + floor32(mem[_14421]) + -(mem[_14421] % 32) + 64 len mem[_14421] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_14420 + 168 len _15022 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var59001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14420 + 274 len 22]
                        else:
                            mem[_14420 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var59001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_14420 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14420 + ceil32(return_data.size) + 275 len 22]
            else:
                mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 192 len 32 * baseTokens.length] = call.data[calldata.size len 32 * baseTokens.length]
                idx = 0
                s = 0
                while uint8(idx) < baseTokens.length:
                    require uint8(idx) < mem[96]
                    _4248 = mem[(32 * uint8(idx)) + 128]
                    require metaTokens.length + uint8(idx) - 1 < arg1.length
                    if cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    _4322 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                    _4323 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_4323 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_4323 + 36 len 28]
                    mem[64] = _4322 + 196
                    mem[_4322 + 132] = 32
                    mem[_4322 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4322 + 302 len 26]
                    if not ext_code.size(address(_4248)):
                        revert with 0, 'Address: call to non-contract'
                    _4686 = mem[_4323]
                    t = _4323 + 32
                    u = mem[64]
                    s = mem[_4323]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_4323])] = mem[_4323 + floor32(mem[_4323]) + -(mem[_4323] % 32) + 64 len mem[_4323] % 32] or Mask(8 * -(mem[_4323] % 32) + 32, -(8 * -(mem[_4323] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4323])])
                    call address(_4248).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4686 + _4322 + -mem[64] + 192]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _7756 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_4322 + 132]
                            _7758 = mem[_4322 + 132]
                            idx = 0
                            while idx < _7758:
                                mem[idx + _7756 + 68] = mem[idx + _4322 + 164]
                                idx = idx + 32
                                continue 
                            if not _7758 % 32:
                                revert with memory
                                  from mem[64]
                                   len _7758 + _7756 + -mem[64] + 68
                            mem[floor32(_7758) + _7756 + 68] = mem[floor32(_7758) + _7756 + -(_7758 % 32) + 100 len _7758 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_7758) + _7756 + -mem[64] + 100
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    else:
                        _7539 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_7539] = return_data.size
                        mem[_7539 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7760 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_4322 + 132]
                            _7762 = mem[_4322 + 132]
                            idx = 0
                            while idx < _7762:
                                mem[idx + _7760 + 68] = mem[idx + _4322 + 164]
                                idx = idx + 32
                                continue 
                            if not _7762 % 32:
                                revert with memory
                                  from mem[64]
                                   len _7762 + _7760 + -mem[64] + 68
                            mem[floor32(_7762) + _7760 + 68] = mem[floor32(_7762) + _7760 + -(_7762 % 32) + 100 len _7762 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_7762) + _7760 + -mem[64] + 100
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_7539 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_4248))
                    staticcall address(_4248).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[(32 * uint8(idx)) + (32 * baseTokens.length) + (32 * metaTokens.length) + 192] = ext_call.return_data[0]
                    idx = idx + 1
                    s = 1
                    continue 
                if not s:
                    require metaTokens.length <= test266151307()
                    _4260 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if not metaTokens.length:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _7534 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _7634 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _7635 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_7635 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_7635 + 36 len 28]
                                mem[64] = _7634 + 196
                                mem[_7634 + 132] = 32
                                mem[_7634 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7634 + 302 len 26]
                                if not ext_code.size(address(_7534)):
                                    revert with 0, 'Address: call to non-contract'
                                _8200 = mem[_7635]
                                t = _7635 + 32
                                u = mem[64]
                                s = mem[_7635]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_7635])] = mem[_7635 + floor32(mem[_7635]) + -(mem[_7635] % 32) + 64 len mem[_7635] % 32] or Mask(8 * -(mem[_7635] % 32) + 32, -(8 * -(mem[_7635] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_7635])])
                                call address(_7534).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _8200 + _7634 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _11314 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_7634 + 132]
                                        _11316 = mem[_7634 + 132]
                                        idx = 0
                                        while idx < _11316:
                                            mem[idx + _11314 + 68] = mem[idx + _7634 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _11316 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _11316 + _11314 + -mem[64] + 68
                                        mem[floor32(_11316) + _11314 + 68] = mem[floor32(_11316) + _11314 + -(_11316 % 32) + 100 len _11316 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_11316) + _11314 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _11053 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_11053] = return_data.size
                                    mem[_11053 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11318 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_7634 + 132]
                                        _11320 = mem[_7634 + 132]
                                        idx = 0
                                        while idx < _11320:
                                            mem[idx + _11318 + 68] = mem[idx + _7634 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _11320 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _11320 + _11318 + -mem[64] + 68
                                        mem[floor32(_11320) + _11318 + 68] = mem[floor32(_11320) + _11318 + -(_11320 % 32) + 100 len _11320 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_11320) + _11318 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_11053 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_7534))
                                staticcall address(_7534).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_4260]
                                mem[(32 * uint8(idx)) + _4260 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_4260]
                        mem[(32 * metaTokens.length - 1) + _4260 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_4260]
                        _7533 = mem[_4260]
                        mem[mem[64] + 132 len floor32(mem[_4260])] = mem[_4260 + 32 len floor32(mem[_4260])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _7533) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _11193 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _11194 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_11193 + 100] = 32
                        mem[_11193 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11193 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _11760 = mem[_11194]
                        mem[_11193 + 164 len floor32(mem[_11194])] = mem[_11194 + 32 len floor32(mem[_11194])]
                        var44001 = _11194 + floor32(mem[_11194]) + 32
                        var44002 = _11193 + floor32(mem[_11194]) + 164
                        var44003 = mem[_11194] - (32 * Mask(251, 0, mem[_11194]) >> 5)
                        mem[_11193 + floor32(mem[_11194]) + -(mem[_11194] % 32) + 196 len mem[_11194] % 32] = mem[_11194 + -(mem[_11194] % 32) + floor32(mem[_11194]) + 64 len mem[_11194] % 32]
                        call metaLPTokenAddress.mem[_11193 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_11193 + 168 len _11760 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var52001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11193 + 274 len 22]
                        else:
                            mem[_11193 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var52001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_11193 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11193 + ceil32(return_data.size) + 275 len 22]
                    else:
                        mem[_4260 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _7538 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _7637 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _7638 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_7638 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_7638 + 36 len 28]
                                mem[64] = _7637 + 196
                                mem[_7637 + 132] = 32
                                mem[_7637 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7637 + 302 len 26]
                                if not ext_code.size(address(_7538)):
                                    revert with 0, 'Address: call to non-contract'
                                _8206 = mem[_7638]
                                t = _7638 + 32
                                u = mem[64]
                                s = mem[_7638]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_7638])] = mem[_7638 + floor32(mem[_7638]) + -(mem[_7638] % 32) + 64 len mem[_7638] % 32] or Mask(8 * -(mem[_7638] % 32) + 32, -(8 * -(mem[_7638] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_7638])])
                                call address(_7538).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _8206 + _7637 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _11323 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_7637 + 132]
                                        _11325 = mem[_7637 + 132]
                                        idx = 0
                                        while idx < _11325:
                                            mem[idx + _11323 + 68] = mem[idx + _7637 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _11325 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _11325 + _11323 + -mem[64] + 68
                                        mem[floor32(_11325) + _11323 + 68] = mem[floor32(_11325) + _11323 + -(_11325 % 32) + 100 len _11325 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_11325) + _11323 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _11054 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_11054] = return_data.size
                                    mem[_11054 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11327 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_7637 + 132]
                                        _11329 = mem[_7637 + 132]
                                        idx = 0
                                        while idx < _11329:
                                            mem[idx + _11327 + 68] = mem[idx + _7637 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _11329 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _11329 + _11327 + -mem[64] + 68
                                        mem[floor32(_11329) + _11327 + 68] = mem[floor32(_11329) + _11327 + -(_11329 % 32) + 100 len _11329 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_11329) + _11327 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_11054 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_7538))
                                staticcall address(_7538).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_4260]
                                mem[(32 * uint8(idx)) + _4260 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_4260]
                        mem[(32 * metaTokens.length - 1) + _4260 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_4260]
                        _7537 = mem[_4260]
                        mem[mem[64] + 132 len floor32(mem[_4260])] = mem[_4260 + 32 len floor32(mem[_4260])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _7537) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _11198 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _11199 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_11198 + 100] = 32
                        mem[_11198 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11198 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _11772 = mem[_11199]
                        mem[_11198 + 164 len floor32(mem[_11199])] = mem[_11199 + 32 len floor32(mem[_11199])]
                        var45001 = _11199 + floor32(mem[_11199]) + 32
                        var45002 = _11198 + floor32(mem[_11199]) + 164
                        var45003 = mem[_11199] - (32 * Mask(251, 0, mem[_11199]) >> 5)
                        mem[_11198 + floor32(mem[_11199]) + -(mem[_11199] % 32) + 196 len mem[_11199] % 32] = mem[_11199 + -(mem[_11199] % 32) + floor32(mem[_11199]) + 64 len mem[_11199] % 32]
                        call metaLPTokenAddress.mem[_11198 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_11198 + 168 len _11772 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var53001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11198 + 274 len 22]
                        else:
                            mem[_11198 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var53001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_11198 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_11198 + ceil32(return_data.size) + 275 len 22]
                else:
                    mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = arg3
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    _4247 = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[mem[64] + 132 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 192 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])]
                    require ext_code.size(baseSwapAddress)
                    call baseSwapAddress.0x4d49e87d with:
                         gas gas_remaining wei
                        args 96, 0, arg3, mem[mem[64] + 100 len (32 * _4247) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require metaTokens.length <= test266151307()
                    _7755 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if not metaTokens.length:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _11058 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _11203 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _11204 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_11204 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_11204 + 36 len 28]
                                mem[64] = _11203 + 196
                                mem[_11203 + 132] = 32
                                mem[_11203 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11203 + 302 len 26]
                                if not ext_code.size(address(_11058)):
                                    revert with 0, 'Address: call to non-contract'
                                _11786 = mem[_11204]
                                t = _11204 + 32
                                u = _11203 + 196
                                s = mem[_11204]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_11203 + floor32(mem[_11204]) + 196] = mem[_11204 + -(mem[_11204] % 32) + floor32(mem[_11204]) + 64 len mem[_11204] % 32] or Mask(8 * -(mem[_11204] % 32) + 32, -(8 * -(mem[_11204] % 32) + 32) + 256, mem[_11203 + floor32(mem[_11204]) + 196])
                                call address(_11058).mem[_11203 + 196 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_11203 + 200 len _11786 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_11203 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11203 + 200] = 32
                                        mem[_11203 + 232] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _11203 + 264] = mem[idx + _11203 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _11203 + -mem[64] + 296
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_11203 + 306 len 22]
                                    mem[_11203 + 200] = this.address
                                    require ext_code.size(address(_11058))
                                    staticcall address(_11058).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_11203 + 196] = ext_call.return_data[0]
                                else:
                                    mem[64] = _11203 + ceil32(return_data.size) + 197
                                    mem[_11203 + 196] = return_data.size
                                    mem[_11203 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_11203 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11203 + ceil32(return_data.size) + 201] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _11203 + ceil32(return_data.size) + 265] = mem[idx + _11203 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_11203 + ceil32(return_data.size) + 265]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_11203 + 228]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_11203 + ceil32(return_data.size) + 307 len 22]
                                    mem[_11203 + ceil32(return_data.size) + 201] = this.address
                                    require ext_code.size(address(_11058))
                                    staticcall address(_11058).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_11203 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_7755]
                                mem[(32 * uint8(idx)) + _7755 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_7755]
                        mem[(32 * metaTokens.length - 1) + _7755 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_7755]
                        _11057 = mem[_7755]
                        mem[mem[64] + 132 len floor32(mem[_7755])] = mem[_7755 + 32 len floor32(mem[_7755])]
                        var37001 = floor32(_11057)
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _11057) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _14429 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _14430 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_14429 + 100] = 32
                        mem[_14429 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_14429 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _15042 = mem[_14430]
                        mem[_14429 + 164 len floor32(mem[_14430])] = mem[_14430 + 32 len floor32(mem[_14430])]
                        idx = _14430 + floor32(mem[_14430]) + 32
                        s = _14429 + floor32(mem[_14430]) + 164
                        var51003 = mem[_14430] - (32 * Mask(251, 0, mem[_14430]) >> 5)
                        mem[_14429 + floor32(mem[_14430]) + -(mem[_14430] % 32) + 196 len mem[_14430] % 32] = mem[_14430 + -(mem[_14430] % 32) + floor32(mem[_14430]) + 64 len mem[_14430] % 32]
                        call metaLPTokenAddress.mem[_14429 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_14429 + 168 len _15042 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var59001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14429 + 274 len 22]
                        else:
                            mem[_14429 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var59001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_14429 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14429 + ceil32(return_data.size) + 275 len 22]
                    else:
                        mem[_7755 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _11062 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _11206 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _11207 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_11207 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_11207 + 36 len 28]
                                mem[64] = _11206 + 196
                                mem[_11206 + 132] = 32
                                mem[_11206 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11206 + 302 len 26]
                                if not ext_code.size(address(_11062)):
                                    revert with 0, 'Address: call to non-contract'
                                _11792 = mem[_11207]
                                t = _11207 + 32
                                u = mem[64]
                                s = mem[_11207]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_11207])] = mem[_11207 + floor32(mem[_11207]) + -(mem[_11207] % 32) + 64 len mem[_11207] % 32] or Mask(8 * -(mem[_11207] % 32) + 32, -(8 * -(mem[_11207] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_11207])])
                                call address(_11062).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _11792 + _11206 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _14583 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_11206 + 132]
                                        _14585 = mem[_11206 + 132]
                                        idx = 0
                                        while idx < _14585:
                                            mem[idx + _14583 + 68] = mem[idx + _11206 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _14585 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _14585 + _14583 + -mem[64] + 68
                                        mem[floor32(_14585) + _14583 + 68] = mem[floor32(_14585) + _14583 + -(_14585 % 32) + 100 len _14585 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_14585) + _14583 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _14312 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_14312] = return_data.size
                                    mem[_14312 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _14587 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_11206 + 132]
                                        _14589 = mem[_11206 + 132]
                                        idx = 0
                                        while idx < _14589:
                                            mem[idx + _14587 + 68] = mem[idx + _11206 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _14589 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _14589 + _14587 + -mem[64] + 68
                                        mem[floor32(_14589) + _14587 + 68] = mem[floor32(_14589) + _14587 + -(_14589 % 32) + 100 len _14589 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_14589) + _14587 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_14312 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_11062))
                                staticcall address(_11062).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_7755]
                                mem[(32 * uint8(idx)) + _7755 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_7755]
                        mem[(32 * metaTokens.length - 1) + _7755 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_7755]
                        _11061 = mem[_7755]
                        mem[mem[64] + 132 len floor32(mem[_7755])] = mem[_7755 + 32 len floor32(mem[_7755])]
                        var38001 = floor32(_11061)
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _11061) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _14434 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _14435 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_14434 + 100] = 32
                        mem[_14434 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_14434 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _15054 = mem[_14435]
                        mem[_14434 + 164 len floor32(mem[_14435])] = mem[_14435 + 32 len floor32(mem[_14435])]
                        var52001 = _14435 + floor32(mem[_14435]) + 32
                        var52002 = _14434 + floor32(mem[_14435]) + 164
                        var52003 = mem[_14435] - (32 * Mask(251, 0, mem[_14435]) >> 5)
                        mem[_14434 + floor32(mem[_14435]) + -(mem[_14435] % 32) + 196 len mem[_14435] % 32] = mem[_14435 + -(mem[_14435] % 32) + floor32(mem[_14435]) + 64 len mem[_14435] % 32]
                        call metaLPTokenAddress.mem[_14434 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_14434 + 168 len _15054 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var60001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14434 + 274 len 22]
                        else:
                            mem[_14434 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var60001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_14434 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_14434 + ceil32(return_data.size) + 275 len 22]
        else:
            mem[0] = 54
            mem[(32 * baseTokens.length) + 160] = address(metaTokens.field_0)
            idx = (32 * baseTokens.length) + 160
            s = 0
            while (32 * baseTokens.length) + (32 * metaTokens.length) + 128 > idx:
                mem[idx + 32] = metaTokens[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require arg1.length == baseTokens.length + metaTokens.length - 1
            require baseTokens.length <= test266151307()
            mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160] = baseTokens.length
            mem[64] = (64 * baseTokens.length) + (32 * metaTokens.length) + 192
            if not baseTokens.length:
                idx = 0
                s = 0
                while uint8(idx) < baseTokens.length:
                    require uint8(idx) < mem[96]
                    _11070 = mem[(32 * uint8(idx)) + 128]
                    require metaTokens.length + uint8(idx) - 1 < arg1.length
                    if cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    _11209 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                    _11210 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_11210 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_11210 + 36 len 28]
                    mem[64] = _11209 + 196
                    mem[_11209 + 132] = 32
                    mem[_11209 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11209 + 302 len 26]
                    if not ext_code.size(address(_11070)):
                        revert with 0, 'Address: call to non-contract'
                    _11801 = mem[_11210]
                    t = _11210 + 32
                    u = mem[64]
                    s = mem[_11210]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_11210])] = mem[_11210 + floor32(mem[_11210]) + -(mem[_11210] % 32) + 64 len mem[_11210] % 32] or Mask(8 * -(mem[_11210] % 32) + 32, -(8 * -(mem[_11210] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_11210])])
                    call address(_11070).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11801 + _11209 + -mem[64] + 192]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _14596 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_11209 + 132]
                            _14598 = mem[_11209 + 132]
                            idx = 0
                            while idx < _14598:
                                mem[idx + _14596 + 68] = mem[idx + _11209 + 164]
                                idx = idx + 32
                                continue 
                            if not _14598 % 32:
                                revert with memory
                                  from mem[64]
                                   len _14598 + _14596 + -mem[64] + 68
                            mem[floor32(_14598) + _14596 + 68] = mem[floor32(_14598) + _14596 + -(_14598 % 32) + 100 len _14598 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_14598) + _14596 + -mem[64] + 100
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    else:
                        _14321 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_14321] = return_data.size
                        mem[_14321 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14600 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_11209 + 132]
                            _14602 = mem[_11209 + 132]
                            idx = 0
                            while idx < _14602:
                                mem[idx + _14600 + 68] = mem[idx + _11209 + 164]
                                idx = idx + 32
                                continue 
                            if not _14602 % 32:
                                revert with memory
                                  from mem[64]
                                   len _14602 + _14600 + -mem[64] + 68
                            mem[floor32(_14602) + _14600 + 68] = mem[floor32(_14602) + _14600 + -(_14602 % 32) + 100 len _14602 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_14602) + _14600 + -mem[64] + 100
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_14321 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_11070))
                    staticcall address(_11070).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[(32 * uint8(idx)) + (32 * baseTokens.length) + (32 * metaTokens.length) + 192] = ext_call.return_data[0]
                    idx = idx + 1
                    s = 1
                    continue 
                if not s:
                    require metaTokens.length <= test266151307()
                    _11107 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if not metaTokens.length:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _14316 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _14439 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _14440 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_14440 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_14440 + 36 len 28]
                                mem[64] = _14439 + 196
                                mem[_14439 + 132] = 32
                                mem[_14439 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_14439 + 302 len 26]
                                if not ext_code.size(address(_14316)):
                                    revert with 0, 'Address: call to non-contract'
                                _15068 = mem[_14440]
                                t = _14440 + 32
                                u = _14439 + 196
                                s = mem[_14440]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_14439 + floor32(mem[_14440]) + 196] = mem[_14440 + -(mem[_14440] % 32) + floor32(mem[_14440]) + 64 len mem[_14440] % 32] or Mask(8 * -(mem[_14440] % 32) + 32, -(8 * -(mem[_14440] % 32) + 32) + 256, mem[_14439 + floor32(mem[_14440]) + 196])
                                call address(_14316).mem[_14439 + 196 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14439 + 200 len _15068 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14439 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14439 + 200] = 32
                                        mem[_14439 + 232] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14439 + 264] = mem[idx + _14439 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _14439 + -mem[64] + 296
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_14439 + 306 len 22]
                                    mem[_14439 + 200] = this.address
                                    require ext_code.size(address(_14316))
                                    staticcall address(_14316).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_14439 + 196] = ext_call.return_data[0]
                                else:
                                    mem[64] = _14439 + ceil32(return_data.size) + 197
                                    mem[_14439 + 196] = return_data.size
                                    mem[_14439 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14439 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14439 + ceil32(return_data.size) + 201] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14439 + ceil32(return_data.size) + 265] = mem[idx + _14439 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14439 + ceil32(return_data.size) + 265]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_14439 + 228]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_14439 + ceil32(return_data.size) + 307 len 22]
                                    mem[_14439 + ceil32(return_data.size) + 201] = this.address
                                    require ext_code.size(address(_14316))
                                    staticcall address(_14316).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_14439 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_11107]
                                mem[(32 * uint8(idx)) + _11107 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_11107]
                        mem[(32 * metaTokens.length - 1) + _11107 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_11107]
                        _14315 = mem[_11107]
                        mem[mem[64] + 132 len floor32(mem[_11107])] = mem[_11107 + 32 len floor32(mem[_11107])]
                        var33001 = floor32(_14315)
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _14315) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _16789 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _16790 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_16789 + 100] = 32
                        mem[_16789 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_16789 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _17166 = mem[_16790]
                        mem[_16789 + 164 len floor32(mem[_16790])] = mem[_16790 + 32 len floor32(mem[_16790])]
                        var47001 = _16790 + floor32(mem[_16790]) + 32
                        var47002 = _16789 + floor32(mem[_16790]) + 164
                        var47003 = mem[_16790] - (32 * Mask(251, 0, mem[_16790]) >> 5)
                        mem[_16789 + floor32(mem[_16790]) + -(mem[_16790] % 32) + 196 len mem[_16790] % 32] = mem[_16790 + floor32(mem[_16790]) + -(mem[_16790] % 32) + 64 len mem[_16790] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_16789 + 168 len _17166 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var55001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_16789 + 274 len 22]
                        else:
                            mem[_16789 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var55001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_16789 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_16789 + ceil32(return_data.size) + 275 len 22]
                    else:
                        mem[_11107 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _14320 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _14442 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _14443 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_14443 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_14443 + 36 len 28]
                                mem[64] = _14442 + 196
                                mem[_14442 + 132] = 32
                                mem[_14442 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_14442 + 302 len 26]
                                if not ext_code.size(address(_14320)):
                                    revert with 0, 'Address: call to non-contract'
                                _15074 = mem[_14443]
                                t = _14443 + 32
                                u = mem[64]
                                s = mem[_14443]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_14443])] = mem[_14443 + floor32(mem[_14443]) + -(mem[_14443] % 32) + 64 len mem[_14443] % 32] or Mask(8 * -(mem[_14443] % 32) + 32, -(8 * -(mem[_14443] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14443])])
                                call address(_14320).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _15074 + _14442 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _16895 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_14442 + 132]
                                        _16897 = mem[_14442 + 132]
                                        idx = 0
                                        while idx < _16897:
                                            mem[idx + _16895 + 68] = mem[idx + _14442 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _16897 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _16897 + _16895 + -mem[64] + 68
                                        mem[floor32(_16897) + _16895 + 68] = mem[floor32(_16897) + _16895 + -(_16897 % 32) + 100 len _16897 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_16897) + _16895 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _16694 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_16694] = return_data.size
                                    mem[_16694 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _16899 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_14442 + 132]
                                        _16901 = mem[_14442 + 132]
                                        idx = 0
                                        while idx < _16901:
                                            mem[idx + _16899 + 68] = mem[idx + _14442 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _16901 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _16901 + _16899 + -mem[64] + 68
                                        mem[floor32(_16901) + _16899 + 68] = mem[floor32(_16901) + _16899 + -(_16901 % 32) + 100 len _16901 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_16901) + _16899 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_16694 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_14320))
                                staticcall address(_14320).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_11107]
                                mem[(32 * uint8(idx)) + _11107 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_11107]
                        mem[(32 * metaTokens.length - 1) + _11107 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_11107]
                        _14319 = mem[_11107]
                        mem[mem[64] + 132 len floor32(mem[_11107])] = mem[_11107 + 32 len floor32(mem[_11107])]
                        var34001 = floor32(_14319)
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _14319) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _16794 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _16795 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_16794 + 100] = 32
                        mem[_16794 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_16794 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _17178 = mem[_16795]
                        mem[_16794 + 164 len floor32(mem[_16795])] = mem[_16795 + 32 len floor32(mem[_16795])]
                        var48001 = _16795 + floor32(mem[_16795]) + 32
                        var48002 = _16794 + floor32(mem[_16795]) + 164
                        var48003 = mem[_16795] - (32 * Mask(251, 0, mem[_16795]) >> 5)
                        mem[_16794 + floor32(mem[_16795]) + -(mem[_16795] % 32) + 196 len mem[_16795] % 32] = mem[_16795 + floor32(mem[_16795]) + -(mem[_16795] % 32) + 64 len mem[_16795] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_16794 + 168 len _17178 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var56001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_16794 + 274 len 22]
                        else:
                            mem[_16794 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var56001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_16794 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_16794 + ceil32(return_data.size) + 275 len 22]
                else:
                    mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = arg3
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    _11069 = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[mem[64] + 132 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 192 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])]
                    require ext_code.size(baseSwapAddress)
                    call baseSwapAddress.0x4d49e87d with:
                         gas gas_remaining wei
                        args 96, 0, arg3, mem[mem[64] + 100 len (32 * _11069) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require metaTokens.length <= test266151307()
                    _14595 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if not metaTokens.length:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _16698 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _16799 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _16800 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_16800 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_16800 + 36 len 28]
                                mem[64] = _16799 + 196
                                mem[_16799 + 132] = 32
                                mem[_16799 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_16799 + 302 len 26]
                                if not ext_code.size(address(_16698)):
                                    revert with 0, 'Address: call to non-contract'
                                _17192 = mem[_16800]
                                t = _16800 + 32
                                u = mem[64]
                                s = mem[_16800]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_16800])] = mem[_16800 + floor32(mem[_16800]) + -(mem[_16800] % 32) + 64 len mem[_16800] % 32] or Mask(8 * -(mem[_16800] % 32) + 32, -(8 * -(mem[_16800] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_16800])])
                                call address(_16698).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _17192 + _16799 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _18118 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_16799 + 132]
                                        _18120 = mem[_16799 + 132]
                                        idx = 0
                                        while idx < _18120:
                                            mem[idx + _18118 + 68] = mem[idx + _16799 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _18120 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _18120 + _18118 + -mem[64] + 68
                                        mem[floor32(_18120) + _18118 + 68] = mem[floor32(_18120) + _18118 + -(_18120 % 32) + 100 len _18120 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_18120) + _18118 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _18027 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_18027] = return_data.size
                                    mem[_18027 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18122 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_16799 + 132]
                                        _18124 = mem[_16799 + 132]
                                        idx = 0
                                        while idx < _18124:
                                            mem[idx + _18122 + 68] = mem[idx + _16799 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _18124 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _18124 + _18122 + -mem[64] + 68
                                        mem[floor32(_18124) + _18122 + 68] = mem[floor32(_18124) + _18122 + -(_18124 % 32) + 100 len _18124 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_18124) + _18122 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_18027 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_16698))
                                staticcall address(_16698).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_14595]
                                mem[(32 * uint8(idx)) + _14595 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_14595]
                        mem[(32 * metaTokens.length - 1) + _14595 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_14595]
                        _16697 = mem[_14595]
                        mem[mem[64] + 132 len floor32(mem[_14595])] = mem[_14595 + 32 len floor32(mem[_14595])]
                        var40001 = floor32(_16697)
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _16697) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _18077 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _18078 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_18077 + 100] = 32
                        mem[_18077 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_18077 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _18298 = mem[_18078]
                        mem[_18077 + 164 len floor32(mem[_18078])] = mem[_18078 + 32 len floor32(mem[_18078])]
                        idx = _18078 + floor32(mem[_18078]) + 32
                        s = _18077 + floor32(mem[_18078]) + 164
                        mem[_18077 + floor32(mem[_18078]) + -(mem[_18078] % 32) + 196 len mem[_18078] % 32] = mem[_18078 + floor32(mem[_18078]) + -(mem[_18078] % 32) + 64 len mem[_18078] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_18077 + 168 len _18298 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var62001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_18077 + 274 len 22]
                        else:
                            mem[_18077 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var62001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18077 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_18077 + ceil32(return_data.size) + 275 len 22]
                    else:
                        mem[_14595 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _16702 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _16802 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _16803 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_16803 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_16803 + 36 len 28]
                                mem[64] = _16802 + 196
                                mem[_16802 + 132] = 32
                                mem[_16802 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_16802 + 302 len 26]
                                if not ext_code.size(address(_16702)):
                                    revert with 0, 'Address: call to non-contract'
                                _17198 = mem[_16803]
                                t = _16803 + 32
                                u = mem[64]
                                s = mem[_16803]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_16803])] = mem[_16803 + floor32(mem[_16803]) + -(mem[_16803] % 32) + 64 len mem[_16803] % 32] or Mask(8 * -(mem[_16803] % 32) + 32, -(8 * -(mem[_16803] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_16803])])
                                call address(_16702).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _17198 + _16802 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _18127 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_16802 + 132]
                                        _18129 = mem[_16802 + 132]
                                        idx = 0
                                        while idx < _18129:
                                            mem[idx + _18127 + 68] = mem[idx + _16802 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _18129 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _18129 + _18127 + -mem[64] + 68
                                        mem[floor32(_18129) + _18127 + 68] = mem[floor32(_18129) + _18127 + -(_18129 % 32) + 100 len _18129 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_18129) + _18127 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _18028 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_18028] = return_data.size
                                    mem[_18028 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18131 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_16802 + 132]
                                        _18133 = mem[_16802 + 132]
                                        idx = 0
                                        while idx < _18133:
                                            mem[idx + _18131 + 68] = mem[idx + _16802 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _18133 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _18133 + _18131 + -mem[64] + 68
                                        mem[floor32(_18133) + _18131 + 68] = mem[floor32(_18133) + _18131 + -(_18133 % 32) + 100 len _18133 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_18133) + _18131 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_18028 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_16702))
                                staticcall address(_16702).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_14595]
                                mem[(32 * uint8(idx)) + _14595 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_14595]
                        mem[(32 * metaTokens.length - 1) + _14595 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_14595]
                        _16701 = mem[_14595]
                        mem[mem[64] + 132 len floor32(mem[_14595])] = mem[_14595 + 32 len floor32(mem[_14595])]
                        var41001 = floor32(_16701)
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _16701) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _18082 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _18083 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_18082 + 100] = 32
                        mem[_18082 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_18082 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _18310 = mem[_18083]
                        mem[_18082 + 164 len floor32(mem[_18083])] = mem[_18083 + 32 len floor32(mem[_18083])]
                        var55001 = _18083 + floor32(mem[_18083]) + 32
                        var55002 = _18082 + floor32(mem[_18083]) + 164
                        mem[_18082 + floor32(mem[_18083]) + -(mem[_18083] % 32) + 196 len mem[_18083] % 32] = mem[_18083 + -(mem[_18083] % 32) + floor32(mem[_18083]) + 64 len mem[_18083] % 32]
                        call metaLPTokenAddress.mem[_18082 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_18082 + 168 len _18310 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var63001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_18082 + 274 len 22]
                        else:
                            mem[_18082 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var63001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18082 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_18082 + ceil32(return_data.size) + 275 len 22]
            else:
                mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 192 len 32 * baseTokens.length] = call.data[calldata.size len 32 * baseTokens.length]
                idx = 0
                s = 0
                while uint8(idx) < baseTokens.length:
                    require uint8(idx) < mem[96]
                    _11074 = mem[(32 * uint8(idx)) + 128]
                    require metaTokens.length + uint8(idx) - 1 < arg1.length
                    if cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    _11212 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                    _11213 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_11213 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_11213 + 36 len 28]
                    mem[64] = _11212 + 196
                    mem[_11212 + 132] = 32
                    mem[_11212 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_11212 + 302 len 26]
                    if not ext_code.size(address(_11074)):
                        revert with 0, 'Address: call to non-contract'
                    _11810 = mem[_11213]
                    t = _11213 + 32
                    u = mem[64]
                    s = mem[_11213]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_11213])] = mem[_11213 + floor32(mem[_11213]) + -(mem[_11213] % 32) + 64 len mem[_11213] % 32] or Mask(8 * -(mem[_11213] % 32) + 32, -(8 * -(mem[_11213] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_11213])])
                    call address(_11074).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11810 + _11212 + -mem[64] + 192]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _14609 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_11212 + 132]
                            _14611 = mem[_11212 + 132]
                            idx = 0
                            while idx < _14611:
                                mem[idx + _14609 + 68] = mem[idx + _11212 + 164]
                                idx = idx + 32
                                continue 
                            if not _14611 % 32:
                                revert with memory
                                  from mem[64]
                                   len _14611 + _14609 + -mem[64] + 68
                            mem[floor32(_14611) + _14609 + 68] = mem[floor32(_14611) + _14609 + -(_14611 % 32) + 100 len _14611 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_14611) + _14609 + -mem[64] + 100
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    else:
                        _14330 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_14330] = return_data.size
                        mem[_14330 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14613 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_11212 + 132]
                            _14615 = mem[_11212 + 132]
                            idx = 0
                            while idx < _14615:
                                mem[idx + _14613 + 68] = mem[idx + _11212 + 164]
                                idx = idx + 32
                                continue 
                            if not _14615 % 32:
                                revert with memory
                                  from mem[64]
                                   len _14615 + _14613 + -mem[64] + 68
                            mem[floor32(_14615) + _14613 + 68] = mem[floor32(_14615) + _14613 + -(_14615 % 32) + 100 len _14615 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_14615) + _14613 + -mem[64] + 100
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_14330 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_11074))
                    staticcall address(_11074).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[(32 * uint8(idx)) + (32 * baseTokens.length) + (32 * metaTokens.length) + 192] = ext_call.return_data[0]
                    idx = idx + 1
                    s = 1
                    continue 
                if not s:
                    require metaTokens.length <= test266151307()
                    _11108 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if metaTokens.length:
                        mem[_11108 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _14329 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _14450 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _14451 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_14451 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_14451 + 36 len 28]
                                mem[64] = _14450 + 196
                                mem[_14450 + 132] = 32
                                mem[_14450 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_14450 + 302 len 26]
                                if not ext_code.size(address(_14329)):
                                    revert with 0, 'Address: call to non-contract'
                                _15096 = mem[_14451]
                                t = _14451 + 32
                                u = mem[64]
                                s = mem[_14451]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_14451])] = mem[_14451 + floor32(mem[_14451]) + -(mem[_14451] % 32) + 64 len mem[_14451] % 32] or Mask(8 * -(mem[_14451] % 32) + 32, -(8 * -(mem[_14451] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14451])])
                                call address(_14329).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _15096 + _14450 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _16917 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_14450 + 132]
                                        _16919 = mem[_14450 + 132]
                                        idx = 0
                                        while idx < _16919:
                                            mem[idx + _16917 + 68] = mem[idx + _14450 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _16919 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _16919 + _16917 + -mem[64] + 68
                                        mem[floor32(_16919) + _16917 + 68] = mem[floor32(_16919) + _16917 + -(_16919 % 32) + 100 len _16919 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_16919) + _16917 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _16708 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_16708] = return_data.size
                                    mem[_16708 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _16921 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_14450 + 132]
                                        _16923 = mem[_14450 + 132]
                                        idx = 0
                                        while idx < _16923:
                                            mem[idx + _16921 + 68] = mem[idx + _14450 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _16923 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _16923 + _16921 + -mem[64] + 68
                                        mem[floor32(_16923) + _16921 + 68] = mem[floor32(_16923) + _16921 + -(_16923 % 32) + 100 len _16923 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_16923) + _16921 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_16708 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_14329))
                                staticcall address(_14329).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_11108]
                                mem[(32 * uint8(idx)) + _11108 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_11108]
                        mem[(32 * metaTokens.length - 1) + _11108 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_11108]
                        _14328 = mem[_11108]
                        mem[mem[64] + 132 len floor32(mem[_11108])] = mem[_11108 + 32 len floor32(mem[_11108])]
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _14328) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _16810 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _16811 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_16810 + 100] = 32
                        mem[_16810 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_16810 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _17214 = mem[_16811]
                        mem[_16810 + 164 len floor32(mem[_16811])] = mem[_16811 + 32 len floor32(mem[_16811])]
                        var49001 = _16811 + floor32(mem[_16811]) + 32
                        mem[_16810 + floor32(mem[_16811]) + -(mem[_16811] % 32) + 196 len mem[_16811] % 32] = mem[_16811 + floor32(mem[_16811]) + -(mem[_16811] % 32) + 64 len mem[_16811] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_16810 + 168 len _17214 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var57001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_16810 + 274 len 22]
                        else:
                            mem[_16810 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var57001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_16810 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_16810 + ceil32(return_data.size) + 275 len 22]
                    else:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _14325 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _14447 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _14448 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_14448 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_14448 + 36 len 28]
                                mem[64] = _14447 + 196
                                mem[_14447 + 132] = 32
                                mem[_14447 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_14447 + 302 len 26]
                                if not ext_code.size(address(_14325)):
                                    revert with 0, 'Address: call to non-contract'
                                _15090 = mem[_14448]
                                t = _14448 + 32
                                u = mem[64]
                                s = mem[_14448]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_14448])] = mem[_14448 + floor32(mem[_14448]) + -(mem[_14448] % 32) + 64 len mem[_14448] % 32] or Mask(8 * -(mem[_14448] % 32) + 32, -(8 * -(mem[_14448] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14448])])
                                call address(_14325).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _15090 + _14447 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _16908 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_14447 + 132]
                                        _16910 = mem[_14447 + 132]
                                        idx = 0
                                        while idx < _16910:
                                            mem[idx + _16908 + 68] = mem[idx + _14447 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _16910 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _16910 + _16908 + -mem[64] + 68
                                        mem[floor32(_16910) + _16908 + 68] = mem[floor32(_16910) + _16908 + -(_16910 % 32) + 100 len _16910 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_16910) + _16908 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _16707 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_16707] = return_data.size
                                    mem[_16707 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _16912 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_14447 + 132]
                                        _16914 = mem[_14447 + 132]
                                        idx = 0
                                        while idx < _16914:
                                            mem[idx + _16912 + 68] = mem[idx + _14447 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _16914 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _16914 + _16912 + -mem[64] + 68
                                        mem[floor32(_16914) + _16912 + 68] = mem[floor32(_16914) + _16912 + -(_16914 % 32) + 100 len _16914 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_16914) + _16912 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_16707 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_14325))
                                staticcall address(_14325).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_11108]
                                mem[(32 * uint8(idx)) + _11108 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_11108]
                        mem[(32 * metaTokens.length - 1) + _11108 + 32] = 0
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_11108]
                        _14324 = mem[_11108]
                        mem[mem[64] + 132 len floor32(mem[_11108])] = mem[_11108 + 32 len floor32(mem[_11108])]
                        var34001 = floor32(_14324)
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _14324) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _16805 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _16806 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_16805 + 100] = 32
                        mem[_16805 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_16805 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _17202 = mem[_16806]
                        mem[_16805 + 164 len floor32(mem[_16806])] = mem[_16806 + 32 len floor32(mem[_16806])]
                        var48001 = _16806 + floor32(mem[_16806]) + 32
                        var48002 = _16805 + floor32(mem[_16806]) + 164
                        var48003 = mem[_16806] - (32 * Mask(251, 0, mem[_16806]) >> 5)
                        mem[_16805 + floor32(mem[_16806]) + -(mem[_16806] % 32) + 196 len mem[_16806] % 32] = mem[_16806 + floor32(mem[_16806]) + -(mem[_16806] % 32) + 64 len mem[_16806] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_16805 + 168 len _17202 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var56001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_16805 + 274 len 22]
                        else:
                            mem[_16805 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var56001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_16805 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_16805 + ceil32(return_data.size) + 275 len 22]
                else:
                    mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = arg3
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    _11073 = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160]
                    mem[mem[64] + 132 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])] = mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 192 len floor32(mem[(32 * baseTokens.length) + (32 * metaTokens.length) + 160])]
                    require ext_code.size(baseSwapAddress)
                    call baseSwapAddress.0x4d49e87d with:
                         gas gas_remaining wei
                        args 96, 0, arg3, mem[mem[64] + 100 len (32 * _11073) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require metaTokens.length <= test266151307()
                    _14608 = mem[64]
                    mem[mem[64]] = metaTokens.length
                    mem[64] = mem[64] + (32 * metaTokens.length) + 32
                    if not metaTokens.length:
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _16712 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _16815 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _16816 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_16816 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_16816 + 36 len 28]
                                mem[64] = _16815 + 196
                                mem[_16815 + 132] = 32
                                mem[_16815 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_16815 + 302 len 26]
                                if not ext_code.size(address(_16712)):
                                    revert with 0, 'Address: call to non-contract'
                                _17228 = mem[_16816]
                                t = _16816 + 32
                                u = mem[64]
                                s = mem[_16816]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_16816])] = mem[_16816 + floor32(mem[_16816]) + -(mem[_16816] % 32) + 64 len mem[_16816] % 32] or Mask(8 * -(mem[_16816] % 32) + 32, -(8 * -(mem[_16816] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_16816])])
                                call address(_16712).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _17228 + _16815 + -mem[64] + 192]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _18152 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_16815 + 132]
                                        _18154 = mem[_16815 + 132]
                                        idx = 0
                                        while idx < _18154:
                                            mem[idx + _18152 + 68] = mem[idx + _16815 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _18154 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _18154 + _18152 + -mem[64] + 68
                                        mem[floor32(_18154) + _18152 + 68] = mem[floor32(_18154) + _18152 + -(_18154 % 32) + 100 len _18154 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_18154) + _18152 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _18039 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_18039] = return_data.size
                                    mem[_18039 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18156 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_16815 + 132]
                                        _18158 = mem[_16815 + 132]
                                        idx = 0
                                        while idx < _18158:
                                            mem[idx + _18156 + 68] = mem[idx + _16815 + 164]
                                            idx = idx + 32
                                            continue 
                                        if not _18158 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _18158 + _18156 + -mem[64] + 68
                                        mem[floor32(_18158) + _18156 + 68] = mem[floor32(_18158) + _18156 + -(_18158 % 32) + 100 len _18158 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_18158) + _18156 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_18039 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_16712))
                                staticcall address(_16712).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_14608]
                                mem[(32 * uint8(idx)) + _14608 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_14608]
                        mem[(32 * metaTokens.length - 1) + _14608 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_14608]
                        _16711 = mem[_14608]
                        mem[mem[64] + 132 len floor32(mem[_14608])] = mem[_14608 + 32 len floor32(mem[_14608])]
                        var41001 = floor32(_16711)
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _16711) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _18091 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _18092 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_18091 + 100] = 32
                        mem[_18091 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_18091 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _18330 = mem[_18092]
                        mem[_18091 + 164 len floor32(mem[_18092])] = mem[_18092 + 32 len floor32(mem[_18092])]
                        idx = _18092 + floor32(mem[_18092]) + 32
                        s = _18091 + floor32(mem[_18092]) + 164
                        mem[_18091 + floor32(mem[_18092]) + -(mem[_18092] % 32) + 196 len mem[_18092] % 32] = mem[_18092 + floor32(mem[_18092]) + -(mem[_18092] % 32) + 64 len mem[_18092] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_18091 + 168 len _18330 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var63001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_18091 + 274 len 22]
                        else:
                            mem[_18091 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var63001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18091 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_18091 + ceil32(return_data.size) + 275 len 22]
                    else:
                        mem[_14608 + 32 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
                        idx = 0
                        while uint8(idx) < metaTokens.length - 1:
                            require uint8(idx) < mem[(32 * baseTokens.length) + 128]
                            _16716 = mem[(32 * uint8(idx)) + (32 * baseTokens.length) + 160]
                            require uint8(idx) < arg1.length
                            if cd[((32 * uint8(idx)) + arg1 + 36)] > 0:
                                _16818 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg1 + 36)]
                                _16819 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_16819 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_16819 + 36 len 28]
                                mem[64] = _16818 + 196
                                mem[_16818 + 132] = 32
                                mem[_16818 + 164] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_16818 + 302 len 26]
                                if not ext_code.size(address(_16716)):
                                    revert with 0, 'Address: call to non-contract'
                                _17234 = mem[_16819]
                                t = _16819 + 32
                                u = _16818 + 196
                                s = mem[_16819]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_16818 + floor32(mem[_16819]) + 196] = mem[_16819 + -(mem[_16819] % 32) + floor32(mem[_16819]) + 64 len mem[_16819] % 32] or Mask(8 * -(mem[_16819] % 32) + 32, -(8 * -(mem[_16819] % 32) + 32) + 256, mem[_16818 + floor32(mem[_16819]) + 196])
                                call address(_16716).mem[_16818 + 196 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_16818 + 200 len _17234 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_16818 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_16818 + 200] = 32
                                        mem[_16818 + 232] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _16818 + 264] = mem[idx + _16818 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _16818 + -mem[64] + 296
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_16818 + 306 len 22]
                                    mem[_16818 + 200] = this.address
                                    require ext_code.size(address(_16716))
                                    staticcall address(_16716).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_16818 + 196] = ext_call.return_data[0]
                                else:
                                    mem[64] = _16818 + ceil32(return_data.size) + 197
                                    mem[_16818 + 196] = return_data.size
                                    mem[_16818 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_16818 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_16818 + ceil32(return_data.size) + 201] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _16818 + ceil32(return_data.size) + 265] = mem[idx + _16818 + 164]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_16818 + ceil32(return_data.size) + 265]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_16818 + 228]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_16818 + ceil32(return_data.size) + 307 len 22]
                                    mem[_16818 + ceil32(return_data.size) + 201] = this.address
                                    require ext_code.size(address(_16716))
                                    staticcall address(_16716).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_16818 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(idx) < mem[_14608]
                                mem[(32 * uint8(idx)) + _14608 + 32] = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require metaTokens.length - 1 < mem[_14608]
                        mem[(32 * metaTokens.length - 1) + _14608 + 32] = ext_call.return_data[0]
                        mem[mem[64]] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_14608]
                        _16715 = mem[_14608]
                        mem[mem[64] + 132 len floor32(mem[_14608])] = mem[_14608 + 32 len floor32(mem[_14608])]
                        var42001 = floor32(_16715)
                        require ext_code.size(metaSwapAddress)
                        call metaSwapAddress.0x4d49e87d with:
                             gas gas_remaining wei
                            args 96, arg2, arg3, mem[mem[64] + 100 len (32 * _16715) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _18096 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _18097 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_18096 + 100] = 32
                        mem[_18096 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_18096 + 270 len 26]
                        if not ext_code.size(metaLPTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _18342 = mem[_18097]
                        mem[_18096 + 164 len floor32(mem[_18097])] = mem[_18097 + 32 len floor32(mem[_18097])]
                        var56001 = _18097 + floor32(mem[_18097]) + 32
                        mem[_18096 + floor32(mem[_18097]) + -(mem[_18097] % 32) + 196 len mem[_18097] % 32] = mem[_18097 + floor32(mem[_18097]) + -(mem[_18097] % 32) + 64 len mem[_18097] % 32]
                        call metaLPTokenAddress with:
                             gas gas_remaining wei
                            args mem[_18096 + 168 len _18342 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                var64001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_18096 + 274 len 22]
                        else:
                            mem[_18096 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                var64001 = 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18096 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_18096 + ceil32(return_data.size) + 275 len 22]
    stor1 = 1
    return ext_call.return_data[0]
}



}
