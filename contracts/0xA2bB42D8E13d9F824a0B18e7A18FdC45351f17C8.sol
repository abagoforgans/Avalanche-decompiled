contract main {




// =====================  Runtime code  =====================


const name = 'Basic-v1'


function _fallback() payable {
    revert
}

function depositByAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if arg2:
            require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
            call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                 gas gas_remaining wei
                args arg2, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               43,
               0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536,
               mem[171 len 21],
               mem[213 len 11],
               128,
               address(arg1),
               0,
               0,
               arg2
    require ext_code.size(arg1)
    staticcall arg1.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2:
        require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
        call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
             gas gas_remaining wei
            args arg2, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           43,
           0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536,
           ext_call.return_data[7 len 21],
           Mask(88, -256, ext_call.return_data[7 len 21]) << 424,
           128,
           address(arg1),
           ext_call.return_data[0],
           0,
           arg2
}

function deposit(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not arg3:
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if arg2 != msg.value:
                if arg2 != -1:
                    revert with 0, 'invalid-ether-amount'
            if arg4:
                require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                     gas gas_remaining wei
                    args arg4, msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   43,
                   0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536,
                   mem[171 len 21],
                   mem[213 len 11],
                   128,
                   address(arg1),
                   msg.value,
                   arg3,
                   arg4
        if arg2 != -1:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x29416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call arg1 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
                if arg4:
                    require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                    call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                         gas gas_remaining wei
                        args arg4, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[292] = 43
                mem[324 len 43] = 0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536
                mem[420] = arg1
                mem[452] = arg2
                mem[484] = arg3
                mem[516] = arg4
                mem[64] = 548
                mem[548] = 64
                mem[612] = 43
                mem[644 len 64] = 0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536, 0
                mem[676] = Mask(88, -256, 0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536, 0) << 256
                mem[580] = 160
                mem[708] = mem[388 len 28], 0
                mem[740 len ceil32(mem[388 len 28], 0)] = mem[420 len ceil32(mem[388 len 28], 0)]
                if not mem[388 len 28], 0 % 32:
                    return 64, 160, 43, mem[644 len mem[388 len 28], 0 + 96]
                mem[floor32(mem[388 len 28], 0) + 740] = mem[floor32(mem[388 len 28], 0) + -(mem[388 len 28], 0 % 32) + 772 len mem[388 len 28], 0 % 32]
                return 64, 160, 43, mem[644 len floor32(mem[388 len 28], 0) + 128]
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            if arg4:
                require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                     gas gas_remaining wei
                    args arg4, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 421] = arg1
            mem[ceil32(return_data.size) + 453] = arg2
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x29416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0 len 28]
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call arg1 with:
                 gas gas_remaining wei
                args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
                if arg4:
                    require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                    call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                         gas gas_remaining wei
                        args arg4, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[292] = 43
                mem[324 len 43] = 0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536
                mem[420] = arg1
                mem[452] = ext_call.return_data[0]
                mem[484] = arg3
                mem[516] = arg4
                mem[64] = 548
                mem[548] = 64
                mem[612] = 43
                mem[644 len 64] = 0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536, Mask(168, -512, ext_call.return_data[0 len 28]) << 512
                mem[676] = 0
                mem[580] = 160
                mem[708] = mem[388 len 28], 0
                mem[740 len ceil32(mem[388 len 28], 0)] = mem[420 len ceil32(mem[388 len 28], 0)]
                if not mem[388 len 28], 0 % 32:
                    return 64, 160, 43, mem[644 len mem[388 len 28], 0 + 96]
                mem[floor32(mem[388 len 28], 0) + 740] = mem[floor32(mem[388 len 28], 0) + -(mem[388 len 28], 0 % 32) + 772 len mem[388 len 28], 0 % 32]
                return 64, 160, 43, mem[644 len floor32(mem[388 len 28], 0) + 128]
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            if arg4:
                require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                     gas gas_remaining wei
                    args arg4, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 421] = arg1
            mem[ceil32(return_data.size) + 453] = ext_call.return_data[0]
    else:
        require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
        call 0x948b13a4746960ad46a5ceef6c237845ad746227.0xa9c70eaa with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if ext_call.return_data[0] != msg.value:
                if ext_call.return_data[0] != -1:
                    revert with 0, 'invalid-ether-amount'
            if arg4:
                require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                     gas gas_remaining wei
                    args arg4, msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   43,
                   0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536,
                   mem[171 len 21],
                   mem[213 len 11],
                   128,
                   address(arg1),
                   msg.value,
                   arg3,
                   arg4
        if ext_call.return_data[0] == -1:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x29416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0 len 28]
        mem[416 len 4] = 0
        mem[388 len 0] = 0
        call arg1 with:
             gas gas_remaining wei
            args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            if arg4:
                require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                     gas gas_remaining wei
                    args arg4, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[292] = 43
            mem[324 len 43] = 0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536
            mem[420] = arg1
            mem[452] = ext_call.return_data[0]
            mem[484] = arg3
            mem[516] = arg4
            mem[64] = 548
            mem[548] = 64
            mem[612] = 43
            mem[644 len 64] = 0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536, Mask(168, -512, ext_call.return_data[0 len 28]) << 512
            mem[676] = 0
            mem[580] = 160
            mem[708] = mem[388 len 28], 0
            mem[740 len ceil32(mem[388 len 28], 0)] = mem[420 len ceil32(mem[388 len 28], 0)]
            if not mem[388 len 28], 0 % 32:
                return 64, 160, 43, mem[644 len mem[388 len 28], 0 + 96]
            mem[floor32(mem[388 len 28], 0) + 740] = mem[floor32(mem[388 len 28], 0) + -(mem[388 len 28], 0 % 32) + 772 len mem[388 len 28], 0 % 32]
            return 64, 160, 43, mem[644 len floor32(mem[388 len 28], 0) + 128]
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if arg4:
            require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
            call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                 gas gas_remaining wei
                args arg4, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 421] = arg1
        mem[ceil32(return_data.size) + 453] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 485] = arg3
    mem[ceil32(return_data.size) + 517] = arg4
    mem[ceil32(return_data.size) + 549] = 64
    mem[ceil32(return_data.size) + 613] = 43
    mem[ceil32(return_data.size) + 645 len 64] = 0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[ceil32(return_data.size) + 368 len 21]
    mem[ceil32(return_data.size) + 677] = mem[ceil32(return_data.size) + 410 len 11]
    mem[ceil32(return_data.size) + 581] = 160
    mem[ceil32(return_data.size) + 709] = mem[ceil32(return_data.size) + 389]
    mem[ceil32(return_data.size) + 741 len ceil32(mem[ceil32(return_data.size) + 389])] = mem[ceil32(return_data.size) + 421 len ceil32(mem[ceil32(return_data.size) + 389])]
    if not mem[ceil32(return_data.size) + 389] % 32:
        return 64, 
               160,
               43,
               0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536,
               mem[ceil32(return_data.size) + 368 len 21],
               mem[ceil32(return_data.size) + 677 len mem[ceil32(return_data.size) + 389] + 64]
    mem[floor32(mem[ceil32(return_data.size) + 389]) + ceil32(return_data.size) + 741] = mem[floor32(mem[ceil32(return_data.size) + 389]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 389] % 32) + 773 len mem[ceil32(return_data.size) + 389] % 32]
    return 64, 
           160,
           43,
           0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536,
           mem[ceil32(return_data.size) + 368 len 21],
           mem[ceil32(return_data.size) + 410 len 11],
           mem[ceil32(return_data.size) + 389],
           mem[ceil32(return_data.size) + 741 len floor32(mem[ceil32(return_data.size) + 389]) + 32]
}

function withdraw(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if not arg4:
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if arg2 == -1:
                call arg3 with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if arg5:
                    require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                    call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                         gas gas_remaining wei
                        args arg5, eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if not return_data.size:
                    return 64, 
                           160,
                           52,
                           0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                           mem[180 len 12],
                           Mask(160, -256, mem[180 len 12]) << 352,
                           160,
                           address(arg1),
                           eth.balance(this.address),
                           address(arg3),
                           arg4,
                           arg5
                return 64, 
                       160,
                       52,
                       0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                       mem[ceil32(return_data.size) + 181 len 12],
                       Mask(160, -256, mem[ceil32(return_data.size) + 181 len 12]) << 352,
                       160,
                       address(arg1),
                       eth.balance(this.address),
                       address(arg3),
                       arg4,
                       arg5
            call arg3 with:
               value arg2 wei
                 gas gas_remaining wei
            if arg5:
                require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                     gas gas_remaining wei
                    args arg5, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if not return_data.size:
                return 64, 
                       160,
                       52,
                       0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                       mem[180 len 12],
                       Mask(160, -256, mem[180 len 12]) << 352,
                       160,
                       address(arg1),
                       arg2,
                       address(arg3),
                       arg4,
                       arg5
            return 64, 
                   160,
                   52,
                   0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                   mem[ceil32(return_data.size) + 181 len 12],
                   Mask(160, -256, mem[ceil32(return_data.size) + 181 len 12]) << 352,
                   160,
                   address(arg1),
                   arg2,
                   address(arg3),
                   arg4,
                   arg5
        if arg2 != -1:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x29416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
            mem[352 len 4] = 0
            mem[324 len 0] = 0
            call arg1 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, arg2
                if not transfer(address rg1, uint256 rg2), address(arg3) << 64:
                    revert with 0, 32, 42, 0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if arg5:
                    require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                    call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                         gas gas_remaining wei
                        args arg5, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[388] = arg1
                mem[420] = arg2
                mem[452] = arg3
                mem[484] = arg4
                mem[516] = arg5
                mem[548] = 64
                mem[612] = 52
                mem[644 len 64] = 0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536, mem[344 len 8], 0
                mem[676] = Mask(160, -256, 0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536, mem[344 len 8], 0) << 256
                mem[580] = 160
                mem[708] = mem[356]
                mem[740 len ceil32(mem[356])] = mem[388 len ceil32(mem[356])]
                if not mem[356] % 32:
                    return 64, 
                           160,
                           52,
                           0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                           mem[344 len 8],
                           0,
                           Mask(160, -256, 0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536, mem[344 len 8], 0) << 352,
                           mem[708 len mem[356] + 32]
                mem[floor32(mem[356]) + 740] = mem[floor32(mem[356]) + -(mem[356] % 32) + 772 len mem[356] % 32]
                return 64, 
                       160,
                       52,
                       0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                       mem[344 len 8],
                       0,
                       Mask(160, -256, 0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536, mem[344 len 8], 0) << 352,
                       mem[356],
                       mem[740 len floor32(mem[356]) + 32]
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if arg5:
                require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                     gas gas_remaining wei
                    args arg5, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 389] = arg1
            mem[ceil32(return_data.size) + 421] = arg2
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x29416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
            mem[352 len 4] = 0
            mem[324 len 0] = 0
            call arg1 with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, ext_call.return_data[0]
                if not transfer(address rg1, uint256 rg2), address(arg3) << 64:
                    revert with 0, 32, 42, 0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if arg5:
                    require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                    call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                         gas gas_remaining wei
                        args arg5, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[388] = arg1
                mem[420] = ext_call.return_data[0]
                mem[452] = arg3
                mem[484] = arg4
                mem[516] = arg5
                mem[548] = 64
                mem[612] = 52
                mem[644 len 64] = 0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536, mem[344 len 8], 0
                mem[676] = Mask(160, -256, 0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536, mem[344 len 8], 0) << 256
                mem[580] = 160
                mem[708] = mem[356]
                mem[740 len ceil32(mem[356])] = mem[388 len ceil32(mem[356])]
                if not mem[356] % 32:
                    return 64, 
                           160,
                           52,
                           0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                           mem[344 len 8],
                           0,
                           Mask(160, -256, 0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536, mem[344 len 8], 0) << 352,
                           mem[708 len mem[356] + 32]
                mem[floor32(mem[356]) + 740] = mem[floor32(mem[356]) + -(mem[356] % 32) + 772 len mem[356] % 32]
                return 64, 
                       160,
                       52,
                       0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                       mem[344 len 8],
                       0,
                       Mask(160, -256, 0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536, mem[344 len 8], 0) << 352,
                       mem[356],
                       mem[740 len floor32(mem[356]) + 32]
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if arg5:
                require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                     gas gas_remaining wei
                    args arg5, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 389] = arg1
            mem[ceil32(return_data.size) + 421] = ext_call.return_data[0]
    else:
        require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
        call 0x948b13a4746960ad46a5ceef6c237845ad746227.0xa9c70eaa with:
             gas gas_remaining wei
            args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if ext_call.return_data[0] == -1:
                call arg3 with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if arg5:
                    require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                    call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                         gas gas_remaining wei
                        args arg5, eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if not return_data.size:
                    return 64, 
                           160,
                           52,
                           0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                           mem[180 len 12],
                           Mask(160, -256, mem[180 len 12]) << 352,
                           160,
                           address(arg1),
                           eth.balance(this.address),
                           address(arg3),
                           arg4,
                           arg5
                return 64, 
                       160,
                       52,
                       0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                       mem[ceil32(return_data.size) + 181 len 12],
                       Mask(160, -256, mem[ceil32(return_data.size) + 181 len 12]) << 352,
                       160,
                       address(arg1),
                       eth.balance(this.address),
                       address(arg3),
                       arg4,
                       arg5
            call arg3 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
            if arg5:
                require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                     gas gas_remaining wei
                    args arg5, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if not return_data.size:
                return 64, 
                       160,
                       52,
                       0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                       mem[180 len 12],
                       Mask(160, -256, mem[180 len 12]) << 352,
                       160,
                       address(arg1),
                       ext_call.return_data[0],
                       address(arg3),
                       arg4,
                       arg5
            return 64, 
                   160,
                   52,
                   0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                   mem[ceil32(return_data.size) + 181 len 12],
                   Mask(160, -256, mem[ceil32(return_data.size) + 181 len 12]) << 352,
                   160,
                   address(arg1),
                   ext_call.return_data[0],
                   address(arg3),
                   arg4,
                   arg5
        if ext_call.return_data[0] == -1:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x29416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
        mem[352 len 4] = 0
        mem[324 len 0] = 0
        call arg1 with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, ext_call.return_data[0]
            if not transfer(address rg1, uint256 rg2), address(arg3) << 64:
                revert with 0, 32, 42, 0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if arg5:
                require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
                call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                     gas gas_remaining wei
                    args arg5, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[388] = arg1
            mem[420] = ext_call.return_data[0]
            mem[452] = arg3
            mem[484] = arg4
            mem[516] = arg5
            mem[548] = 64
            mem[612] = 52
            mem[644 len 64] = 0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536, mem[344 len 8], 0
            mem[676] = Mask(160, -256, 0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536, mem[344 len 8], 0) << 256
            mem[580] = 160
            mem[708] = mem[356]
            mem[740 len ceil32(mem[356])] = mem[388 len ceil32(mem[356])]
            if not mem[356] % 32:
                return 64, 
                       160,
                       52,
                       0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                       mem[344 len 8],
                       0,
                       Mask(160, -256, 0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536, mem[344 len 8], 0) << 352,
                       mem[708 len mem[356] + 32]
            mem[floor32(mem[356]) + 740] = mem[floor32(mem[356]) + -(mem[356] % 32) + 772 len mem[356] % 32]
            return 64, 
                   160,
                   52,
                   0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                   mem[344 len 8],
                   0,
                   Mask(160, -256, 0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536, mem[344 len 8], 0) << 352,
                   mem[356],
                   mem[740 len floor32(mem[356]) + 32]
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if arg5:
            require ext_code.size(0x948b13a4746960ad46a5ceef6c237845ad746227)
            call 0x948b13a4746960ad46a5ceef6c237845ad746227.0x61e3c944 with:
                 gas gas_remaining wei
                args arg5, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 389] = arg1
        mem[ceil32(return_data.size) + 421] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 453] = arg3
    mem[ceil32(return_data.size) + 485] = arg4
    mem[ceil32(return_data.size) + 517] = arg5
    mem[ceil32(return_data.size) + 549] = 64
    mem[ceil32(return_data.size) + 613] = 52
    mem[ceil32(return_data.size) + 645 len 64] = 0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536, mem[ceil32(return_data.size) + 345 len 12]
    mem[ceil32(return_data.size) + 677] = Mask(160, -256, mem[ceil32(return_data.size) + 345 len 12]) << 256
    mem[ceil32(return_data.size) + 581] = 160
    mem[ceil32(return_data.size) + 709] = mem[ceil32(return_data.size) + 357]
    mem[ceil32(return_data.size) + 741 len ceil32(mem[ceil32(return_data.size) + 357])] = mem[ceil32(return_data.size) + 389 len ceil32(mem[ceil32(return_data.size) + 357])]
    if not mem[ceil32(return_data.size) + 357] % 32:
        return 64, 
               160,
               52,
               0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
               mem[ceil32(return_data.size) + 345 len 12],
               Mask(160, -256, mem[ceil32(return_data.size) + 345 len 12]) << 352,
               mem[ceil32(return_data.size) + 709 len mem[ceil32(return_data.size) + 357] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 357]) + ceil32(return_data.size) + 741] = mem[floor32(mem[ceil32(return_data.size) + 357]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 357] % 32) + 773 len mem[ceil32(return_data.size) + 357] % 32]
    return 64, 
           160,
           52,
           0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
           mem[ceil32(return_data.size) + 345 len 12],
           Mask(160, -256, mem[ceil32(return_data.size) + 345 len 12]) << 352,
           mem[ceil32(return_data.size) + 357],
           mem[ceil32(return_data.size) + 741 len floor32(mem[ceil32(return_data.size) + 357]) + 32]
}



}
