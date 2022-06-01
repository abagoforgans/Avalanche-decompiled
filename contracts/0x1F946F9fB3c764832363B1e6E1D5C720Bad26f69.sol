contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_c065006d(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with 0, 'errore 1 errore'
    require return_data.size >= 32
    require arg4 < 6
    require arg5 < 6
    if arg3 > 0:
        revert with 0, 'errore'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(stor[arg4])
    if not ext_call.success:
        revert with 0, 'errore 2 errore'
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg3:
        mem[96] = 2
        mem[192] = 2
        mem[128] = arg1
        mem[160] = arg2
        mem[224] = arg2
        mem[256] = arg1
        mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 1
        mem[388] = this.address
        mem[420] = block.timestamp
        mem[356] = 160
        mem[452] = 2
        mem[484 len 0] = None
        require ext_code.size(address(stor[arg4]))
        call address(stor[arg4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, 1, Array(len=2, data=mem[484 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _727 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _740 = mem[_727 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_727 + 288])] = mem[_727 + 320 len floor32(mem[_727 + 288])]
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(stor[arg5])
        if not ext_call.success:
            revert with 0, 'errore 3 errore'
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            mem[(32 * _740) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _740) + ceil32(return_data.size) + 324] = ext_call.return_data[0]
            mem[(32 * _740) + ceil32(return_data.size) + 356] = arg3
            mem[(32 * _740) + ceil32(return_data.size) + 420] = msg.sender
            mem[(32 * _740) + ceil32(return_data.size) + 452] = block.timestamp
            mem[(32 * _740) + ceil32(return_data.size) + 388] = 160
            mem[(32 * _740) + ceil32(return_data.size) + 484] = 2
            mem[(32 * _740) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(address(stor[arg5]))
            call address(stor[arg5]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg3, Array(len=2, data=mem[(32 * _740) + ceil32(return_data.size) + 516 len 64]), msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _740) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _740) + (2 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            require mem[(32 * _740) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _740) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * _740) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * _740) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _740) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _740) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * _740) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        else:
            require ext_code.size(arg2)
            staticcall arg2.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(stor[arg5])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _740) + ceil32(return_data.size) + 442 len 10]
            mem[(32 * _740) + ceil32(return_data.size) + 356] = address(stor[arg5])
            mem[(32 * _740) + ceil32(return_data.size) + 388] = -1
            mem[(32 * _740) + ceil32(return_data.size) + 320] = 68
            mem[(32 * _740) + ceil32(return_data.size) + 356 len 28] = Mask(224, 0, stor[arg5])
            mem[(32 * _740) + ceil32(return_data.size) + 352 len 4] = approve(address arg1, uint256 arg2)
            mem[(32 * _740) + ceil32(return_data.size) + 420] = 32
            mem[(32 * _740) + ceil32(return_data.size) + 452] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _740) + ceil32(return_data.size) + 590 len 26]
            if ext_code.size(arg2) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _740) + ceil32(return_data.size) + 484 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor[arg5]), uint32(stor[arg5]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _740) + ceil32(return_data.size) + 576 len 4] = 0
            call arg2 with:
               funct uint32(stor[arg5])
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(32 * _740) + ceil32(return_data.size) + 548 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with uint16(arg1)
            mem[(32 * _740) + ceil32(return_data.size) + 484] = return_data.size
            mem[(32 * _740) + ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(32 * _740) + ceil32(return_data.size) + 516]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 595 len 22]
            mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
            mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = arg3
            mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 585] = msg.sender
            mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = block.timestamp
            mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = 160
            mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = 2
            mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 0] = None
            require ext_code.size(address(stor[arg5]))
            call address(stor[arg5]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg3, Array(len=2, data=mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 64]), msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _740) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485
            require return_data.size >= 32
            require mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + (32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 485] <= 4294967296 and mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + (32 * _740) + ceil32(return_data.size) + ceil32(return_data.size) + 485]) + 32 <= return_data.size
    else:
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(stor[arg4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
        mem[132] = address(stor[arg4])
        mem[164] = -1
        mem[96] = 68
        mem[132 len 28] = Mask(224, 0, stor[arg4])
        mem[128 len 4] = approve(address arg1, uint256 arg2)
        mem[196] = 32
        mem[228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor[arg4]), uint32(stor[arg4]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[352 len 4] = 0
        call arg1 with:
           funct uint32(stor[arg4])
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor[arg4]), uint32(stor[arg4]), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor[arg4]):
                revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            mem[260] = 2
            mem[356] = 2
            mem[292] = arg1
            mem[324] = arg2
            mem[388] = arg2
            mem[420] = arg1
            mem[452] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[456] = arg3
            mem[488] = 1
            mem[552] = this.address
            mem[584] = block.timestamp
            mem[520] = 160
            mem[616] = 2
            mem[648 len 0] = None
            require ext_code.size(address(stor[arg4]))
            call address(stor[arg4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, 1, Array(len=2, data=mem[648 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 452
            require return_data.size >= 32
            _1427 = mem[452 len 4], Mask(224, 32, arg3) >> 32
            require mem[452 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[452 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[452 len 4], Mask(224, 32, arg3) >> 32 + 452] <= 4294967296 and mem[452 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[452 len 4], Mask(224, 32, arg3) >> 32 + 452]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 452] = mem[mem[452 len 4], Mask(224, 32, arg3) >> 32 + 452]
            _1442 = mem[_1427 + 452]
            mem[ceil32(return_data.size) + 484 len floor32(mem[_1427 + 452])] = mem[_1427 + 484 len floor32(mem[_1427 + 452])]
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            staticcall arg2.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(stor[arg5])
            if not ext_call.success:
                revert with 0, 'errore 3 errore'
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                mem[(32 * _1442) + ceil32(return_data.size) + 484] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1442) + ceil32(return_data.size) + 488] = ext_call.return_data[0]
                mem[(32 * _1442) + ceil32(return_data.size) + 520] = arg3
                mem[(32 * _1442) + ceil32(return_data.size) + 584] = msg.sender
                mem[(32 * _1442) + ceil32(return_data.size) + 616] = block.timestamp
                mem[(32 * _1442) + ceil32(return_data.size) + 552] = 160
                mem[(32 * _1442) + ceil32(return_data.size) + 648] = 2
                mem[(32 * _1442) + ceil32(return_data.size) + 680 len 0] = None
                require ext_code.size(address(stor[arg5]))
                call address(stor[arg5]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg3, Array(len=2, data=mem[(32 * _1442) + ceil32(return_data.size) + 680 len 64]), msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1442) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1442) + (2 * ceil32(return_data.size)) + 484
                require return_data.size >= 32
                require mem[(32 * _1442) + ceil32(return_data.size) + 484 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _1442) + ceil32(return_data.size) + 484 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[(32 * _1442) + ceil32(return_data.size) + 484 len 4], ext_call.return_data[0 len 28] + (32 * _1442) + ceil32(return_data.size) + 484] <= 4294967296 and mem[(32 * _1442) + ceil32(return_data.size) + 484 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _1442) + ceil32(return_data.size) + 484 len 4], ext_call.return_data[0 len 28] + (32 * _1442) + ceil32(return_data.size) + 484]) + 32 <= return_data.size
            else:
                require ext_code.size(arg2)
                staticcall arg2.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(stor[arg5])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(32 * _1442) + ceil32(return_data.size) + 606 len 10]
                mem[(32 * _1442) + ceil32(return_data.size) + 520] = address(stor[arg5])
                mem[(32 * _1442) + ceil32(return_data.size) + 552] = -1
                mem[(32 * _1442) + ceil32(return_data.size) + 484] = 68
                mem[(32 * _1442) + ceil32(return_data.size) + 520 len 28] = Mask(224, 0, stor[arg5])
                mem[(32 * _1442) + ceil32(return_data.size) + 516 len 4] = approve(address arg1, uint256 arg2)
                mem[(32 * _1442) + ceil32(return_data.size) + 584] = 32
                mem[(32 * _1442) + ceil32(return_data.size) + 616] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1442) + ceil32(return_data.size) + 754 len 26]
                if ext_code.size(arg2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1442) + ceil32(return_data.size) + 648 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor[arg5]), uint32(stor[arg5]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[(32 * _1442) + ceil32(return_data.size) + 740 len 4] = 0
                call arg2 with:
                   funct uint32(stor[arg5])
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(32 * _1442) + ceil32(return_data.size) + 712 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor[arg4]), uint32(stor[arg4]), -1
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor[arg4]):
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _1442) + ceil32(return_data.size) + 758 len 22]
                    mem[(32 * _1442) + ceil32(return_data.size) + 648] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1442) + ceil32(return_data.size) + 652] = ext_call.return_data[0]
                    mem[(32 * _1442) + ceil32(return_data.size) + 684] = arg3
                    mem[(32 * _1442) + ceil32(return_data.size) + 748] = msg.sender
                    mem[(32 * _1442) + ceil32(return_data.size) + 780] = block.timestamp
                    mem[(32 * _1442) + ceil32(return_data.size) + 716] = 160
                    mem[(32 * _1442) + ceil32(return_data.size) + 812] = 2
                    mem[(32 * _1442) + ceil32(return_data.size) + 844 len 0] = None
                    require ext_code.size(address(stor[arg5]))
                    call address(stor[arg5]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(32 * _1442) + ceil32(return_data.size) + 844 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1442) + ceil32(return_data.size) + 648 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1442) + (2 * ceil32(return_data.size)) + 648
                    require return_data.size >= 32
                    require mem[(32 * _1442) + ceil32(return_data.size) + 648 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _1442) + ceil32(return_data.size) + 648 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * _1442) + ceil32(return_data.size) + 648 len 4], ext_call.return_data[0 len 28] + (32 * _1442) + ceil32(return_data.size) + 648] <= 4294967296 and mem[(32 * _1442) + ceil32(return_data.size) + 648 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _1442) + ceil32(return_data.size) + 648 len 4], ext_call.return_data[0 len 28] + (32 * _1442) + ceil32(return_data.size) + 648]) + 32 <= return_data.size
                else:
                    mem[(32 * _1442) + ceil32(return_data.size) + 648] = return_data.size
                    mem[(32 * _1442) + ceil32(return_data.size) + 680 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1442) + ceil32(return_data.size) + 680]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 759 len 22]
                    mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 653] = ext_call.return_data[0]
                    mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 685] = arg3
                    mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 749] = msg.sender
                    mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 781] = block.timestamp
                    mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 717] = 160
                    mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 813] = 2
                    mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 845 len 0] = None
                    require ext_code.size(address(stor[arg5]))
                    call address(stor[arg5]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 845 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1442) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                    require return_data.size >= 32
                    require mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4], ext_call.return_data[0 len 28] + (32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 649] <= 4294967296 and mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4], ext_call.return_data[0 len 28] + (32 * _1442) + ceil32(return_data.size) + ceil32(return_data.size) + 649]) + 32 <= return_data.size
        else:
            mem[260] = return_data.size
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                mem[ceil32(return_data.size) + 261] = 2
                mem[ceil32(return_data.size) + 357] = 2
                mem[ceil32(return_data.size) + 293] = arg1
                mem[ceil32(return_data.size) + 325] = arg2
                mem[ceil32(return_data.size) + 389] = arg2
                mem[ceil32(return_data.size) + 421] = arg1
                mem[ceil32(return_data.size) + 453] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 457] = arg3
                mem[ceil32(return_data.size) + 489] = 1
                mem[ceil32(return_data.size) + 553] = this.address
                mem[ceil32(return_data.size) + 585] = block.timestamp
                mem[ceil32(return_data.size) + 521] = 160
                mem[ceil32(return_data.size) + 617] = 2
                mem[ceil32(return_data.size) + 649 len 0] = None
                require ext_code.size(address(stor[arg4]))
                call address(stor[arg4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, 1, Array(len=2, data=mem[ceil32(return_data.size) + 649 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 453
                require return_data.size >= 32
                _1429 = mem[ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg3) >> 32
                require mem[ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg3) >> 32 + ceil32(return_data.size) + 453] <= 4294967296 and mem[ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg3) >> 32 + ceil32(return_data.size) + 453]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 453] = mem[mem[ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg3) >> 32 + ceil32(return_data.size) + 453]
                _1443 = mem[_1429 + ceil32(return_data.size) + 453]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 485 len floor32(mem[_1429 + ceil32(return_data.size) + 453])] = mem[_1429 + ceil32(return_data.size) + 485 len floor32(mem[_1429 + ceil32(return_data.size) + 453])]
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                staticcall arg2.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(stor[arg5])
                if not ext_call.success:
                    revert with 0, 'errore 3 errore'
                require return_data.size >= 32
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = arg3
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 585] = msg.sender
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = block.timestamp
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = 160
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = 2
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 0] = None
                    require ext_code.size(address(stor[arg5]))
                    call address(stor[arg5]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1443) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 485
                    require return_data.size >= 32
                    require mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + (32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 485] <= 4294967296 and mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + (32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 485]) + 32 <= return_data.size
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(stor[arg5])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 607 len 10]
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = address(stor[arg5])
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = -1
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = 68
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 28] = Mask(224, 0, stor[arg5])
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len 4] = approve(address arg1, uint256 arg2)
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 585] = 32
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 755 len 26]
                    if ext_code.size(arg2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor[arg5]), uint32(stor[arg5]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 741 len 4] = 0
                    call arg2 with:
                       funct uint32(stor[arg5])
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor[arg4]), uint32(stor[arg4]), -1
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor[arg4]):
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 759 len 22]
                        mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 653] = ext_call.return_data[0]
                        mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 685] = arg3
                        mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 749] = msg.sender
                        mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 781] = block.timestamp
                        mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 717] = 160
                        mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 813] = 2
                        mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 845 len 0] = None
                        require ext_code.size(address(stor[arg5]))
                        call address(stor[arg5]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg3, Array(len=2, data=mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 845 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1443) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 649
                        require return_data.size >= 32
                        require mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4], ext_call.return_data[0 len 28] + (32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 649] <= 4294967296 and mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4], ext_call.return_data[0 len 28] + (32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 649]) + 32 <= return_data.size
                    else:
                        mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = return_data.size
                        mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _1443) + ceil32(return_data.size) + ceil32(return_data.size) + 681]:
                                mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 650] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 654] = 32
                                mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 686] = 42
                                mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 718 len 42] = 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _1443) + (4 * ceil32(return_data.size)) + 650
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 650] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 654] = ext_call.return_data[0]
                        mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 686] = arg3
                        mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 750] = msg.sender
                        mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 782] = block.timestamp
                        mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 718] = 160
                        mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 814] = 2
                        mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 846 len 0] = None
                        require ext_code.size(address(stor[arg5]))
                        call address(stor[arg5]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 654 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1443) + (6 * ceil32(return_data.size)) + 650
                        require return_data.size >= 32
                        require mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 650 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 650 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 650 len 4], ext_call.return_data[0 len 28] + (32 * _1443) + (4 * ceil32(return_data.size)) + 650] <= 4294967296 and mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 650 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _1443) + (4 * ceil32(return_data.size)) + 650 len 4], ext_call.return_data[0 len 28] + (32 * _1443) + (4 * ceil32(return_data.size)) + 650]) + 32 <= return_data.size
            else:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                mem[ceil32(return_data.size) + 261] = 2
                mem[ceil32(return_data.size) + 357] = 2
                mem[ceil32(return_data.size) + 293] = arg1
                mem[ceil32(return_data.size) + 325] = arg2
                mem[ceil32(return_data.size) + 389] = arg2
                mem[ceil32(return_data.size) + 421] = arg1
                mem[ceil32(return_data.size) + 453] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 457] = arg3
                mem[ceil32(return_data.size) + 489] = 1
                mem[ceil32(return_data.size) + 553] = this.address
                mem[ceil32(return_data.size) + 585] = block.timestamp
                mem[ceil32(return_data.size) + 521] = 160
                mem[ceil32(return_data.size) + 617] = 2
                mem[ceil32(return_data.size) + 649 len 0] = None
                require ext_code.size(address(stor[arg4]))
                call address(stor[arg4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, 1, Array(len=2, data=mem[ceil32(return_data.size) + 649 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 453
                require return_data.size >= 32
                _1431 = mem[ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg3) >> 32
                require mem[ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg3) >> 32 + ceil32(return_data.size) + 453] <= 4294967296 and mem[ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg3) >> 32 + ceil32(return_data.size) + 453]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 453] = mem[mem[ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg3) >> 32 + ceil32(return_data.size) + 453]
                _1444 = mem[_1431 + ceil32(return_data.size) + 453]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 485 len floor32(mem[_1431 + ceil32(return_data.size) + 453])] = mem[_1431 + ceil32(return_data.size) + 485 len floor32(mem[_1431 + ceil32(return_data.size) + 453])]
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                staticcall arg2.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(stor[arg5])
                if not ext_call.success:
                    revert with 0, 'errore 3 errore'
                require return_data.size >= 32
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = arg3
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 585] = msg.sender
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = block.timestamp
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = 160
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = 2
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 0] = None
                    require ext_code.size(address(stor[arg5]))
                    call address(stor[arg5]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1444) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 485
                    require return_data.size >= 32
                    require mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + (32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 485] <= 4294967296 and mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + (32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 485]) + 32 <= return_data.size
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(stor[arg5])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 607 len 10]
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = address(stor[arg5])
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = -1
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = 68
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 28] = Mask(224, 0, stor[arg5])
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len 4] = approve(address arg1, uint256 arg2)
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 585] = 32
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 755 len 26]
                    if ext_code.size(arg2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor[arg5]), uint32(stor[arg5]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 741 len 4] = 0
                    call arg2 with:
                       funct uint32(stor[arg5])
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor[arg4]), uint32(stor[arg4]), -1
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor[arg4]):
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 759 len 22]
                        mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 653] = ext_call.return_data[0]
                        mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 685] = arg3
                        mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 749] = msg.sender
                        mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 781] = block.timestamp
                        mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 717] = 160
                        mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 813] = 2
                        mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 845 len 0] = None
                        require ext_code.size(address(stor[arg5]))
                        call address(stor[arg5]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg3, Array(len=2, data=mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 845 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1444) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 649
                        require return_data.size >= 32
                        require mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4], ext_call.return_data[0 len 28] + (32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 649] <= 4294967296 and mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4], ext_call.return_data[0 len 28] + (32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 649]) + 32 <= return_data.size
                    else:
                        mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = return_data.size
                        mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _1444) + ceil32(return_data.size) + ceil32(return_data.size) + 681]:
                                mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 650] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 654] = 32
                                mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 686] = 42
                                mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 718 len 42] = 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _1444) + (4 * ceil32(return_data.size)) + 650
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 650] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 654] = ext_call.return_data[0]
                        mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 686] = arg3
                        mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 750] = msg.sender
                        mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 782] = block.timestamp
                        mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 718] = 160
                        mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 814] = 2
                        mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 846 len 0] = None
                        require ext_code.size(address(stor[arg5]))
                        call address(stor[arg5]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 654 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1444) + (6 * ceil32(return_data.size)) + 650
                        require return_data.size >= 32
                        require mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 650 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 650 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 650 len 4], ext_call.return_data[0 len 28] + (32 * _1444) + (4 * ceil32(return_data.size)) + 650] <= 4294967296 and mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 650 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _1444) + (4 * ceil32(return_data.size)) + 650 len 4], ext_call.return_data[0 len 28] + (32 * _1444) + (4 * ceil32(return_data.size)) + 650]) + 32 <= return_data.size
}



}
