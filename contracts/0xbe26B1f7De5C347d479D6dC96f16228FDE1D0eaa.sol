contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() {
  stop
}

function sub_89597420(?) {
    require calldata.size - 4 >= 160
    if stor0 != msg.sender:
        revert with 0, 'ACCESS_ERR'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg4:
        revert with 0, 'INSUFF_BASE_BALANCE'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg4:
        revert with 0, 'INSUFF_BASE_ALLOWANCE'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    staticcall arg3.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    staticcall arg3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg4) >> 32
    mem[352 len 4] = uint32(arg4)
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(arg4),
                        mem[356 len 4]
        require ext_code.size(arg3)
        if arg1 == address(ext_call.return_data[0]):
            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, (10000 * arg4 * Mask(112, 0, ext_call.return_data[32])) - (arg5 * arg4 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg4) - (arg5 * arg4), msg.sender, 128, 0, mem[392]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return (10000 * arg4 * Mask(112, 0, ext_call.return_data[32])) - (arg5 * arg4 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg4) - (arg5 * arg4), 
                   0
        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args (10000 * arg4 * Mask(112, 0, ext_call.return_data[0])) - (arg5 * arg4 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg4) - (arg5 * arg4), 0, msg.sender, 128, 0, mem[392]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
        require ext_code.size(arg3)
        if arg1 == address(ext_call.return_data[0]):
            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, (10000 * arg4 * Mask(112, 0, ext_call.return_data[32])) - (arg5 * arg4 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg4) - (arg5 * arg4), msg.sender, 128, 0, mem[ceil32(return_data.size) + 393]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return (10000 * arg4 * Mask(112, 0, ext_call.return_data[32])) - (arg5 * arg4 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg4) - (arg5 * arg4), 
                   0
        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args (10000 * arg4 * Mask(112, 0, ext_call.return_data[0])) - (arg5 * arg4 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg4) - (arg5 * arg4), 0, msg.sender, 128, 0, mem[ceil32(return_data.size) + 393]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (10000 * arg4 * Mask(112, 0, ext_call.return_data[0])) - (arg5 * arg4 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg4) - (arg5 * arg4), 
           0
}

function sub_0ebe3aae(?) {
    require calldata.size - 4 >= 160
    if stor0 != msg.sender:
        revert with 0, 'ACCESS_ERR'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'INSUFF_BASE_BALANCE'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'INSUFF_BASE_ALLOWANCE'
    require ext_code.size(arg2)
    staticcall arg2.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[132] = msg.sender
    mem[164] = arg2
    mem[196] = arg3
    mem[96] = 100
    mem[64] = 228
    mem[132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[128 len 4] = unknown_0x23b872dd(?????)
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg2), Mask(224, 32, arg3) >> 32
    mem[352 len 4] = uint32(arg3)
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(arg3),
                        mem[356 len 4]
        s = 0
        idx = 0
        while uint8(idx) < arg4:
            if arg1 == address(ext_call.return_data[0]):
                _402 = mem[64]
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = (10000 * arg3 * Mask(112, 0, ext_call.return_data[32])) - (idx * arg3 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg3) - (idx * arg3)
                mem[mem[64] + 100] = msg.sender
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                _403 = mem[64]
                mem[mem[64]] = 196
                mem[64] = mem[64] + 228
                mem[_403 + 32] = mem[_403 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                _406 = mem[_403]
                t = _403 + 32
                u = _402 + 228
                s = mem[_403]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_402 + floor32(mem[_403]) + 228] = mem[_403 + -(mem[_403] % 32) + floor32(mem[_403]) + 64 len mem[_403] % 32] or Mask(8 * -(mem[_403] % 32) + 32, -(8 * -(mem[_403] % 32) + 32) + 256, mem[_402 + floor32(mem[_403]) + 228])
                call arg2.mem[_402 + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_402 + 232 len _406 - 4]
                if return_data.size:
                    mem[64] = _402 + ceil32(return_data.size) + 229
                    mem[_402 + 228] = return_data.size
                    mem[_402 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                _407 = mem[64]
                mem[mem[64] + 36] = (10000 * arg3 * Mask(112, 0, ext_call.return_data[0])) - (idx * arg3 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg3) - (idx * arg3)
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = msg.sender
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                _408 = mem[64]
                mem[mem[64]] = 196
                mem[64] = mem[64] + 228
                mem[_408 + 32] = mem[_408 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                _411 = mem[_408]
                t = _408 + 32
                u = _407 + 228
                s = mem[_408]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_407 + floor32(mem[_408]) + 228] = mem[_408 + -(mem[_408] % 32) + floor32(mem[_408]) + 64 len mem[_408] % 32] or Mask(8 * -(mem[_408] % 32) + 32, -(8 * -(mem[_408] % 32) + 32) + 256, mem[_407 + floor32(mem[_408]) + 228])
                call arg2.mem[_407 + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_407 + 232 len _411 - 4]
                if return_data.size:
                    mem[64] = _407 + ceil32(return_data.size) + 229
                    mem[_407 + 228] = return_data.size
                    mem[_407 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                s = ext_call.success
                idx = idx + arg5
                continue 
            if not ext_call.success:
                revert with 0, 'SOL_NOT_FOUND'
            return uint8(idx)
    else:
        mem[64] = ceil32(return_data.size) + 229
        mem[228] = return_data.size
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            s = 0
            idx = 0
            while uint8(idx) < arg4:
                if arg1 == address(ext_call.return_data[0]):
                    _412 = mem[64]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = (10000 * arg3 * Mask(112, 0, ext_call.return_data[32])) - (idx * arg3 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg3) - (idx * arg3)
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    _413 = mem[64]
                    mem[mem[64]] = 196
                    mem[64] = mem[64] + 228
                    mem[_413 + 32] = mem[_413 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    _416 = mem[_413]
                    t = _413 + 32
                    u = _412 + 228
                    s = mem[_413]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_412 + floor32(mem[_413]) + 228] = mem[_413 + -(mem[_413] % 32) + floor32(mem[_413]) + 64 len mem[_413] % 32] or Mask(8 * -(mem[_413] % 32) + 32, -(8 * -(mem[_413] % 32) + 32) + 256, mem[_412 + floor32(mem[_413]) + 228])
                    call arg2.mem[_412 + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[_412 + 232 len _416 - 4]
                    if return_data.size:
                        mem[64] = _412 + ceil32(return_data.size) + 229
                        mem[_412 + 228] = return_data.size
                        mem[_412 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    _417 = mem[64]
                    mem[mem[64] + 36] = (10000 * arg3 * Mask(112, 0, ext_call.return_data[0])) - (idx * arg3 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg3) - (idx * arg3)
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    _418 = mem[64]
                    mem[mem[64]] = 196
                    mem[64] = mem[64] + 228
                    mem[_418 + 32] = mem[_418 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    _421 = mem[_418]
                    t = _418 + 32
                    u = _417 + 228
                    s = mem[_418]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_417 + floor32(mem[_418]) + 228] = mem[_418 + -(mem[_418] % 32) + floor32(mem[_418]) + 64 len mem[_418] % 32] or Mask(8 * -(mem[_418] % 32) + 32, -(8 * -(mem[_418] % 32) + 32) + 256, mem[_417 + floor32(mem[_418]) + 228])
                    call arg2.mem[_417 + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[_417 + 232 len _421 - 4]
                    if return_data.size:
                        mem[64] = _417 + ceil32(return_data.size) + 229
                        mem[_417 + 228] = return_data.size
                        mem[_417 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    s = ext_call.success
                    idx = idx + arg5
                    continue 
                if not ext_call.success:
                    revert with 0, 'SOL_NOT_FOUND'
                return uint8(idx)
        else:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
            s = 0
            idx = 0
            while uint8(idx) < arg4:
                if arg1 == address(ext_call.return_data[0]):
                    _422 = mem[64]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = (10000 * arg3 * Mask(112, 0, ext_call.return_data[32])) - (idx * arg3 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg3) - (idx * arg3)
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    _423 = mem[64]
                    mem[mem[64]] = 196
                    mem[64] = mem[64] + 228
                    mem[_423 + 32] = mem[_423 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    _426 = mem[_423]
                    t = _423 + 32
                    u = _422 + 228
                    s = mem[_423]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_422 + floor32(mem[_423]) + 228] = mem[_423 + -(mem[_423] % 32) + floor32(mem[_423]) + 64 len mem[_423] % 32] or Mask(8 * -(mem[_423] % 32) + 32, -(8 * -(mem[_423] % 32) + 32) + 256, mem[_422 + floor32(mem[_423]) + 228])
                    call arg2.mem[_422 + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[_422 + 232 len _426 - 4]
                    if return_data.size:
                        mem[64] = _422 + ceil32(return_data.size) + 229
                        mem[_422 + 228] = return_data.size
                        mem[_422 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    _427 = mem[64]
                    mem[mem[64] + 36] = (10000 * arg3 * Mask(112, 0, ext_call.return_data[0])) - (idx * arg3 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg3) - (idx * arg3)
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    _428 = mem[64]
                    mem[mem[64]] = 196
                    mem[64] = mem[64] + 228
                    mem[_428 + 32] = mem[_428 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    _431 = mem[_428]
                    t = _428 + 32
                    u = _427 + 228
                    s = mem[_428]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_427 + floor32(mem[_428]) + 228] = mem[_428 + -(mem[_428] % 32) + floor32(mem[_428]) + 64 len mem[_428] % 32] or Mask(8 * -(mem[_428] % 32) + 32, -(8 * -(mem[_428] % 32) + 32) + 256, mem[_427 + floor32(mem[_428]) + 228])
                    call arg2.mem[_427 + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[_427 + 232 len _431 - 4]
                    if return_data.size:
                        mem[64] = _427 + ceil32(return_data.size) + 229
                        mem[_427 + 228] = return_data.size
                        mem[_427 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    s = ext_call.success
                    idx = idx + arg5
                    continue 
                if not ext_call.success:
                    revert with 0, 'SOL_NOT_FOUND'
                return uint8(idx)
    if not s:
        revert with 0, 'SOL_NOT_FOUND'
    return uint8(idx)
}



}
