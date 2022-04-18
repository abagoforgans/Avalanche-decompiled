contract main {




// =====================  Runtime code  =====================


const name = 'Basic-v1'


function _fallback() payable {
    revert
}

function deposit(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not arg3:
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if arg2 != msg.value:
                if arg2 != -1:
                    revert with 0, 'invalid-ether-amount'
            if arg4:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
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
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg4, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       43,
                       0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536,
                       Mask(168, 32, 'SafeERC20: low-level call failed') >> 32,
                       Mask(88, 64, arg2) >> 64,
                       128,
                       address(arg1),
                       arg2,
                       arg3,
                       arg4
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
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg4, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   43,
                   0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536,
                   mem[ceil32(return_data.size) + 368 len 21],
                   mem[ceil32(return_data.size) + 410 len 11],
                   128,
                   address(arg1),
                   arg2,
                   arg3,
                   arg4
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
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
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
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
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg4, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               43,
               0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536,
               Mask(168, 32, 'SafeERC20: low-level call failed') >> 32,
               Mask(88, 32, ext_call.return_data[0 len 28]) >> 32,
               128,
               address(arg1),
               ext_call.return_data[0],
               arg3,
               arg4
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
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           43,
           0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536,
           mem[ceil32(return_data.size) + 368 len 21],
           mem[ceil32(return_data.size) + 410 len 11],
           128,
           address(arg1),
           ext_call.return_data[0],
           arg3,
           arg4
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
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
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
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
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
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
            mem[352 len 4] = 0
            call arg1 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
                if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                    revert with 0, 32, 42, 0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       52,
                       0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                       mem[344 len 8],
                       0,
                       Mask(160, -256, 0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536, mem[344 len 8], 0) << 352,
                       160,
                       address(arg1),
                       arg2,
                       address(arg3),
                       arg4,
                       arg5
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
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg5, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   52,
                   0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
                   mem[ceil32(return_data.size) + 345 len 12],
                   Mask(160, -256, mem[ceil32(return_data.size) + 345 len 12]) << 352,
                   160,
                   address(arg1),
                   arg2,
                   address(arg3),
                   arg4,
                   arg5
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
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
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
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
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
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
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
    mem[352 len 4] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if arg5:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg5, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               52,
               0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
               mem[344 len 8],
               0,
               Mask(160, -256, 0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536, mem[344 len 8], 0) << 352,
               160,
               address(arg1),
               ext_call.return_data[0],
               address(arg3),
               arg4,
               arg5
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
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg5, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           52,
           0x6c4c6f67576974686472617728616464726573732c75696e743235362c616464726573732c75696e743235362c75696e74323536,
           mem[ceil32(return_data.size) + 345 len 12],
           Mask(160, -256, mem[ceil32(return_data.size) + 345 len 12]) << 352,
           160,
           address(arg1),
           ext_call.return_data[0],
           address(arg3),
           arg4,
           arg5
}



}
