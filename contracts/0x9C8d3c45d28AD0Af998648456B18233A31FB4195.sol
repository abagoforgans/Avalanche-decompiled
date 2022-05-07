contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint8 stor1;

function sent(bytes32 arg1, address[] arg2, uint256[] arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if arg2.length != arg3.length:
        revert with 0, 'length mismatch'
    mem[160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    return bool(stor1[arg1][mem[160 len (32 * arg2.length) + (32 * arg3.length)]])
}

function _fallback() payable {
    revert
}

function airdrop(bytes32 arg1, address[] arg2, uint256[] arg3, bytes32 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg2.length != arg3.length:
        revert with 0, 'length mismatch'
    mem[160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    if not arg4:
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = sha3(arg1, mem[160 len (32 * arg2.length) + (32 * arg3.length)])
        emit 0x494881cc: sha3(arg1, mem[160 len (32 * arg2.length) + (32 * arg3.length)])
        idx = 0
        while idx < arg2.length:
            require idx < arg3.length
            require idx < arg2.length
            if eth.balance(this.address) < cd[((32 * idx) + arg3 + 36)]:
                revert with 0, 'Address: insufficient balance'
            call address(cd[((32 * idx) + arg2 + 36)]) with:
               value cd[((32 * idx) + arg3 + 36)] wei
                 gas gas_remaining wei
            if return_data.size:
                _52 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_52] = return_data.size
                mem[_52 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            58,
                            0xfe416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[mem[64] + 126 len 6]
            idx = idx + 1
            continue 
    else:
        if arg4 != sha3(arg1, mem[160 len (32 * arg2.length) + (32 * arg3.length)]):
            revert with 0, 'invalid checksum'
        if stor1[arg4]:
            revert with 0, 'duplicate checksum'
        stor1[arg4] = 1
        idx = 0
        while idx < arg2.length:
            require idx < arg3.length
            require idx < arg2.length
            if eth.balance(this.address) < cd[((32 * idx) + arg3 + 36)]:
                revert with 0, 'Address: insufficient balance'
            call address(cd[((32 * idx) + arg2 + 36)]) with:
               value cd[((32 * idx) + arg3 + 36)] wei
                 gas gas_remaining wei
            if return_data.size:
                _51 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_51] = return_data.size
                mem[_51 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            58,
                            0xfe416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[mem[64] + 126 len 6]
            idx = idx + 1
            continue 
    if eth.balance(this.address) != eth.balance(this.address) - msg.value:
        revert with 0, 'amount mismatch'
    stor0 = 1
}

function airdrop(bytes32 arg1, address arg2, uint256 arg3, address[] arg4, uint256[] arg5, bytes32 arg6) {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg4.length != arg5.length:
        revert with 0, 'length mismatch'
    mem[128] = arg1
    mem[160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[96] = (32 * arg4.length) + (32 * arg5.length) + 32
    if not arg6:
        emit 0x494881cc: sha3(arg1, mem[160 len (32 * arg4.length) + (32 * arg5.length)])
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg4.length) + (32 * arg5.length) + 196] = msg.sender
        mem[(32 * arg4.length) + (32 * arg5.length) + 228] = this.address
        mem[(32 * arg4.length) + (32 * arg5.length) + 260] = arg3
        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 100
        mem[(32 * arg4.length) + (32 * arg5.length) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(32 * arg4.length) + (32 * arg5.length) + 192 len 4] = unknown_0x23b872dd(?????)
        mem[64] = (32 * arg4.length) + (32 * arg5.length) + 356
        mem[(32 * arg4.length) + (32 * arg5.length) + 292] = 32
        mem[(32 * arg4.length) + (32 * arg5.length) + 324] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * arg4.length) + (32 * arg5.length) + 462 len 26]
        if ext_code.size(arg2) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * arg4.length) + (32 * arg5.length) + 356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
        mem[(32 * arg4.length) + (32 * arg5.length) + 480 len 4] = 0
        mem[(32 * arg4.length) + (32 * arg5.length) + 452 len 0] = 0
        call arg2 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 480, mem[(32 * arg4.length) + (32 * arg5.length) + 452 len 4]
        if not return_data.size:
            if not ext_call.success:
                if (32 * arg4.length) + (32 * arg5.length) + 32 > 0:
                    revert with arg1, mem[160 len (32 * arg4.length) + (32 * arg5.length)]
                revert with 0, 'SafeERC20: low-level call failed'
            if (32 * arg4.length) + (32 * arg5.length) + 32 <= 0:
                idx = 0
                while idx < arg4.length:
                    require idx < arg5.length
                    _1018 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + arg5 + 36)]
                    _1019 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1019 + 32] = mem[_1019 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[64] = _1018 + 164
                    mem[_1018 + 100] = 32
                    mem[_1018 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1018 + 270 len 26]
                    if ext_code.size(arg2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1090 = mem[_1019]
                    t = _1019 + 32
                    u = mem[64]
                    s = mem[_1019]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1019])] = mem[_1019 + floor32(mem[_1019]) + -(mem[_1019] % 32) + 64 len mem[_1019] % 32] or Mask(8 * -(mem[_1019] % 32) + 32, -(8 * -(mem[_1019] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1019])])
                    call arg2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1090 + _1018 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        _1457 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_1018 + 100]
                        _1459 = mem[_1018 + 100]
                        idx = 0
                        while idx < _1459:
                            mem[_1457 + idx + 68] = mem[_1018 + idx + 132]
                            idx = idx + 32
                            continue 
                        if not _1459 % 32:
                            revert with memory
                              from mem[64]
                               len _1459 + _1457 + -mem[64] + 68
                        mem[floor32(_1459) + _1457 + 68] = mem[floor32(_1459) + _1457 + -(_1459 % 32) + 100 len _1459 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_1459) + _1457 + -mem[64] + 100
                    _1405 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1405] = return_data.size
                    mem[_1405 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_1405 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1461 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1018 + 100]
                    _1463 = mem[_1018 + 100]
                    idx = 0
                    while idx < _1463:
                        mem[_1461 + idx + 68] = mem[_1018 + idx + 132]
                        idx = idx + 32
                        continue 
                    if not _1463 % 32:
                        revert with memory
                          from mem[64]
                           len _1463 + _1461 + -mem[64] + 68
                    mem[floor32(_1463) + _1461 + 68] = mem[floor32(_1463) + _1461 + -(_1463 % 32) + 100 len _1463 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1463) + _1461 + -mem[64] + 100
            else:
                require (32 * arg4.length) + (32 * arg5.length) + 32 >= 32
                if not arg1:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * arg4.length) + (32 * arg5.length) + 466 len 14],
                                0,
                                mem[(32 * arg4.length) + (32 * arg5.length) + 484 len 4]
                idx = 0
                while idx < arg4.length:
                    require idx < arg5.length
                    _1022 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + arg5 + 36)]
                    _1023 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1023 + 32] = mem[_1023 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[64] = _1022 + 164
                    mem[_1022 + 100] = 32
                    mem[_1022 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1022 + 270 len 26]
                    if ext_code.size(arg2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1094 = mem[_1023]
                    t = _1023 + 32
                    u = mem[64]
                    s = mem[_1023]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1023])] = mem[_1023 + floor32(mem[_1023]) + -(mem[_1023] % 32) + 64 len mem[_1023] % 32] or Mask(8 * -(mem[_1023] % 32) + 32, -(8 * -(mem[_1023] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1023])])
                    call arg2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1094 + _1022 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        _1465 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_1022 + 100]
                        _1467 = mem[_1022 + 100]
                        idx = 0
                        while idx < _1467:
                            mem[_1465 + idx + 68] = mem[_1022 + idx + 132]
                            idx = idx + 32
                            continue 
                        if not _1467 % 32:
                            revert with memory
                              from mem[64]
                               len _1467 + _1465 + -mem[64] + 68
                        mem[floor32(_1467) + _1465 + 68] = mem[floor32(_1467) + _1465 + -(_1467 % 32) + 100 len _1467 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_1467) + _1465 + -mem[64] + 100
                    _1406 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1406] = return_data.size
                    mem[_1406 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_1406 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1469 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1022 + 100]
                    _1471 = mem[_1022 + 100]
                    idx = 0
                    while idx < _1471:
                        mem[_1469 + idx + 68] = mem[_1022 + idx + 132]
                        idx = idx + 32
                        continue 
                    if not _1471 % 32:
                        revert with memory
                          from mem[64]
                           len _1471 + _1469 + -mem[64] + 68
                    mem[floor32(_1471) + _1469 + 68] = mem[floor32(_1471) + _1469 + -(_1471 % 32) + 100 len _1471 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1471) + _1469 + -mem[64] + 100
        else:
            mem[64] = (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 357
            mem[(32 * arg4.length) + (32 * arg5.length) + 356] = return_data.size
            mem[(32 * arg4.length) + (32 * arg5.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                idx = 0
                while idx < arg4.length:
                    require idx < arg5.length
                    _1026 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + arg5 + 36)]
                    _1027 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1027 + 32] = mem[_1027 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[64] = _1026 + 164
                    mem[_1026 + 100] = 32
                    mem[_1026 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1026 + 270 len 26]
                    if ext_code.size(arg2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1098 = mem[_1027]
                    t = _1027 + 32
                    u = mem[64]
                    s = mem[_1027]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1027])] = mem[_1027 + floor32(mem[_1027]) + -(mem[_1027] % 32) + 64 len mem[_1027] % 32] or Mask(8 * -(mem[_1027] % 32) + 32, -(8 * -(mem[_1027] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1027])])
                    call arg2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1098 + _1026 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        _1473 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_1026 + 100]
                        _1475 = mem[_1026 + 100]
                        idx = 0
                        while idx < _1475:
                            mem[_1473 + idx + 68] = mem[_1026 + idx + 132]
                            idx = idx + 32
                            continue 
                        if not _1475 % 32:
                            revert with memory
                              from mem[64]
                               len _1475 + _1473 + -mem[64] + 68
                        mem[floor32(_1475) + _1473 + 68] = mem[floor32(_1475) + _1473 + -(_1475 % 32) + 100 len _1475 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_1475) + _1473 + -mem[64] + 100
                    _1407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1407] = return_data.size
                    mem[_1407 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_1407 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1477 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1026 + 100]
                    _1479 = mem[_1026 + 100]
                    idx = 0
                    while idx < _1479:
                        mem[_1477 + idx + 68] = mem[_1026 + idx + 132]
                        idx = idx + 32
                        continue 
                    if not _1479 % 32:
                        revert with memory
                          from mem[64]
                           len _1479 + _1477 + -mem[64] + 68
                    mem[floor32(_1479) + _1477 + 68] = mem[floor32(_1479) + _1477 + -(_1479 % 32) + 100 len _1479 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1479) + _1477 + -mem[64] + 100
            else:
                require return_data.size >= 32
                if not mem[(32 * arg4.length) + (32 * arg5.length) + 388]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 467 len 22]
                idx = 0
                while idx < arg4.length:
                    require idx < arg5.length
                    _1030 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + arg5 + 36)]
                    _1031 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1031 + 32] = mem[_1031 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[64] = _1030 + 164
                    mem[_1030 + 100] = 32
                    mem[_1030 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1030 + 270 len 26]
                    if ext_code.size(arg2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1102 = mem[_1031]
                    t = _1031 + 32
                    u = mem[64]
                    s = mem[_1031]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1031])] = mem[_1031 + floor32(mem[_1031]) + -(mem[_1031] % 32) + 64 len mem[_1031] % 32] or Mask(8 * -(mem[_1031] % 32) + 32, -(8 * -(mem[_1031] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1031])])
                    call arg2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1102 + _1030 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        _1481 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_1030 + 100]
                        _1483 = mem[_1030 + 100]
                        idx = 0
                        while idx < _1483:
                            mem[_1481 + idx + 68] = mem[_1030 + idx + 132]
                            idx = idx + 32
                            continue 
                        if not _1483 % 32:
                            revert with memory
                              from mem[64]
                               len _1483 + _1481 + -mem[64] + 68
                        mem[floor32(_1483) + _1481 + 68] = mem[floor32(_1483) + _1481 + -(_1483 % 32) + 100 len _1483 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_1483) + _1481 + -mem[64] + 100
                    _1408 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1408] = return_data.size
                    mem[_1408 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_1408 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1485 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1030 + 100]
                    _1487 = mem[_1030 + 100]
                    idx = 0
                    while idx < _1487:
                        mem[_1485 + idx + 68] = mem[_1030 + idx + 132]
                        idx = idx + 32
                        continue 
                    if not _1487 % 32:
                        revert with memory
                          from mem[64]
                           len _1487 + _1485 + -mem[64] + 68
                    mem[floor32(_1487) + _1485 + 68] = mem[floor32(_1487) + _1485 + -(_1487 % 32) + 100 len _1487 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1487) + _1485 + -mem[64] + 100
    else:
        if arg6 != sha3(arg1, mem[160 len (32 * arg4.length) + (32 * arg5.length)]):
            revert with 0, 'invalid checksum'
        if stor1[arg6]:
            revert with 0, 'duplicate checksum'
        mem[0] = arg6
        mem[32] = 1
        stor1[arg6] = 1
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg4.length) + (32 * arg5.length) + 196] = msg.sender
        mem[(32 * arg4.length) + (32 * arg5.length) + 228] = this.address
        mem[(32 * arg4.length) + (32 * arg5.length) + 260] = arg3
        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 100
        mem[(32 * arg4.length) + (32 * arg5.length) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(32 * arg4.length) + (32 * arg5.length) + 192 len 4] = unknown_0x23b872dd(?????)
        mem[64] = (32 * arg4.length) + (32 * arg5.length) + 356
        mem[(32 * arg4.length) + (32 * arg5.length) + 292] = 32
        mem[(32 * arg4.length) + (32 * arg5.length) + 324] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * arg4.length) + (32 * arg5.length) + 462 len 26]
        if ext_code.size(arg2) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * arg4.length) + (32 * arg5.length) + 356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
        mem[(32 * arg4.length) + (32 * arg5.length) + 480 len 4] = 0
        mem[(32 * arg4.length) + (32 * arg5.length) + 452 len 0] = 0
        call arg2 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 480, mem[(32 * arg4.length) + (32 * arg5.length) + 452 len 4]
        if not return_data.size:
            if not ext_call.success:
                if (32 * arg4.length) + (32 * arg5.length) + 32 > 0:
                    revert with arg1, mem[160 len (32 * arg4.length) + (32 * arg5.length)]
                revert with 0, 'SafeERC20: low-level call failed'
            if (32 * arg4.length) + (32 * arg5.length) + 32 <= 0:
                idx = 0
                while idx < arg4.length:
                    require idx < arg5.length
                    _1002 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + arg5 + 36)]
                    _1003 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1003 + 32] = mem[_1003 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[64] = _1002 + 164
                    mem[_1002 + 100] = 32
                    mem[_1002 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1002 + 270 len 26]
                    if ext_code.size(arg2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1074 = mem[_1003]
                    t = _1003 + 32
                    u = mem[64]
                    s = mem[_1003]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1003])] = mem[_1003 + floor32(mem[_1003]) + -(mem[_1003] % 32) + 64 len mem[_1003] % 32] or Mask(8 * -(mem[_1003] % 32) + 32, -(8 * -(mem[_1003] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1003])])
                    call arg2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1074 + _1002 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        _1425 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_1002 + 100]
                        _1427 = mem[_1002 + 100]
                        idx = 0
                        while idx < _1427:
                            mem[_1425 + idx + 68] = mem[_1002 + idx + 132]
                            idx = idx + 32
                            continue 
                        if not _1427 % 32:
                            revert with memory
                              from mem[64]
                               len _1427 + _1425 + -mem[64] + 68
                        mem[floor32(_1427) + _1425 + 68] = mem[floor32(_1427) + _1425 + -(_1427 % 32) + 100 len _1427 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_1427) + _1425 + -mem[64] + 100
                    _1401 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1401] = return_data.size
                    mem[_1401 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_1401 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1429 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1002 + 100]
                    _1431 = mem[_1002 + 100]
                    idx = 0
                    while idx < _1431:
                        mem[_1429 + idx + 68] = mem[_1002 + idx + 132]
                        idx = idx + 32
                        continue 
                    if not _1431 % 32:
                        revert with memory
                          from mem[64]
                           len _1431 + _1429 + -mem[64] + 68
                    mem[floor32(_1431) + _1429 + 68] = mem[floor32(_1431) + _1429 + -(_1431 % 32) + 100 len _1431 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1431) + _1429 + -mem[64] + 100
            else:
                require (32 * arg4.length) + (32 * arg5.length) + 32 >= 32
                if not arg1:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * arg4.length) + (32 * arg5.length) + 466 len 14],
                                0,
                                mem[(32 * arg4.length) + (32 * arg5.length) + 484 len 4]
                idx = 0
                while idx < arg4.length:
                    require idx < arg5.length
                    _1006 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + arg5 + 36)]
                    _1007 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1007 + 32] = mem[_1007 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[64] = _1006 + 164
                    mem[_1006 + 100] = 32
                    mem[_1006 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1006 + 270 len 26]
                    if ext_code.size(arg2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1078 = mem[_1007]
                    t = _1007 + 32
                    u = mem[64]
                    s = mem[_1007]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1007])] = mem[_1007 + floor32(mem[_1007]) + -(mem[_1007] % 32) + 64 len mem[_1007] % 32] or Mask(8 * -(mem[_1007] % 32) + 32, -(8 * -(mem[_1007] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1007])])
                    call arg2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1078 + _1006 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        _1433 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_1006 + 100]
                        _1435 = mem[_1006 + 100]
                        idx = 0
                        while idx < _1435:
                            mem[_1433 + idx + 68] = mem[_1006 + idx + 132]
                            idx = idx + 32
                            continue 
                        if not _1435 % 32:
                            revert with memory
                              from mem[64]
                               len _1435 + _1433 + -mem[64] + 68
                        mem[floor32(_1435) + _1433 + 68] = mem[floor32(_1435) + _1433 + -(_1435 % 32) + 100 len _1435 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_1435) + _1433 + -mem[64] + 100
                    _1402 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1402] = return_data.size
                    mem[_1402 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_1402 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1437 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1006 + 100]
                    _1439 = mem[_1006 + 100]
                    idx = 0
                    while idx < _1439:
                        mem[_1437 + idx + 68] = mem[_1006 + idx + 132]
                        idx = idx + 32
                        continue 
                    if not _1439 % 32:
                        revert with memory
                          from mem[64]
                           len _1439 + _1437 + -mem[64] + 68
                    mem[floor32(_1439) + _1437 + 68] = mem[floor32(_1439) + _1437 + -(_1439 % 32) + 100 len _1439 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1439) + _1437 + -mem[64] + 100
        else:
            mem[64] = (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 357
            mem[(32 * arg4.length) + (32 * arg5.length) + 356] = return_data.size
            mem[(32 * arg4.length) + (32 * arg5.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                idx = 0
                while idx < arg4.length:
                    require idx < arg5.length
                    _1010 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + arg5 + 36)]
                    _1011 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1011 + 32] = mem[_1011 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[64] = _1010 + 164
                    mem[_1010 + 100] = 32
                    mem[_1010 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1010 + 270 len 26]
                    if ext_code.size(arg2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1082 = mem[_1011]
                    t = _1011 + 32
                    u = mem[64]
                    s = mem[_1011]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1011])] = mem[_1011 + floor32(mem[_1011]) + -(mem[_1011] % 32) + 64 len mem[_1011] % 32] or Mask(8 * -(mem[_1011] % 32) + 32, -(8 * -(mem[_1011] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1011])])
                    call arg2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1082 + _1010 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        _1441 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_1010 + 100]
                        _1443 = mem[_1010 + 100]
                        idx = 0
                        while idx < _1443:
                            mem[_1441 + idx + 68] = mem[_1010 + idx + 132]
                            idx = idx + 32
                            continue 
                        if not _1443 % 32:
                            revert with memory
                              from mem[64]
                               len _1443 + _1441 + -mem[64] + 68
                        mem[floor32(_1443) + _1441 + 68] = mem[floor32(_1443) + _1441 + -(_1443 % 32) + 100 len _1443 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_1443) + _1441 + -mem[64] + 100
                    _1403 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1403] = return_data.size
                    mem[_1403 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_1403 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1445 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1010 + 100]
                    _1447 = mem[_1010 + 100]
                    idx = 0
                    while idx < _1447:
                        mem[_1445 + idx + 68] = mem[_1010 + idx + 132]
                        idx = idx + 32
                        continue 
                    if not _1447 % 32:
                        revert with memory
                          from mem[64]
                           len _1447 + _1445 + -mem[64] + 68
                    mem[floor32(_1447) + _1445 + 68] = mem[floor32(_1447) + _1445 + -(_1447 % 32) + 100 len _1447 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1447) + _1445 + -mem[64] + 100
            else:
                require return_data.size >= 32
                if not mem[(32 * arg4.length) + (32 * arg5.length) + 388]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 467 len 22]
                idx = 0
                while idx < arg4.length:
                    require idx < arg5.length
                    _1014 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + arg5 + 36)]
                    _1015 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1015 + 32] = mem[_1015 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[64] = _1014 + 164
                    mem[_1014 + 100] = 32
                    mem[_1014 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1014 + 270 len 26]
                    if ext_code.size(arg2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1086 = mem[_1015]
                    t = _1015 + 32
                    u = mem[64]
                    s = mem[_1015]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1015])] = mem[_1015 + floor32(mem[_1015]) + -(mem[_1015] % 32) + 64 len mem[_1015] % 32] or Mask(8 * -(mem[_1015] % 32) + 32, -(8 * -(mem[_1015] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1015])])
                    call arg2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1086 + _1014 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        _1449 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_1014 + 100]
                        _1451 = mem[_1014 + 100]
                        idx = 0
                        while idx < _1451:
                            mem[_1449 + idx + 68] = mem[_1014 + idx + 132]
                            idx = idx + 32
                            continue 
                        if not _1451 % 32:
                            revert with memory
                              from mem[64]
                               len _1451 + _1449 + -mem[64] + 68
                        mem[floor32(_1451) + _1449 + 68] = mem[floor32(_1451) + _1449 + -(_1451 % 32) + 100 len _1451 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_1451) + _1449 + -mem[64] + 100
                    _1404 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1404] = return_data.size
                    mem[_1404 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_1404 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1453 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1014 + 100]
                    _1455 = mem[_1014 + 100]
                    idx = 0
                    while idx < _1455:
                        mem[_1453 + idx + 68] = mem[_1014 + idx + 132]
                        idx = idx + 32
                        continue 
                    if not _1455 % 32:
                        revert with memory
                          from mem[64]
                           len _1455 + _1453 + -mem[64] + 68
                    mem[floor32(_1455) + _1453 + 68] = mem[floor32(_1455) + _1453 + -(_1455 % 32) + 100 len _1455 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1455) + _1453 + -mem[64] + 100
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'amount mismatch'
    stor0 = 1
}



}
