contract main {




// =====================  Runtime code  =====================


#
#  - rescue()
#  - deposit()
#
address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
    revert
}

function balances() payable {
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if 2 * ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if 3 * ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    return 4 * ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor4)
    staticcall stor4.epoch() with:
            gas gas_remaining wei
    mem[96 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    if arg1 != ext_call.return_data[0]:
        return 0
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'withdraw: no YRT'
        require ext_code.size(stor0)
        call stor0.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'withdraw: no PGL'
        mem[(4 * ceil32(return_data.size)) + 132] = stor2
        mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 196] = 0
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = this.address
        mem[(4 * ceil32(return_data.size)) + 292] = -1
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, stor2, ext_call.return_data[0], 0, 0, this.address, -1
        mem[(4 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 96] = 68
            mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(7 * ceil32(return_data.size)) + 196] = 32
            mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
            mem[(7 * ceil32(return_data.size)) + 328] = 0
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                    if not mem[(7 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'withdraw: no wavax'
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'withdraw: no time'
        require ext_code.size(stor4)
        call stor4.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], msg.sender
    else:
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = this.address
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = 100
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 228] = 32
        mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stor0):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
        mem[(2 * ceil32(return_data.size)) + 392] = 0
        call stor0 with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'withdraw: no YRT'
            require ext_code.size(stor0)
            call stor0.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 296] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'withdraw: no PGL'
            mem[(4 * ceil32(return_data.size)) + 328] = stor2
            mem[(4 * ceil32(return_data.size)) + 360] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 392] = 0
            mem[(4 * ceil32(return_data.size)) + 424] = 0
            mem[(4 * ceil32(return_data.size)) + 456] = this.address
            mem[(4 * ceil32(return_data.size)) + 488] = -1
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, stor2, ext_call.return_data[0], 0, 0, this.address, -1
            mem[(4 * ceil32(return_data.size)) + 292 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(6 * ceil32(return_data.size)) + 296] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'withdraw: no wavax'
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'withdraw: no time'
                require ext_code.size(stor4)
                call stor4.stake(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], msg.sender
            else:
                mem[(7 * ceil32(return_data.size)) + 328] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 360] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 292] = 68
                mem[(7 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 392] = 32
                mem[(7 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 456 len 96] = 0, msg.sender, ext_call.return_data[0], 0
                mem[(7 * ceil32(return_data.size)) + 524] = 0
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                   funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'withdraw: no wavax'
                    mem[(7 * ceil32(return_data.size)) + 460] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        mem[(8 * ceil32(return_data.size)) + 456] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 460] = 32
                        mem[(8 * ceil32(return_data.size)) + 492] = 17
                        mem[(8 * ceil32(return_data.size)) + 524] = 'withdraw: no time'
                        revert with memory
                          from (8 * ceil32(return_data.size)) + 456
                           len ceil32(return_data.size) + 100
                    mem[(8 * ceil32(return_data.size)) + 460] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 492] = msg.sender
                    require ext_code.size(stor4)
                    call stor4.stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + 460 len ceil32(return_data.size) + 64]
                else:
                    mem[(7 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 488] == bool(mem[(7 * ceil32(return_data.size)) + 488])
                        if not mem[(7 * ceil32(return_data.size)) + 488]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'withdraw: no wavax'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 32
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 17
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 'withdraw: no time'
                        revert with memory
                          from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                           len ceil32(return_data.size) + 100
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = msg.sender
                    require ext_code.size(stor4)
                    call stor4.stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461 len ceil32(return_data.size) + 64]
        else:
            mem[(2 * ceil32(return_data.size)) + 292] = return_data.size
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
            if ext_call.return_data[0] <= 0:
                revert with 0, 'withdraw: no YRT'
            require ext_code.size(stor0)
            call stor0.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'withdraw: no PGL'
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = stor2
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = this.address
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = -1
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, stor2, ext_call.return_data[0], 0, 0, this.address, -1
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'withdraw: no wavax'
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'withdraw: no time'
                require ext_code.size(stor4)
                call stor4.stake(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], msg.sender
            else:
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, msg.sender, ext_call.return_data[0], 0
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                   funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
                if return_data.size:
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                        if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        'SafeERC20: ERC20 operation did not succeed',
                                        mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 
                                    'withdraw: no wavax',
                                    mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 
                                    'withdraw: no time',
                                    mem[(12 * ceil32(return_data.size)) + 558 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require ext_code.size(stor4)
                    call stor4.stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], msg.sender, mem[(12 * ceil32(return_data.size)) + 526 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'withdraw: no wavax'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 32
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 17
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 'withdraw: no time'
                        revert with memory
                          from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                           len ceil32(return_data.size) + 100
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = msg.sender
                    require ext_code.size(stor4)
                    call stor4.stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.claim(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0], ext_call.return_data[0]
}



}
