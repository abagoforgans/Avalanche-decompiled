contract main {




// =====================  Runtime code  =====================


#
#  - sub_0f32600d(?)
#  - sub_178b2275(?)
#
address stor0;
address stor1;

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Caller is not moderator'
    stor0 = arg1
    emit OwnerSet(stor0, arg1);
}

function getTokenBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_075ecfac(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args arg4, arg3, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1 != msg.sender:
        revert with 0, 'Caller is not moderator'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Not enough balance'
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    mem[(2 * ceil32(return_data.size)) + 164] = stor1
    mem[(2 * ceil32(return_data.size)) + 196] = arg2
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(this.address) << 64
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, stor1, arg2, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, stor1, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, stor1, arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Withdraw(address(arg1), arg2);
}

function addLiquidity(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 96] = 26
        mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            mem[(2 * ceil32(return_data.size)) + 260] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[(2 * ceil32(return_data.size)) + 292] = 0
            mem[(2 * ceil32(return_data.size)) + 224] = 68
            mem[(2 * ceil32(return_data.size)) + 260 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
            mem[(2 * ceil32(return_data.size)) + 256 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 324] = 32
            mem[(2 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 388 len 96] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0
            mem[(2 * ceil32(return_data.size)) + 456] = 0
            call arg1 with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 424] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 388] = 68
                    mem[(2 * ceil32(return_data.size)) + 420 len 4] = approve(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + 488] = 32
                    mem[(2 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 552 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 620] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 584] == bool(mem[(2 * ceil32(return_data.size)) + 584])
                            if not mem[(2 * ceil32(return_data.size)) + 584]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 392] = this.address
                    mem[(2 * ceil32(return_data.size)) + 424] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(4 * ceil32(return_data.size)) + 424] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 388] = 68
                    mem[(4 * ceil32(return_data.size)) + 420 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + 488] = 32
                    mem[(4 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 552 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(4 * ceil32(return_data.size)) + 620] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 584] == bool(mem[(4 * ceil32(return_data.size)) + 584])
                            if not mem[(4 * ceil32(return_data.size)) + 584]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
            else:
                mem[(2 * ceil32(return_data.size)) + 388] = return_data.size
                mem[(2 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 420] == bool(mem[(2 * ceil32(return_data.size)) + 420])
                    if not mem[(2 * ceil32(return_data.size)) + 420]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 68
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4] = approve(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 558] = 32
                            mem[(4 * ceil32(return_data.size)) + 590] = 32
                            mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 554
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585])
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]:
                                mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 558] = 32
                                mem[(4 * ceil32(return_data.size)) + 590] = 42
                                mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: ERC20 operation did n'
                                mem[(4 * ceil32(return_data.size)) + 654] = 'ot succeed'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 554
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(4 * ceil32(return_data.size)) + 558] = arg1
                        mem[(4 * ceil32(return_data.size)) + 590] = arg2
                        mem[(4 * ceil32(return_data.size)) + 622] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 654] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 686] = 0
                        mem[(4 * ceil32(return_data.size)) + 718] = 0
                        mem[(4 * ceil32(return_data.size)) + 750] = this.address
                        mem[(4 * ceil32(return_data.size)) + 782] = 0xf000000000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 558 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 68
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    else:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 558] = 32
                            mem[(8 * ceil32(return_data.size)) + 590] = 32
                            mem[(8 * ceil32(return_data.size)) + 622] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 554
                               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585])
                            if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]:
                                mem[(8 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 558] = 32
                                mem[(8 * ceil32(return_data.size)) + 590] = 42
                                mem[(8 * ceil32(return_data.size)) + 622] = 'SafeERC20: ERC20 operation did n'
                                mem[(8 * ceil32(return_data.size)) + 654] = 'ot succeed'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 554
                                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(8 * ceil32(return_data.size)) + 558] = arg1
                        mem[(8 * ceil32(return_data.size)) + 590] = arg2
                        mem[(8 * ceil32(return_data.size)) + 622] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 654] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 686] = 0
                        mem[(8 * ceil32(return_data.size)) + 718] = 0
                        mem[(8 * ceil32(return_data.size)) + 750] = this.address
                        mem[(8 * ceil32(return_data.size)) + 782] = 0xf000000000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 558 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
        else:
            if ext_call.return_data[0] and 99 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 99 * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if 99 * ext_call.return_data[0] / 100 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if 100 * 99 * ext_call.return_data[0] / 100 > -(99 * ext_call.return_data[0] % 100) - 1:
                revert with 'NH{q', 17
            if 99 * ext_call.return_data[0] != (100 * 99 * ext_call.return_data[0] / 100) + (99 * ext_call.return_data[0] % 100):
                revert with 'NH{q', 1
            mem[(2 * ceil32(return_data.size)) + 260] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[(2 * ceil32(return_data.size)) + 292] = 0
            mem[(2 * ceil32(return_data.size)) + 224] = 68
            mem[(2 * ceil32(return_data.size)) + 260 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
            mem[(2 * ceil32(return_data.size)) + 256 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 324] = 32
            mem[(2 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 388 len 96] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0
            mem[(2 * ceil32(return_data.size)) + 456] = 0
            call arg1 with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 424] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 388] = 68
                    mem[(2 * ceil32(return_data.size)) + 420 len 4] = approve(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + 488] = 32
                    mem[(2 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 552 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 620] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 584] == bool(mem[(2 * ceil32(return_data.size)) + 584])
                            if not mem[(2 * ceil32(return_data.size)) + 584]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 392] = this.address
                    mem[(2 * ceil32(return_data.size)) + 424] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(4 * ceil32(return_data.size)) + 424] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 388] = 68
                    mem[(4 * ceil32(return_data.size)) + 420 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + 488] = 32
                    mem[(4 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 552 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(4 * ceil32(return_data.size)) + 620] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 584] == bool(mem[(4 * ceil32(return_data.size)) + 584])
                            if not mem[(4 * ceil32(return_data.size)) + 584]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), ext_call.return_data[0], ext_call.return_data[0], 0, 99 * ext_call.return_data[0] / 100, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
            else:
                mem[(2 * ceil32(return_data.size)) + 388] = return_data.size
                mem[(2 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 420] == bool(mem[(2 * ceil32(return_data.size)) + 420])
                    if not mem[(2 * ceil32(return_data.size)) + 420]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 68
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4] = approve(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), ext_call.return_data[0], ext_call.return_data[0], 0, 99 * ext_call.return_data[0] / 100, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 558] = 32
                            mem[(4 * ceil32(return_data.size)) + 590] = 32
                            mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 554
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585])
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]:
                                mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 558] = 32
                                mem[(4 * ceil32(return_data.size)) + 590] = 42
                                mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: ERC20 operation did n'
                                mem[(4 * ceil32(return_data.size)) + 654] = 'ot succeed'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 554
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(4 * ceil32(return_data.size)) + 558] = arg1
                        mem[(4 * ceil32(return_data.size)) + 590] = arg2
                        mem[(4 * ceil32(return_data.size)) + 622] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 654] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 686] = 0
                        mem[(4 * ceil32(return_data.size)) + 718] = 99 * ext_call.return_data[0] / 100
                        mem[(4 * ceil32(return_data.size)) + 750] = this.address
                        mem[(4 * ceil32(return_data.size)) + 782] = 0xf000000000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 558 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 68
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), ext_call.return_data[0], ext_call.return_data[0], 0, 99 * ext_call.return_data[0] / 100, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    else:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 558] = 32
                            mem[(8 * ceil32(return_data.size)) + 590] = 32
                            mem[(8 * ceil32(return_data.size)) + 622] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 554
                               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585])
                            if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]:
                                mem[(8 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 558] = 32
                                mem[(8 * ceil32(return_data.size)) + 590] = 42
                                mem[(8 * ceil32(return_data.size)) + 622] = 'SafeERC20: ERC20 operation did n'
                                mem[(8 * ceil32(return_data.size)) + 654] = 'ot succeed'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 554
                                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(8 * ceil32(return_data.size)) + 558] = arg1
                        mem[(8 * ceil32(return_data.size)) + 590] = arg2
                        mem[(8 * ceil32(return_data.size)) + 622] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 654] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 686] = 0
                        mem[(8 * ceil32(return_data.size)) + 718] = 99 * ext_call.return_data[0] / 100
                        mem[(8 * ceil32(return_data.size)) + 750] = this.address
                        mem[(8 * ceil32(return_data.size)) + 782] = 0xf000000000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 558 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    else:
        if ext_call.return_data[0] and 99 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 99 * ext_call.return_data[0] / ext_call.return_data[0] != 99:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(2 * ceil32(return_data.size)) + 96] = 26
        mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        if 99 * ext_call.return_data[0] / 100 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 'NH{q', 17
        if 100 * 99 * ext_call.return_data[0] / 100 > -(99 * ext_call.return_data[0] % 100) - 1:
            revert with 'NH{q', 17
        if 99 * ext_call.return_data[0] != (100 * 99 * ext_call.return_data[0] / 100) + (99 * ext_call.return_data[0] % 100):
            revert with 'NH{q', 1
        if not ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            mem[(2 * ceil32(return_data.size)) + 260] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[(2 * ceil32(return_data.size)) + 292] = 0
            mem[(2 * ceil32(return_data.size)) + 224] = 68
            mem[(2 * ceil32(return_data.size)) + 260 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
            mem[(2 * ceil32(return_data.size)) + 256 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 324] = 32
            mem[(2 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 388 len 96] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0
            mem[(2 * ceil32(return_data.size)) + 456] = 0
            call arg1 with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 424] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 388] = 68
                    mem[(2 * ceil32(return_data.size)) + 420 len 4] = approve(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + 488] = 32
                    mem[(2 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 552 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 620] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 584] == bool(mem[(2 * ceil32(return_data.size)) + 584])
                            if not mem[(2 * ceil32(return_data.size)) + 584]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 392] = this.address
                    mem[(2 * ceil32(return_data.size)) + 424] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(4 * ceil32(return_data.size)) + 424] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 388] = 68
                    mem[(4 * ceil32(return_data.size)) + 420 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + 488] = 32
                    mem[(4 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 552 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(4 * ceil32(return_data.size)) + 620] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 584] == bool(mem[(4 * ceil32(return_data.size)) + 584])
                            if not mem[(4 * ceil32(return_data.size)) + 584]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), ext_call.return_data[0], ext_call.return_data[0], 99 * ext_call.return_data[0] / 100, 0, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
            else:
                mem[(2 * ceil32(return_data.size)) + 388] = return_data.size
                mem[(2 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 420] == bool(mem[(2 * ceil32(return_data.size)) + 420])
                    if not mem[(2 * ceil32(return_data.size)) + 420]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 68
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4] = approve(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), ext_call.return_data[0], ext_call.return_data[0], 99 * ext_call.return_data[0] / 100, 0, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 558] = 32
                            mem[(4 * ceil32(return_data.size)) + 590] = 32
                            mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 554
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585])
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]:
                                mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 558] = 32
                                mem[(4 * ceil32(return_data.size)) + 590] = 42
                                mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: ERC20 operation did n'
                                mem[(4 * ceil32(return_data.size)) + 654] = 'ot succeed'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 554
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(4 * ceil32(return_data.size)) + 558] = arg1
                        mem[(4 * ceil32(return_data.size)) + 590] = arg2
                        mem[(4 * ceil32(return_data.size)) + 622] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 654] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 686] = 99 * ext_call.return_data[0] / 100
                        mem[(4 * ceil32(return_data.size)) + 718] = 0
                        mem[(4 * ceil32(return_data.size)) + 750] = this.address
                        mem[(4 * ceil32(return_data.size)) + 782] = 0xf000000000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 558 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 68
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), ext_call.return_data[0], ext_call.return_data[0], 99 * ext_call.return_data[0] / 100, 0, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    else:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 558] = 32
                            mem[(8 * ceil32(return_data.size)) + 590] = 32
                            mem[(8 * ceil32(return_data.size)) + 622] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 554
                               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585])
                            if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]:
                                mem[(8 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 558] = 32
                                mem[(8 * ceil32(return_data.size)) + 590] = 42
                                mem[(8 * ceil32(return_data.size)) + 622] = 'SafeERC20: ERC20 operation did n'
                                mem[(8 * ceil32(return_data.size)) + 654] = 'ot succeed'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 554
                                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(8 * ceil32(return_data.size)) + 558] = arg1
                        mem[(8 * ceil32(return_data.size)) + 590] = arg2
                        mem[(8 * ceil32(return_data.size)) + 622] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 654] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 686] = 99 * ext_call.return_data[0] / 100
                        mem[(8 * ceil32(return_data.size)) + 718] = 0
                        mem[(8 * ceil32(return_data.size)) + 750] = this.address
                        mem[(8 * ceil32(return_data.size)) + 782] = 0xf000000000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 558 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
        else:
            if ext_call.return_data[0] and 99 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 99 * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if 99 * ext_call.return_data[0] / 100 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if 100 * 99 * ext_call.return_data[0] / 100 > -(99 * ext_call.return_data[0] % 100) - 1:
                revert with 'NH{q', 17
            if 99 * ext_call.return_data[0] != (100 * 99 * ext_call.return_data[0] / 100) + (99 * ext_call.return_data[0] % 100):
                revert with 'NH{q', 1
            mem[(2 * ceil32(return_data.size)) + 260] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[(2 * ceil32(return_data.size)) + 292] = 0
            mem[(2 * ceil32(return_data.size)) + 224] = 68
            mem[(2 * ceil32(return_data.size)) + 260 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
            mem[(2 * ceil32(return_data.size)) + 256 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 324] = 32
            mem[(2 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 388 len 96] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0
            mem[(2 * ceil32(return_data.size)) + 456] = 0
            call arg1 with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 424] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 388] = 68
                    mem[(2 * ceil32(return_data.size)) + 420 len 4] = approve(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + 488] = 32
                    mem[(2 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 552 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 620] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 584] == bool(mem[(2 * ceil32(return_data.size)) + 584])
                            if not mem[(2 * ceil32(return_data.size)) + 584]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 392] = this.address
                    mem[(2 * ceil32(return_data.size)) + 424] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(4 * ceil32(return_data.size)) + 424] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 388] = 68
                    mem[(4 * ceil32(return_data.size)) + 420 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + 488] = 32
                    mem[(4 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 552 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(4 * ceil32(return_data.size)) + 620] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 584] == bool(mem[(4 * ceil32(return_data.size)) + 584])
                            if not mem[(4 * ceil32(return_data.size)) + 584]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), ext_call.return_data[0], ext_call.return_data[0], 99 * ext_call.return_data[0] / 100, 99 * ext_call.return_data[0] / 100, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
            else:
                mem[(2 * ceil32(return_data.size)) + 388] = return_data.size
                mem[(2 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 420] == bool(mem[(2 * ceil32(return_data.size)) + 420])
                    if not mem[(2 * ceil32(return_data.size)) + 420]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 68
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4] = approve(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), ext_call.return_data[0], ext_call.return_data[0], 99 * ext_call.return_data[0] / 100, 99 * ext_call.return_data[0] / 100, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 558] = 32
                            mem[(4 * ceil32(return_data.size)) + 590] = 32
                            mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 554
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585])
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]:
                                mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 558] = 32
                                mem[(4 * ceil32(return_data.size)) + 590] = 42
                                mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: ERC20 operation did n'
                                mem[(4 * ceil32(return_data.size)) + 654] = 'ot succeed'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 554
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(4 * ceil32(return_data.size)) + 558] = arg1
                        mem[(4 * ceil32(return_data.size)) + 590] = arg2
                        mem[(4 * ceil32(return_data.size)) + 622] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 654] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 686] = 99 * ext_call.return_data[0] / 100
                        mem[(4 * ceil32(return_data.size)) + 718] = 99 * ext_call.return_data[0] / 100
                        mem[(4 * ceil32(return_data.size)) + 750] = this.address
                        mem[(4 * ceil32(return_data.size)) + 782] = 0xf000000000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 558 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 68
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
                    if ext_code.size(arg1) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), ext_call.return_data[0], ext_call.return_data[0], 99 * ext_call.return_data[0] / 100, 99 * ext_call.return_data[0] / 100, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    else:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 558] = 32
                            mem[(8 * ceil32(return_data.size)) + 590] = 32
                            mem[(8 * ceil32(return_data.size)) + 622] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 554
                               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585])
                            if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]:
                                mem[(8 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 558] = 32
                                mem[(8 * ceil32(return_data.size)) + 590] = 42
                                mem[(8 * ceil32(return_data.size)) + 622] = 'SafeERC20: ERC20 operation did n'
                                mem[(8 * ceil32(return_data.size)) + 654] = 'ot succeed'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 554
                                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(8 * ceil32(return_data.size)) + 558] = arg1
                        mem[(8 * ceil32(return_data.size)) + 590] = arg2
                        mem[(8 * ceil32(return_data.size)) + 622] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 654] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 686] = 99 * ext_call.return_data[0] / 100
                        mem[(8 * ceil32(return_data.size)) + 718] = 99 * ext_call.return_data[0] / 100
                        mem[(8 * ceil32(return_data.size)) + 750] = this.address
                        mem[(8 * ceil32(return_data.size)) + 782] = 0xf000000000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 558 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
}

function sub_1c9f78cc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[100] = this.address
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'Not enough Memo balance'
    mem[ceil32(return_data.size) + 100] = 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9
    mem[ceil32(return_data.size) + 132] = arg3
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9, arg3
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg3, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != arg3:
        revert with 0, 'Unstaking failed'
    if address(arg1) != address(arg2):
        mem[(4 * ceil32(return_data.size)) + 132] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[(4 * ceil32(return_data.size)) + 164] = 0
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if ext_code.size(address(arg1)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call address(arg1) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] <= 0:
                if not arg3:
                    mem[(4 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + 328] = arg3
                    mem[(4 * ceil32(return_data.size)) + 260] = 68
                    mem[(4 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + 360] = 32
                    mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(4 * ceil32(return_data.size)) + 492] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] <= 0:
                            mem[(4 * ceil32(return_data.size)) + 428] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + 460] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(4 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available', mem[(6 * ceil32(return_data.size)) + 524 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 456] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 488] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 524] = arg3
                            mem[(6 * ceil32(return_data.size)) + 556] = 1
                            mem[(6 * ceil32(return_data.size)) + 588] = 160
                            mem[(6 * ceil32(return_data.size)) + 684] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 456
                            t = (6 * ceil32(return_data.size)) + 716
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + 620] = this.address
                            mem[(6 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(6 * ceil32(return_data.size)) + 716 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 520
                            require return_data.size >= 32
                            _8613 = mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (6 * ceil32(return_data.size)) + return_data.size + 520
                            _8741 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 'NH{q', 65
                            if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[(7 * ceil32(return_data.size)) + 520] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            require _8613 + (32 * _8741) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + _8613 + 552
                            t = (7 * ceil32(return_data.size)) + 552
                            while idx < _8741:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8741:
                                revert with 'NH{q', 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(4 * ceil32(return_data.size)) + 428] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + 460] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(4 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available', mem[(6 * ceil32(return_data.size)) + 524 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 456] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 488] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 524] = arg3
                            mem[(6 * ceil32(return_data.size)) + 556] = 1
                            mem[(6 * ceil32(return_data.size)) + 588] = 160
                            mem[(6 * ceil32(return_data.size)) + 684] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 456
                            t = (6 * ceil32(return_data.size)) + 716
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + 620] = this.address
                            mem[(6 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(6 * ceil32(return_data.size)) + 716 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 520
                            require return_data.size >= 32
                            _8614 = mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (6 * ceil32(return_data.size)) + return_data.size + 520
                            _8742 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 'NH{q', 65
                            if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[(7 * ceil32(return_data.size)) + 520] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            require _8614 + (32 * _8742) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + _8614 + 552
                            t = (7 * ceil32(return_data.size)) + 552
                            while idx < _8742:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8742:
                                revert with 'NH{q', 50
                        if mem[(7 * ceil32(return_data.size)) + 584] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8615 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8743 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require _8615 + (32 * _8743) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + _8615 + 553
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8743:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8743:
                                revert with 'NH{q', 50
                        else:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                            if not mem[(4 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8616 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8744 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require _8616 + (32 * _8744) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + _8616 + 553
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8744:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8744:
                                revert with 'NH{q', 50
                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                else:
                    mem[(4 * ceil32(return_data.size)) + 264] = this.address
                    mem[(4 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(6 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(6 * ceil32(return_data.size)) + 328] = arg3
                    mem[(6 * ceil32(return_data.size)) + 260] = 68
                    mem[(6 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                    mem[(6 * ceil32(return_data.size)) + 360] = 32
                    mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(6 * ceil32(return_data.size)) + 492] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] <= 0:
                            mem[(6 * ceil32(return_data.size)) + 428] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 460] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(6 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + 424] = 2
                            mem[(7 * ceil32(return_data.size)) + 456] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + 488] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 524] = arg3
                            mem[(7 * ceil32(return_data.size)) + 556] = 1
                            mem[(7 * ceil32(return_data.size)) + 588] = 160
                            mem[(7 * ceil32(return_data.size)) + 684] = 2
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + 456
                            t = (7 * ceil32(return_data.size)) + 716
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + 620] = this.address
                            mem[(7 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 716 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + 520
                            require return_data.size >= 32
                            _8621 = mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (7 * ceil32(return_data.size)) + return_data.size + 520
                            _8749 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 'NH{q', 65
                            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521
                            mem[(8 * ceil32(return_data.size)) + 520] = _8749
                            require _8621 + (32 * _8749) + 32 <= return_data.size
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + _8621 + 552
                            t = (8 * ceil32(return_data.size)) + 552
                            while idx < _8749:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[(7 * ceil32(return_data.size)) + 424] < 1:
                                revert with 'NH{q', 17
                            if mem[(7 * ceil32(return_data.size)) + 424] - 1 >= _8749:
                                revert with 'NH{q', 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(6 * ceil32(return_data.size)) + 428] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 460] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(6 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + 424] = 2
                            mem[(7 * ceil32(return_data.size)) + 456] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + 488] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 524] = arg3
                            mem[(7 * ceil32(return_data.size)) + 556] = 1
                            mem[(7 * ceil32(return_data.size)) + 588] = 160
                            mem[(7 * ceil32(return_data.size)) + 684] = 2
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + 456
                            t = (7 * ceil32(return_data.size)) + 716
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + 620] = this.address
                            mem[(7 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 716 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + 520
                            require return_data.size >= 32
                            _8622 = mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (7 * ceil32(return_data.size)) + return_data.size + 520
                            _8750 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 'NH{q', 65
                            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521
                            mem[(8 * ceil32(return_data.size)) + 520] = _8750
                            require _8622 + (32 * _8750) + 32 <= return_data.size
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + _8622 + 552
                            t = (8 * ceil32(return_data.size)) + 552
                            while idx < _8750:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[(7 * ceil32(return_data.size)) + 424] < 1:
                                revert with 'NH{q', 17
                            if mem[(7 * ceil32(return_data.size)) + 424] - 1 >= _8750:
                                revert with 'NH{q', 50
                        if mem[(32 * mem[(7 * ceil32(return_data.size)) + 424] - 1) + (8 * ceil32(return_data.size)) + 552] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 424] = return_data.size
                        mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8623 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8751 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _8751
                            require _8623 + (32 * _8751) + 32 <= return_data.size
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _8623 + 553
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8751:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] < 1:
                                revert with 'NH{q', 17
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] - 1 >= _8751:
                                revert with 'NH{q', 50
                        else:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                            if not mem[(6 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8624 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8752 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _8752
                            require _8624 + (32 * _8752) + 32 <= return_data.size
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _8624 + 553
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8752:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] < 1:
                                revert with 'NH{q', 17
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] - 1 >= _8752:
                                revert with 'NH{q', 50
                        if mem[(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] - 1) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
            else:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not arg3:
                    mem[(4 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + 328] = arg3
                    mem[(4 * ceil32(return_data.size)) + 260] = 68
                    mem[(4 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + 360] = 32
                    mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(4 * ceil32(return_data.size)) + 492] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] <= 0:
                            mem[(4 * ceil32(return_data.size)) + 428] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + 460] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(4 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available', mem[(6 * ceil32(return_data.size)) + 524 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 456] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 488] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 524] = arg3
                            mem[(6 * ceil32(return_data.size)) + 556] = 1
                            mem[(6 * ceil32(return_data.size)) + 588] = 160
                            mem[(6 * ceil32(return_data.size)) + 684] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 456
                            t = (6 * ceil32(return_data.size)) + 716
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + 620] = this.address
                            mem[(6 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(6 * ceil32(return_data.size)) + 716 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 520
                            require return_data.size >= 32
                            _8629 = mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (6 * ceil32(return_data.size)) + return_data.size + 520
                            _8757 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 'NH{q', 65
                            if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[(7 * ceil32(return_data.size)) + 520] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            require _8629 + (32 * _8757) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + _8629 + 552
                            t = (7 * ceil32(return_data.size)) + 552
                            while idx < _8757:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8757:
                                revert with 'NH{q', 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(4 * ceil32(return_data.size)) + 428] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + 460] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(4 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available', mem[(6 * ceil32(return_data.size)) + 524 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 456] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 488] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 524] = arg3
                            mem[(6 * ceil32(return_data.size)) + 556] = 1
                            mem[(6 * ceil32(return_data.size)) + 588] = 160
                            mem[(6 * ceil32(return_data.size)) + 684] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 456
                            t = (6 * ceil32(return_data.size)) + 716
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + 620] = this.address
                            mem[(6 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(6 * ceil32(return_data.size)) + 716 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 520
                            require return_data.size >= 32
                            _8630 = mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (6 * ceil32(return_data.size)) + return_data.size + 520
                            _8758 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 'NH{q', 65
                            if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[(7 * ceil32(return_data.size)) + 520] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            require _8630 + (32 * _8758) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + _8630 + 552
                            t = (7 * ceil32(return_data.size)) + 552
                            while idx < _8758:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8758:
                                revert with 'NH{q', 50
                        if mem[(7 * ceil32(return_data.size)) + 584] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8631 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8759 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require _8631 + (32 * _8759) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + _8631 + 553
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8759:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8759:
                                revert with 'NH{q', 50
                        else:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                            if not mem[(4 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8632 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8760 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require _8632 + (32 * _8760) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + _8632 + 553
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8760:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8760:
                                revert with 'NH{q', 50
                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                else:
                    mem[(4 * ceil32(return_data.size)) + 264] = this.address
                    mem[(4 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(6 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(6 * ceil32(return_data.size)) + 328] = arg3
                    mem[(6 * ceil32(return_data.size)) + 260] = 68
                    mem[(6 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                    mem[(6 * ceil32(return_data.size)) + 360] = 32
                    mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(6 * ceil32(return_data.size)) + 492] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] <= 0:
                            mem[(6 * ceil32(return_data.size)) + 428] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 460] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(6 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + 424] = 2
                            mem[(7 * ceil32(return_data.size)) + 456] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + 488] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 524] = arg3
                            mem[(7 * ceil32(return_data.size)) + 556] = 1
                            mem[(7 * ceil32(return_data.size)) + 588] = 160
                            mem[(7 * ceil32(return_data.size)) + 684] = 2
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + 456
                            t = (7 * ceil32(return_data.size)) + 716
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + 620] = this.address
                            mem[(7 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 716 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + 520
                            require return_data.size >= 32
                            _8637 = mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (7 * ceil32(return_data.size)) + return_data.size + 520
                            _8765 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 'NH{q', 65
                            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521
                            mem[(8 * ceil32(return_data.size)) + 520] = _8765
                            require _8637 + (32 * _8765) + 32 <= return_data.size
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + _8637 + 552
                            t = (8 * ceil32(return_data.size)) + 552
                            while idx < _8765:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[(7 * ceil32(return_data.size)) + 424] < 1:
                                revert with 'NH{q', 17
                            if mem[(7 * ceil32(return_data.size)) + 424] - 1 >= _8765:
                                revert with 'NH{q', 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(6 * ceil32(return_data.size)) + 428] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 460] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(6 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + 424] = 2
                            mem[(7 * ceil32(return_data.size)) + 456] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + 488] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 524] = arg3
                            mem[(7 * ceil32(return_data.size)) + 556] = 1
                            mem[(7 * ceil32(return_data.size)) + 588] = 160
                            mem[(7 * ceil32(return_data.size)) + 684] = 2
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + 456
                            t = (7 * ceil32(return_data.size)) + 716
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + 620] = this.address
                            mem[(7 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 716 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + 520
                            require return_data.size >= 32
                            _8638 = mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (7 * ceil32(return_data.size)) + return_data.size + 520
                            _8766 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 'NH{q', 65
                            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521
                            mem[(8 * ceil32(return_data.size)) + 520] = _8766
                            require _8638 + (32 * _8766) + 32 <= return_data.size
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + _8638 + 552
                            t = (8 * ceil32(return_data.size)) + 552
                            while idx < _8766:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[(7 * ceil32(return_data.size)) + 424] < 1:
                                revert with 'NH{q', 17
                            if mem[(7 * ceil32(return_data.size)) + 424] - 1 >= _8766:
                                revert with 'NH{q', 50
                        if mem[(32 * mem[(7 * ceil32(return_data.size)) + 424] - 1) + (8 * ceil32(return_data.size)) + 552] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 424] = return_data.size
                        mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8639 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8767 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _8767
                            require _8639 + (32 * _8767) + 32 <= return_data.size
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _8639 + 553
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8767:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] < 1:
                                revert with 'NH{q', 17
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] - 1 >= _8767:
                                revert with 'NH{q', 50
                        else:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                            if not mem[(6 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8640 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8768 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _8768
                            require _8640 + (32 * _8768) + 32 <= return_data.size
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _8640 + 553
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8768:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] < 1:
                                revert with 'NH{q', 17
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] - 1 >= _8768:
                                revert with 'NH{q', 50
                        if mem[(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] - 1) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
        else:
            mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if not arg3:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] <= 0:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8645 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8773 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require _8645 + (32 * _8773) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + _8645 + 553
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8773:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8773:
                                revert with 'NH{q', 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8646 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8774 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require _8646 + (32 * _8774) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + _8646 + 553
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8774:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8774:
                                revert with 'NH{q', 50
                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 430] = 32
                            mem[(8 * ceil32(return_data.size)) + 462] = 32
                            mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 426
                               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size <= 0:
                            mem[(8 * ceil32(return_data.size)) + 430] = address(arg1)
                            mem[(8 * ceil32(return_data.size)) + 462] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(8 * ceil32(return_data.size)) + 430 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                            mem[(8 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(9 * ceil32(return_data.size)) + 526 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(9 * ceil32(return_data.size)) + 458] = address(arg1)
                            mem[(9 * ceil32(return_data.size)) + 490] = address(arg2)
                            mem[(9 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(9 * ceil32(return_data.size)) + 526] = arg3
                            mem[(9 * ceil32(return_data.size)) + 558] = 1
                            mem[(9 * ceil32(return_data.size)) + 590] = 160
                            mem[(9 * ceil32(return_data.size)) + 686] = 2
                            idx = 0
                            s = (9 * ceil32(return_data.size)) + 458
                            t = (9 * ceil32(return_data.size)) + 718
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(9 * ceil32(return_data.size)) + 622] = this.address
                            mem[(9 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(9 * ceil32(return_data.size)) + 718 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(9 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 522
                            require return_data.size >= 32
                            _8647 = mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (9 * ceil32(return_data.size)) + return_data.size + 522
                            _8775 = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 'NH{q', 65
                            if (10 * ceil32(return_data.size)) + floor32(mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or floor32(mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[(10 * ceil32(return_data.size)) + 522] = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require _8647 + (32 * _8775) + 32 <= return_data.size
                            idx = 0
                            s = (9 * ceil32(return_data.size)) + _8647 + 554
                            t = (10 * ceil32(return_data.size)) + 554
                            while idx < _8775:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8775:
                                revert with 'NH{q', 50
                        else:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 430] = 32
                                mem[(8 * ceil32(return_data.size)) + 462] = 42
                                mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                                mem[(8 * ceil32(return_data.size)) + 526] = 'ot succeed'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 426
                                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[(8 * ceil32(return_data.size)) + 430] = address(arg1)
                            mem[(8 * ceil32(return_data.size)) + 462] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(8 * ceil32(return_data.size)) + 430 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                            mem[(8 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(9 * ceil32(return_data.size)) + 526 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(9 * ceil32(return_data.size)) + 458] = address(arg1)
                            mem[(9 * ceil32(return_data.size)) + 490] = address(arg2)
                            mem[(9 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(9 * ceil32(return_data.size)) + 526] = arg3
                            mem[(9 * ceil32(return_data.size)) + 558] = 1
                            mem[(9 * ceil32(return_data.size)) + 590] = 160
                            mem[(9 * ceil32(return_data.size)) + 686] = 2
                            idx = 0
                            s = (9 * ceil32(return_data.size)) + 458
                            t = (9 * ceil32(return_data.size)) + 718
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(9 * ceil32(return_data.size)) + 622] = this.address
                            mem[(9 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(9 * ceil32(return_data.size)) + 718 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(9 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 522
                            require return_data.size >= 32
                            _8648 = mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (9 * ceil32(return_data.size)) + return_data.size + 522
                            _8776 = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 'NH{q', 65
                            if (10 * ceil32(return_data.size)) + floor32(mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or floor32(mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[(10 * ceil32(return_data.size)) + 522] = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require _8648 + (32 * _8776) + 32 <= return_data.size
                            idx = 0
                            s = (9 * ceil32(return_data.size)) + _8648 + 554
                            t = (10 * ceil32(return_data.size)) + 554
                            while idx < _8776:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8776:
                                revert with 'NH{q', 50
                        if mem[(10 * ceil32(return_data.size)) + 586] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if return_data.size:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size <= 0:
                            mem[(9 * ceil32(return_data.size)) + 430] = address(arg1)
                            mem[(9 * ceil32(return_data.size)) + 462] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2), mem[(9 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(9 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(10 * ceil32(return_data.size)) + 458] = address(arg1)
                            mem[(10 * ceil32(return_data.size)) + 490] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 526] = arg3
                            mem[(10 * ceil32(return_data.size)) + 558] = 1
                            mem[(10 * ceil32(return_data.size)) + 590] = 160
                            mem[(10 * ceil32(return_data.size)) + 686] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 458
                            t = (10 * ceil32(return_data.size)) + 718
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 622] = this.address
                            mem[(10 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 718 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 522
                            require return_data.size >= 32
                            _8655 = mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (10 * ceil32(return_data.size)) + return_data.size + 522
                            _8783 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[(11 * ceil32(return_data.size)) + 522] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require _8655 + (32 * _8783) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _8655 + 554
                            t = (11 * ceil32(return_data.size)) + 554
                            while idx < _8783:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8783:
                                revert with 'NH{q', 50
                        else:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(9 * ceil32(return_data.size)) + 430] = address(arg1)
                            mem[(9 * ceil32(return_data.size)) + 462] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2), mem[(9 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(9 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(10 * ceil32(return_data.size)) + 458] = address(arg1)
                            mem[(10 * ceil32(return_data.size)) + 490] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 526] = arg3
                            mem[(10 * ceil32(return_data.size)) + 558] = 1
                            mem[(10 * ceil32(return_data.size)) + 590] = 160
                            mem[(10 * ceil32(return_data.size)) + 686] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 458
                            t = (10 * ceil32(return_data.size)) + 718
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 622] = this.address
                            mem[(10 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 718 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 522
                            require return_data.size >= 32
                            _8656 = mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (10 * ceil32(return_data.size)) + return_data.size + 522
                            _8784 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[(11 * ceil32(return_data.size)) + 522] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require _8656 + (32 * _8784) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _8656 + 554
                            t = (11 * ceil32(return_data.size)) + 554
                            while idx < _8784:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8784:
                                revert with 'NH{q', 50
                        if mem[(11 * ceil32(return_data.size)) + 586] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] <= 0:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8653 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8781 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _8781
                            require _8653 + (32 * _8781) + 32 <= return_data.size
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _8653 + 553
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8781:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] < 1:
                                revert with 'NH{q', 17
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] - 1 >= _8781:
                                revert with 'NH{q', 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8654 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8782 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _8782
                            require _8654 + (32 * _8782) + 32 <= return_data.size
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _8654 + 553
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8782:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] < 1:
                                revert with 'NH{q', 17
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] - 1 >= _8782:
                                revert with 'NH{q', 50
                        if mem[(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] - 1) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
            else:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not arg3:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] <= 0:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8661 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8789 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require _8661 + (32 * _8789) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + _8661 + 553
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8789:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8789:
                                revert with 'NH{q', 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8662 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8790 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require _8662 + (32 * _8790) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + _8662 + 553
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8790:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8790:
                                revert with 'NH{q', 50
                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 430] = 32
                            mem[(8 * ceil32(return_data.size)) + 462] = 32
                            mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 426
                               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size <= 0:
                            mem[(8 * ceil32(return_data.size)) + 430] = address(arg1)
                            mem[(8 * ceil32(return_data.size)) + 462] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(8 * ceil32(return_data.size)) + 430 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                            mem[(8 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(9 * ceil32(return_data.size)) + 526 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(9 * ceil32(return_data.size)) + 458] = address(arg1)
                            mem[(9 * ceil32(return_data.size)) + 490] = address(arg2)
                            mem[(9 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(9 * ceil32(return_data.size)) + 526] = arg3
                            mem[(9 * ceil32(return_data.size)) + 558] = 1
                            mem[(9 * ceil32(return_data.size)) + 590] = 160
                            mem[(9 * ceil32(return_data.size)) + 686] = 2
                            idx = 0
                            s = (9 * ceil32(return_data.size)) + 458
                            t = (9 * ceil32(return_data.size)) + 718
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(9 * ceil32(return_data.size)) + 622] = this.address
                            mem[(9 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(9 * ceil32(return_data.size)) + 718 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(9 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 522
                            require return_data.size >= 32
                            _8663 = mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (9 * ceil32(return_data.size)) + return_data.size + 522
                            _8791 = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 'NH{q', 65
                            if (10 * ceil32(return_data.size)) + floor32(mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or floor32(mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[(10 * ceil32(return_data.size)) + 522] = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require _8663 + (32 * _8791) + 32 <= return_data.size
                            idx = 0
                            s = (9 * ceil32(return_data.size)) + _8663 + 554
                            t = (10 * ceil32(return_data.size)) + 554
                            while idx < _8791:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8791:
                                revert with 'NH{q', 50
                        else:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 430] = 32
                                mem[(8 * ceil32(return_data.size)) + 462] = 42
                                mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                                mem[(8 * ceil32(return_data.size)) + 526] = 'ot succeed'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 426
                                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[(8 * ceil32(return_data.size)) + 430] = address(arg1)
                            mem[(8 * ceil32(return_data.size)) + 462] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(8 * ceil32(return_data.size)) + 430 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                            mem[(8 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(9 * ceil32(return_data.size)) + 526 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(9 * ceil32(return_data.size)) + 458] = address(arg1)
                            mem[(9 * ceil32(return_data.size)) + 490] = address(arg2)
                            mem[(9 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(9 * ceil32(return_data.size)) + 526] = arg3
                            mem[(9 * ceil32(return_data.size)) + 558] = 1
                            mem[(9 * ceil32(return_data.size)) + 590] = 160
                            mem[(9 * ceil32(return_data.size)) + 686] = 2
                            idx = 0
                            s = (9 * ceil32(return_data.size)) + 458
                            t = (9 * ceil32(return_data.size)) + 718
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(9 * ceil32(return_data.size)) + 622] = this.address
                            mem[(9 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(9 * ceil32(return_data.size)) + 718 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(9 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 522
                            require return_data.size >= 32
                            _8664 = mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (9 * ceil32(return_data.size)) + return_data.size + 522
                            _8792 = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 'NH{q', 65
                            if (10 * ceil32(return_data.size)) + floor32(mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or floor32(mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[(10 * ceil32(return_data.size)) + 522] = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require _8664 + (32 * _8792) + 32 <= return_data.size
                            idx = 0
                            s = (9 * ceil32(return_data.size)) + _8664 + 554
                            t = (10 * ceil32(return_data.size)) + 554
                            while idx < _8792:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8792:
                                revert with 'NH{q', 50
                        if mem[(10 * ceil32(return_data.size)) + 586] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if return_data.size:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size <= 0:
                            mem[(9 * ceil32(return_data.size)) + 430] = address(arg1)
                            mem[(9 * ceil32(return_data.size)) + 462] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2), mem[(9 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(9 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(10 * ceil32(return_data.size)) + 458] = address(arg1)
                            mem[(10 * ceil32(return_data.size)) + 490] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 526] = arg3
                            mem[(10 * ceil32(return_data.size)) + 558] = 1
                            mem[(10 * ceil32(return_data.size)) + 590] = 160
                            mem[(10 * ceil32(return_data.size)) + 686] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 458
                            t = (10 * ceil32(return_data.size)) + 718
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 622] = this.address
                            mem[(10 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 718 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 522
                            require return_data.size >= 32
                            _8671 = mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (10 * ceil32(return_data.size)) + return_data.size + 522
                            _8799 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[(11 * ceil32(return_data.size)) + 522] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require _8671 + (32 * _8799) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _8671 + 554
                            t = (11 * ceil32(return_data.size)) + 554
                            while idx < _8799:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8799:
                                revert with 'NH{q', 50
                        else:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(9 * ceil32(return_data.size)) + 430] = address(arg1)
                            mem[(9 * ceil32(return_data.size)) + 462] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2), mem[(9 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(9 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            'No Swap Available',
                                            mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(10 * ceil32(return_data.size)) + 458] = address(arg1)
                            mem[(10 * ceil32(return_data.size)) + 490] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 526] = arg3
                            mem[(10 * ceil32(return_data.size)) + 558] = 1
                            mem[(10 * ceil32(return_data.size)) + 590] = 160
                            mem[(10 * ceil32(return_data.size)) + 686] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 458
                            t = (10 * ceil32(return_data.size)) + 718
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 622] = this.address
                            mem[(10 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 718 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 522
                            require return_data.size >= 32
                            _8672 = mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (10 * ceil32(return_data.size)) + return_data.size + 522
                            _8800 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[(11 * ceil32(return_data.size)) + 522] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require _8672 + (32 * _8800) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _8672 + 554
                            t = (11 * ceil32(return_data.size)) + 554
                            while idx < _8800:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _8800:
                                revert with 'NH{q', 50
                        if mem[(11 * ceil32(return_data.size)) + 586] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] <= 0:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8669 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8797 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _8797
                            require _8669 + (32 * _8797) + 32 <= return_data.size
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _8669 + 553
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8797:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] < 1:
                                revert with 'NH{q', 17
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] - 1 >= _8797:
                                revert with 'NH{q', 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            _8670 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _8798 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 'NH{q', 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _8798
                            require _8670 + (32 * _8798) + 32 <= return_data.size
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _8670 + 553
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < _8798:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] < 1:
                                revert with 'NH{q', 17
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] - 1 >= _8798:
                                revert with 'NH{q', 50
                        if mem[(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] - 1) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
}

function sub_8c8daea1(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    mem[100] = this.address
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg4 > ext_call.return_data[0]:
        revert with 0, 'Not enough Memo balance'
    mem[ceil32(return_data.size) + 100] = 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9
    mem[ceil32(return_data.size) + 132] = arg4
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9, arg4
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg4, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] == arg4
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).pendingPayoutFor(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        mem[(6 * ceil32(return_data.size)) + 96] = 26
        mem[(6 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        if arg4 / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if Mask(255, 1, arg4) > -bool(arg4) - 1:
            revert with 'NH{q', 17
        if arg4 != arg4:
            revert with 'NH{q', 1
        if address(arg2) != address(arg3):
            mem[(6 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[(6 * ceil32(return_data.size)) + 228] = 0
            mem[(6 * ceil32(return_data.size)) + 160] = 68
            mem[(6 * ceil32(return_data.size)) + 196 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
            mem[(6 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
            mem[(6 * ceil32(return_data.size)) + 260] = 32
            mem[(6 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
            if ext_code.size(address(arg2)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 324 len 96] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0
            mem[(6 * ceil32(return_data.size)) + 392] = 0
            call address(arg2) with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] <= 0:
                    if not Mask(255, 1, arg4):
                        mem[(6 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + 392] = arg4 / 2
                        mem[(6 * ceil32(return_data.size)) + 324] = 68
                        mem[(6 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                        mem[(6 * ceil32(return_data.size)) + 424] = 32
                        mem[(6 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(6 * ceil32(return_data.size)) + 556] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(6 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(6 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + 488] = 2
                                mem[(7 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(7 * ceil32(return_data.size)) + 620] = 1
                                mem[(7 * ceil32(return_data.size)) + 652] = 160
                                mem[(7 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 520
                                t = (7 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 684] = this.address
                                mem[(7 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23599 = mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (7 * ceil32(return_data.size)) + return_data.size + 584
                                _23855 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(8 * ceil32(return_data.size)) + 584] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23599 + (32 * _23855) + 32 <= return_data.size
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + _23599 + 616
                                t = (8 * ceil32(return_data.size)) + 616
                                while idx < _23855:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[(7 * ceil32(return_data.size)) + 488] < 1:
                                    revert with 'NH{q', 17
                                if mem[(7 * ceil32(return_data.size)) + 488] - 1 >= _23855:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(6 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + 488] = 2
                                mem[(7 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(7 * ceil32(return_data.size)) + 620] = 1
                                mem[(7 * ceil32(return_data.size)) + 652] = 160
                                mem[(7 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 520
                                t = (7 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 684] = this.address
                                mem[(7 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23600 = mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (7 * ceil32(return_data.size)) + return_data.size + 584
                                _23856 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(8 * ceil32(return_data.size)) + 584] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23600 + (32 * _23856) + 32 <= return_data.size
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + _23600 + 616
                                t = (8 * ceil32(return_data.size)) + 616
                                while idx < _23856:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[(7 * ceil32(return_data.size)) + 488] < 1:
                                    revert with 'NH{q', 17
                                if mem[(7 * ceil32(return_data.size)) + 488] - 1 >= _23856:
                                    revert with 'NH{q', 50
                            if mem[(32 * mem[(7 * ceil32(return_data.size)) + 488] - 1) + (8 * ceil32(return_data.size)) + 616] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 488] = return_data.size
                            mem[(6 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23601 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23857 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _23857
                                require _23601 + (32 * _23857) + 32 <= return_data.size
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _23601 + 617
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23857:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] < 1:
                                    revert with 'NH{q', 17
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] - 1 >= _23857:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 520] == bool(mem[(6 * ceil32(return_data.size)) + 520])
                                if not mem[(6 * ceil32(return_data.size)) + 520]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23602 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23858 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _23858
                                require _23602 + (32 * _23858) + 32 <= return_data.size
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _23602 + 617
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23858:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] < 1:
                                    revert with 'NH{q', 17
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] - 1 >= _23858:
                                    revert with 'NH{q', 50
                            if mem[(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] - 1) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 328] = this.address
                        mem[(6 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(7 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + 392] = arg4 / 2
                        mem[(7 * ceil32(return_data.size)) + 324] = 68
                        mem[(7 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + 424] = 32
                        mem[(7 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(7 * ceil32(return_data.size)) + 556] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(7 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 488] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 492] = 32
                                    mem[(8 * ceil32(return_data.size)) + 524] = 17
                                    mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 488
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + 620] = 1
                                mem[(8 * ceil32(return_data.size)) + 652] = 160
                                mem[(8 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 520
                                t = (8 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 684] = this.address
                                mem[(8 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23607 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _23863 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23607 + (32 * _23863) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + _23607 + 616
                                t = (10 * ceil32(return_data.size)) + 616
                                while idx < _23863:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23863:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 488] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 492] = 32
                                    mem[(8 * ceil32(return_data.size)) + 524] = 17
                                    mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 488
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + 620] = 1
                                mem[(8 * ceil32(return_data.size)) + 652] = 160
                                mem[(8 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 520
                                t = (8 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 684] = this.address
                                mem[(8 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23608 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _23864 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23608 + (32 * _23864) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + _23608 + 616
                                t = (10 * ceil32(return_data.size)) + 616
                                while idx < _23864:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23864:
                                    revert with 'NH{q', 50
                            if mem[(10 * ceil32(return_data.size)) + 648] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 488] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23609 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23865 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23609 + (32 * _23865) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23609 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23865:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23865:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 520] == bool(mem[(7 * ceil32(return_data.size)) + 520])
                                if not mem[(7 * ceil32(return_data.size)) + 520]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23610 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23866 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23610 + (32 * _23866) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23610 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23866:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23866:
                                    revert with 'NH{q', 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                else:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not Mask(255, 1, arg4):
                        mem[(6 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + 392] = arg4 / 2
                        mem[(6 * ceil32(return_data.size)) + 324] = 68
                        mem[(6 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                        mem[(6 * ceil32(return_data.size)) + 424] = 32
                        mem[(6 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(6 * ceil32(return_data.size)) + 556] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(6 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(6 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + 488] = 2
                                mem[(7 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(7 * ceil32(return_data.size)) + 620] = 1
                                mem[(7 * ceil32(return_data.size)) + 652] = 160
                                mem[(7 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 520
                                t = (7 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 684] = this.address
                                mem[(7 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23615 = mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (7 * ceil32(return_data.size)) + return_data.size + 584
                                _23871 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(8 * ceil32(return_data.size)) + 584] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23615 + (32 * _23871) + 32 <= return_data.size
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + _23615 + 616
                                t = (8 * ceil32(return_data.size)) + 616
                                while idx < _23871:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[(7 * ceil32(return_data.size)) + 488] < 1:
                                    revert with 'NH{q', 17
                                if mem[(7 * ceil32(return_data.size)) + 488] - 1 >= _23871:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(6 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + 488] = 2
                                mem[(7 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(7 * ceil32(return_data.size)) + 620] = 1
                                mem[(7 * ceil32(return_data.size)) + 652] = 160
                                mem[(7 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 520
                                t = (7 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 684] = this.address
                                mem[(7 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23616 = mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (7 * ceil32(return_data.size)) + return_data.size + 584
                                _23872 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(8 * ceil32(return_data.size)) + 584] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23616 + (32 * _23872) + 32 <= return_data.size
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + _23616 + 616
                                t = (8 * ceil32(return_data.size)) + 616
                                while idx < _23872:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[(7 * ceil32(return_data.size)) + 488] < 1:
                                    revert with 'NH{q', 17
                                if mem[(7 * ceil32(return_data.size)) + 488] - 1 >= _23872:
                                    revert with 'NH{q', 50
                            if mem[(32 * mem[(7 * ceil32(return_data.size)) + 488] - 1) + (8 * ceil32(return_data.size)) + 616] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 488] = return_data.size
                            mem[(6 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23617 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23873 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _23873
                                require _23617 + (32 * _23873) + 32 <= return_data.size
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _23617 + 617
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23873:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] < 1:
                                    revert with 'NH{q', 17
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] - 1 >= _23873:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 520] == bool(mem[(6 * ceil32(return_data.size)) + 520])
                                if not mem[(6 * ceil32(return_data.size)) + 520]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23618 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23874 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _23874
                                require _23618 + (32 * _23874) + 32 <= return_data.size
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _23618 + 617
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23874:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] < 1:
                                    revert with 'NH{q', 17
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] - 1 >= _23874:
                                    revert with 'NH{q', 50
                            if mem[(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] - 1) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 328] = this.address
                        mem[(6 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(7 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + 392] = arg4 / 2
                        mem[(7 * ceil32(return_data.size)) + 324] = 68
                        mem[(7 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + 424] = 32
                        mem[(7 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(7 * ceil32(return_data.size)) + 556] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(7 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 488] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 492] = 32
                                    mem[(8 * ceil32(return_data.size)) + 524] = 17
                                    mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 488
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + 620] = 1
                                mem[(8 * ceil32(return_data.size)) + 652] = 160
                                mem[(8 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 520
                                t = (8 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 684] = this.address
                                mem[(8 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23623 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _23879 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23623 + (32 * _23879) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + _23623 + 616
                                t = (10 * ceil32(return_data.size)) + 616
                                while idx < _23879:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23879:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 488] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 492] = 32
                                    mem[(8 * ceil32(return_data.size)) + 524] = 17
                                    mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 488
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + 620] = 1
                                mem[(8 * ceil32(return_data.size)) + 652] = 160
                                mem[(8 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 520
                                t = (8 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 684] = this.address
                                mem[(8 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23624 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _23880 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23624 + (32 * _23880) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + _23624 + 616
                                t = (10 * ceil32(return_data.size)) + 616
                                while idx < _23880:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23880:
                                    revert with 'NH{q', 50
                            if mem[(10 * ceil32(return_data.size)) + 648] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 488] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23625 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23881 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23625 + (32 * _23881) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23625 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23881:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23881:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 520] == bool(mem[(7 * ceil32(return_data.size)) + 520])
                                if not mem[(7 * ceil32(return_data.size)) + 520]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23626 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23882 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23626 + (32 * _23882) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23626 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23882:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23882:
                                    revert with 'NH{q', 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
            else:
                mem[(6 * ceil32(return_data.size)) + 324] = return_data.size
                mem[(6 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if not Mask(255, 1, arg4):
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4 / 2
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23631 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23887 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _23887
                                require _23631 + (32 * _23887) + 32 <= return_data.size
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _23631 + 617
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23887:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] < 1:
                                    revert with 'NH{q', 17
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] - 1 >= _23887:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23632 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23888 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _23888
                                require _23632 + (32 * _23888) + 32 <= return_data.size
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _23632 + 617
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23888:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] < 1:
                                    revert with 'NH{q', 17
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] - 1 >= _23888:
                                    revert with 'NH{q', 50
                            if mem[(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] - 1) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(9 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size <= 0:
                                mem[(9 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(9 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(9 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + 622] = 1
                                mem[(10 * ceil32(return_data.size)) + 654] = 160
                                mem[(10 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 522
                                t = (10 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 686] = this.address
                                mem[(10 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23633 = mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (10 * ceil32(return_data.size)) + return_data.size + 586
                                _23889 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(11 * ceil32(return_data.size)) + 586] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23633 + (32 * _23889) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _23633 + 618
                                t = (11 * ceil32(return_data.size)) + 618
                                while idx < _23889:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23889:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(9 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(9 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(9 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(9 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + 622] = 1
                                mem[(10 * ceil32(return_data.size)) + 654] = 160
                                mem[(10 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 522
                                t = (10 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 686] = this.address
                                mem[(10 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23634 = mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (10 * ceil32(return_data.size)) + return_data.size + 586
                                _23890 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(11 * ceil32(return_data.size)) + 586] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23634 + (32 * _23890) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _23634 + 618
                                t = (11 * ceil32(return_data.size)) + 618
                                while idx < _23890:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23890:
                                    revert with 'NH{q', 50
                            if mem[(11 * ceil32(return_data.size)) + 650] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4 / 2
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23639 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23895 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23639 + (32 * _23895) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23639 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23895:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23895:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23640 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23896 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23640 + (32 * _23896) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23640 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23896:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23896:
                                    revert with 'NH{q', 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size <= 0:
                                mem[(10 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 590 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(12 * ceil32(return_data.size)) + 622] = 1
                                mem[(12 * ceil32(return_data.size)) + 654] = 160
                                mem[(12 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 522
                                t = (12 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 686] = this.address
                                mem[(12 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23641 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _23897 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23641 + (32 * _23897) + 32 <= return_data.size
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + _23641 + 618
                                t = (13 * ceil32(return_data.size)) + 618
                                while idx < _23897:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23897:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(10 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 590 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(12 * ceil32(return_data.size)) + 622] = 1
                                mem[(12 * ceil32(return_data.size)) + 654] = 160
                                mem[(12 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 522
                                t = (12 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 686] = this.address
                                mem[(12 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23642 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _23898 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23642 + (32 * _23898) + 32 <= return_data.size
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + _23642 + 618
                                t = (13 * ceil32(return_data.size)) + 618
                                while idx < _23898:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23898:
                                    revert with 'NH{q', 50
                            if mem[(13 * ceil32(return_data.size)) + 650] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                else:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 356] == bool(mem[(6 * ceil32(return_data.size)) + 356])
                    if not mem[(6 * ceil32(return_data.size)) + 356]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not Mask(255, 1, arg4):
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4 / 2
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23647 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23903 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _23903
                                require _23647 + (32 * _23903) + 32 <= return_data.size
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _23647 + 617
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23903:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] < 1:
                                    revert with 'NH{q', 17
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] - 1 >= _23903:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23648 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23904 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _23904
                                require _23648 + (32 * _23904) + 32 <= return_data.size
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + _23648 + 617
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23904:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] < 1:
                                    revert with 'NH{q', 17
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] - 1 >= _23904:
                                    revert with 'NH{q', 50
                            if mem[(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] - 1) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(9 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size <= 0:
                                mem[(9 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(9 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(9 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + 622] = 1
                                mem[(10 * ceil32(return_data.size)) + 654] = 160
                                mem[(10 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 522
                                t = (10 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 686] = this.address
                                mem[(10 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23649 = mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (10 * ceil32(return_data.size)) + return_data.size + 586
                                _23905 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(11 * ceil32(return_data.size)) + 586] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23649 + (32 * _23905) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _23649 + 618
                                t = (11 * ceil32(return_data.size)) + 618
                                while idx < _23905:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23905:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(9 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(9 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(9 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(9 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + 622] = 1
                                mem[(10 * ceil32(return_data.size)) + 654] = 160
                                mem[(10 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 522
                                t = (10 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 686] = this.address
                                mem[(10 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23650 = mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (10 * ceil32(return_data.size)) + return_data.size + 586
                                _23906 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(11 * ceil32(return_data.size)) + 586] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23650 + (32 * _23906) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _23650 + 618
                                t = (11 * ceil32(return_data.size)) + 618
                                while idx < _23906:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23906:
                                    revert with 'NH{q', 50
                            if mem[(11 * ceil32(return_data.size)) + 650] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4 / 2
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23655 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23911 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23655 + (32 * _23911) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23655 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23911:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23911:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23656 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23912 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23656 + (32 * _23912) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23656 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23912:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23912:
                                    revert with 'NH{q', 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size <= 0:
                                mem[(10 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 590 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(12 * ceil32(return_data.size)) + 622] = 1
                                mem[(12 * ceil32(return_data.size)) + 654] = 160
                                mem[(12 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 522
                                t = (12 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 686] = this.address
                                mem[(12 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23657 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _23913 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23657 + (32 * _23913) + 32 <= return_data.size
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + _23657 + 618
                                t = (13 * ceil32(return_data.size)) + 618
                                while idx < _23913:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23913:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(10 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 590 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(12 * ceil32(return_data.size)) + 622] = 1
                                mem[(12 * ceil32(return_data.size)) + 654] = 160
                                mem[(12 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 522
                                t = (12 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 686] = this.address
                                mem[(12 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23658 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _23914 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23658 + (32 * _23914) + 32 <= return_data.size
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + _23658 + 618
                                t = (13 * ceil32(return_data.size)) + 618
                                while idx < _23914:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23914:
                                    revert with 'NH{q', 50
                            if mem[(13 * ceil32(return_data.size)) + 650] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
    else:
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        mem[(6 * ceil32(return_data.size)) + 132] = 1
        require ext_code.size(address(arg1))
        call address(arg1).redeem(address arg1, bool arg2) with:
             gas gas_remaining wei
            args address(this.address), 1
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = 26
        mem[(7 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        if arg4 / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if Mask(255, 1, arg4) > -bool(arg4) - 1:
            revert with 'NH{q', 17
        if arg4 != arg4:
            revert with 'NH{q', 1
        if address(arg2) != address(arg3):
            mem[(7 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[(7 * ceil32(return_data.size)) + 228] = 0
            mem[(7 * ceil32(return_data.size)) + 160] = 68
            mem[(7 * ceil32(return_data.size)) + 196 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
            mem[(7 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
            mem[(7 * ceil32(return_data.size)) + 260] = 32
            mem[(7 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
            if ext_code.size(address(arg2)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 324 len 96] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0
            mem[(7 * ceil32(return_data.size)) + 392] = 0
            call address(arg2) with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] <= 0:
                    if not Mask(255, 1, arg4):
                        mem[(7 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + 392] = arg4 / 2
                        mem[(7 * ceil32(return_data.size)) + 324] = 68
                        mem[(7 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + 424] = 32
                        mem[(7 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(7 * ceil32(return_data.size)) + 556] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(7 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 488] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 492] = 32
                                    mem[(8 * ceil32(return_data.size)) + 524] = 17
                                    mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 488
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + 620] = 1
                                mem[(8 * ceil32(return_data.size)) + 652] = 160
                                mem[(8 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 520
                                t = (8 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 684] = this.address
                                mem[(8 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23727 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _23983 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23727 + (32 * _23983) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + _23727 + 616
                                t = (10 * ceil32(return_data.size)) + 616
                                while idx < _23983:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23983:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 488] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 492] = 32
                                    mem[(8 * ceil32(return_data.size)) + 524] = 17
                                    mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 488
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + 620] = 1
                                mem[(8 * ceil32(return_data.size)) + 652] = 160
                                mem[(8 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 520
                                t = (8 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 684] = this.address
                                mem[(8 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23728 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _23984 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23728 + (32 * _23984) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + _23728 + 616
                                t = (10 * ceil32(return_data.size)) + 616
                                while idx < _23984:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23984:
                                    revert with 'NH{q', 50
                            if mem[(10 * ceil32(return_data.size)) + 648] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 488] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23729 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23985 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23729 + (32 * _23985) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23729 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23985:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23985:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 520] == bool(mem[(7 * ceil32(return_data.size)) + 520])
                                if not mem[(7 * ceil32(return_data.size)) + 520]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23730 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23986 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23730 + (32 * _23986) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23730 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23986:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23986:
                                    revert with 'NH{q', 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 328] = this.address
                        mem[(7 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(8 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(8 * ceil32(return_data.size)) + 392] = arg4 / 2
                        mem[(8 * ceil32(return_data.size)) + 324] = 68
                        mem[(8 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                        mem[(8 * ceil32(return_data.size)) + 424] = 32
                        mem[(8 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(8 * ceil32(return_data.size)) + 556] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(8 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available', mem[(10 * ceil32(return_data.size)) + 588 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + 620] = 1
                                mem[(10 * ceil32(return_data.size)) + 652] = 160
                                mem[(10 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 520
                                t = (10 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 684] = this.address
                                mem[(10 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23735 = mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (10 * ceil32(return_data.size)) + return_data.size + 584
                                _23991 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(11 * ceil32(return_data.size)) + 584] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23735 + (32 * _23991) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _23735 + 616
                                t = (11 * ceil32(return_data.size)) + 616
                                while idx < _23991:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23991:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(8 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available', mem[(10 * ceil32(return_data.size)) + 588 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + 620] = 1
                                mem[(10 * ceil32(return_data.size)) + 652] = 160
                                mem[(10 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 520
                                t = (10 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 684] = this.address
                                mem[(10 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23736 = mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (10 * ceil32(return_data.size)) + return_data.size + 584
                                _23992 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(11 * ceil32(return_data.size)) + 584] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23736 + (32 * _23992) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _23736 + 616
                                t = (11 * ceil32(return_data.size)) + 616
                                while idx < _23992:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23992:
                                    revert with 'NH{q', 50
                            if mem[(11 * ceil32(return_data.size)) + 648] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(8 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23737 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23993 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23737 + (32 * _23993) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + _23737 + 617
                                t = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23993:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23993:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + 520] == bool(mem[(8 * ceil32(return_data.size)) + 520])
                                if not mem[(8 * ceil32(return_data.size)) + 520]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23738 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _23994 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23738 + (32 * _23994) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + _23738 + 617
                                t = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _23994:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23994:
                                    revert with 'NH{q', 50
                            if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                else:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not Mask(255, 1, arg4):
                        mem[(7 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + 392] = arg4 / 2
                        mem[(7 * ceil32(return_data.size)) + 324] = 68
                        mem[(7 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + 424] = 32
                        mem[(7 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(7 * ceil32(return_data.size)) + 556] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(7 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 488] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 492] = 32
                                    mem[(8 * ceil32(return_data.size)) + 524] = 17
                                    mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 488
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + 620] = 1
                                mem[(8 * ceil32(return_data.size)) + 652] = 160
                                mem[(8 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 520
                                t = (8 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 684] = this.address
                                mem[(8 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23743 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _23999 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23743 + (32 * _23999) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + _23743 + 616
                                t = (10 * ceil32(return_data.size)) + 616
                                while idx < _23999:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _23999:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 488] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 492] = 32
                                    mem[(8 * ceil32(return_data.size)) + 524] = 17
                                    mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 488
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + 620] = 1
                                mem[(8 * ceil32(return_data.size)) + 652] = 160
                                mem[(8 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 520
                                t = (8 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 684] = this.address
                                mem[(8 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23744 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _24000 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23744 + (32 * _24000) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + _23744 + 616
                                t = (10 * ceil32(return_data.size)) + 616
                                while idx < _24000:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24000:
                                    revert with 'NH{q', 50
                            if mem[(10 * ceil32(return_data.size)) + 648] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 488] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23745 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _24001 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23745 + (32 * _24001) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23745 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _24001:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24001:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 520] == bool(mem[(7 * ceil32(return_data.size)) + 520])
                                if not mem[(7 * ceil32(return_data.size)) + 520]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23746 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _24002 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23746 + (32 * _24002) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23746 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _24002:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24002:
                                    revert with 'NH{q', 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 328] = this.address
                        mem[(7 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(8 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(8 * ceil32(return_data.size)) + 392] = arg4 / 2
                        mem[(8 * ceil32(return_data.size)) + 324] = 68
                        mem[(8 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                        mem[(8 * ceil32(return_data.size)) + 424] = 32
                        mem[(8 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(8 * ceil32(return_data.size)) + 556] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(8 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available', mem[(10 * ceil32(return_data.size)) + 588 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + 620] = 1
                                mem[(10 * ceil32(return_data.size)) + 652] = 160
                                mem[(10 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 520
                                t = (10 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 684] = this.address
                                mem[(10 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23751 = mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (10 * ceil32(return_data.size)) + return_data.size + 584
                                _24007 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(11 * ceil32(return_data.size)) + 584] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23751 + (32 * _24007) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _23751 + 616
                                t = (11 * ceil32(return_data.size)) + 616
                                while idx < _24007:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24007:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(8 * ceil32(return_data.size)) + 492] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available', mem[(10 * ceil32(return_data.size)) + 588 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + 520] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 552] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 588] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + 620] = 1
                                mem[(10 * ceil32(return_data.size)) + 652] = 160
                                mem[(10 * ceil32(return_data.size)) + 748] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 520
                                t = (10 * ceil32(return_data.size)) + 780
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 684] = this.address
                                mem[(10 * ceil32(return_data.size)) + 716] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 780 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 584
                                require return_data.size >= 32
                                _23752 = mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (10 * ceil32(return_data.size)) + return_data.size + 584
                                _24008 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(11 * ceil32(return_data.size)) + 584] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require _23752 + (32 * _24008) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _23752 + 616
                                t = (11 * ceil32(return_data.size)) + 616
                                while idx < _24008:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24008:
                                    revert with 'NH{q', 50
                            if mem[(11 * ceil32(return_data.size)) + 648] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(8 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23753 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _24009 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23753 + (32 * _24009) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + _23753 + 617
                                t = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _24009:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24009:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + 520] == bool(mem[(8 * ceil32(return_data.size)) + 520])
                                if not mem[(8 * ceil32(return_data.size)) + 520]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23754 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _24010 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23754 + (32 * _24010) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + _23754 + 617
                                t = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _24010:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24010:
                                    revert with 'NH{q', 50
                            if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
            else:
                mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
                mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if not Mask(255, 1, arg4):
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4 / 2
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23759 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _24015 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23759 + (32 * _24015) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23759 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _24015:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24015:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23760 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _24016 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23760 + (32 * _24016) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23760 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _24016:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24016:
                                    revert with 'NH{q', 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size <= 0:
                                mem[(10 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 590 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(12 * ceil32(return_data.size)) + 622] = 1
                                mem[(12 * ceil32(return_data.size)) + 654] = 160
                                mem[(12 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 522
                                t = (12 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 686] = this.address
                                mem[(12 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23761 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _24017 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23761 + (32 * _24017) + 32 <= return_data.size
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + _23761 + 618
                                t = (13 * ceil32(return_data.size)) + 618
                                while idx < _24017:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24017:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(10 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 590 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(12 * ceil32(return_data.size)) + 622] = 1
                                mem[(12 * ceil32(return_data.size)) + 654] = 160
                                mem[(12 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 522
                                t = (12 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 686] = this.address
                                mem[(12 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23762 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _24018 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23762 + (32 * _24018) + 32 <= return_data.size
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + _23762 + 618
                                t = (13 * ceil32(return_data.size)) + 618
                                while idx < _24018:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24018:
                                    revert with 'NH{q', 50
                            if mem[(13 * ceil32(return_data.size)) + 650] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4 / 2
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23767 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _24023 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23767 + (32 * _24023) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + _23767 + 617
                                t = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _24023:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24023:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23768 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _24024 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23768 + (32 * _24024) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + _23768 + 617
                                t = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _24024:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24024:
                                    revert with 'NH{q', 50
                            if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(12 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size <= 0:
                                mem[(12 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(12 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(13 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(13 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(13 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(13 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(13 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(13 * ceil32(return_data.size)) + 622] = 1
                                mem[(13 * ceil32(return_data.size)) + 654] = 160
                                mem[(13 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (13 * ceil32(return_data.size)) + 522
                                t = (13 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(13 * ceil32(return_data.size)) + 686] = this.address
                                mem[(13 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(13 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(13 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (14 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23769 = mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (13 * ceil32(return_data.size)) + return_data.size + 586
                                _24025 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(14 * ceil32(return_data.size)) + 586] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23769 + (32 * _24025) + 32 <= return_data.size
                                idx = 0
                                s = (13 * ceil32(return_data.size)) + _23769 + 618
                                t = (14 * ceil32(return_data.size)) + 618
                                while idx < _24025:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24025:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(12 * ceil32(return_data.size)) + 622 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(12 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(13 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(13 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(13 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(13 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(13 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(13 * ceil32(return_data.size)) + 622] = 1
                                mem[(13 * ceil32(return_data.size)) + 654] = 160
                                mem[(13 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (13 * ceil32(return_data.size)) + 522
                                t = (13 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(13 * ceil32(return_data.size)) + 686] = this.address
                                mem[(13 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(13 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(13 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (14 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23770 = mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (13 * ceil32(return_data.size)) + return_data.size + 586
                                _24026 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(14 * ceil32(return_data.size)) + 586] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23770 + (32 * _24026) + 32 <= return_data.size
                                idx = 0
                                s = (13 * ceil32(return_data.size)) + _23770 + 618
                                t = (14 * ceil32(return_data.size)) + 618
                                while idx < _24026:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24026:
                                    revert with 'NH{q', 50
                            if mem[(14 * ceil32(return_data.size)) + 650] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                else:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 356] == bool(mem[(7 * ceil32(return_data.size)) + 356])
                    if not mem[(7 * ceil32(return_data.size)) + 356]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not Mask(255, 1, arg4):
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4 / 2
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23775 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _24031 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23775 + (32 * _24031) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23775 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _24031:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24031:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23776 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _24032 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23776 + (32 * _24032) + 32 <= return_data.size
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _23776 + 617
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _24032:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24032:
                                    revert with 'NH{q', 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size <= 0:
                                mem[(10 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 590 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(12 * ceil32(return_data.size)) + 622] = 1
                                mem[(12 * ceil32(return_data.size)) + 654] = 160
                                mem[(12 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 522
                                t = (12 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 686] = this.address
                                mem[(12 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23777 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _24033 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23777 + (32 * _24033) + 32 <= return_data.size
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + _23777 + 618
                                t = (13 * ceil32(return_data.size)) + 618
                                while idx < _24033:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24033:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(10 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 590 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(12 * ceil32(return_data.size)) + 622] = 1
                                mem[(12 * ceil32(return_data.size)) + 654] = 160
                                mem[(12 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 522
                                t = (12 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 686] = this.address
                                mem[(12 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23778 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _24034 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23778 + (32 * _24034) + 32 <= return_data.size
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + _23778 + 618
                                t = (13 * ceil32(return_data.size)) + 618
                                while idx < _24034:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24034:
                                    revert with 'NH{q', 50
                            if mem[(13 * ceil32(return_data.size)) + 650] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4 / 2
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                        if ext_code.size(address(arg2)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0] > 0:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] <= 0:
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23783 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _24039 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23783 + (32 * _24039) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + _23783 + 617
                                t = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _24039:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24039:
                                    revert with 'NH{q', 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = address(arg2)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                require return_data.size >= 32
                                _23784 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _24040 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require _23784 + (32 * _24040) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + _23784 + 617
                                t = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < _24040:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24040:
                                    revert with 'NH{q', 50
                            if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(12 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size <= 0:
                                mem[(12 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(12 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(13 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(13 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(13 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(13 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(13 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(13 * ceil32(return_data.size)) + 622] = 1
                                mem[(13 * ceil32(return_data.size)) + 654] = 160
                                mem[(13 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (13 * ceil32(return_data.size)) + 522
                                t = (13 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(13 * ceil32(return_data.size)) + 686] = this.address
                                mem[(13 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(13 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(13 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (14 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23785 = mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (13 * ceil32(return_data.size)) + return_data.size + 586
                                _24041 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(14 * ceil32(return_data.size)) + 586] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23785 + (32 * _24041) + 32 <= return_data.size
                                idx = 0
                                s = (13 * ceil32(return_data.size)) + _23785 + 618
                                t = (14 * ceil32(return_data.size)) + 618
                                while idx < _24041:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24041:
                                    revert with 'NH{q', 50
                            else:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(12 * ceil32(return_data.size)) + 622 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 494] = address(arg2)
                                mem[(12 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(13 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(13 * ceil32(return_data.size)) + 522] = address(arg2)
                                mem[(13 * ceil32(return_data.size)) + 554] = address(arg3)
                                mem[(13 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(13 * ceil32(return_data.size)) + 590] = arg4 / 2
                                mem[(13 * ceil32(return_data.size)) + 622] = 1
                                mem[(13 * ceil32(return_data.size)) + 654] = 160
                                mem[(13 * ceil32(return_data.size)) + 750] = 2
                                idx = 0
                                s = (13 * ceil32(return_data.size)) + 522
                                t = (13 * ceil32(return_data.size)) + 782
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(13 * ceil32(return_data.size)) + 686] = this.address
                                mem[(13 * ceil32(return_data.size)) + 718] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg4), 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(13 * ceil32(return_data.size)) + 782 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(13 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (14 * ceil32(return_data.size)) + 586
                                require return_data.size >= 32
                                _23786 = mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (13 * ceil32(return_data.size)) + return_data.size + 586
                                _24042 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 'NH{q', 65
                                if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[(14 * ceil32(return_data.size)) + 586] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require _23786 + (32 * _24042) + 32 <= return_data.size
                                idx = 0
                                s = (13 * ceil32(return_data.size)) + _23786 + 618
                                t = (14 * ceil32(return_data.size)) + 618
                                while idx < _24042:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _24042:
                                    revert with 'NH{q', 50
                            if mem[(14 * ceil32(return_data.size)) + 650] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
}



}
