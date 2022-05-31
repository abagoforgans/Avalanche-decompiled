contract main {




// =====================  Runtime code  =====================


#
#  - sub_082bfd18(?)
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
    return ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Not enough balance'
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, arg2
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
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, stor1, arg2, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, stor1, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, stor1, arg2, 0) << 544)
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
    emit Withdraw(address(arg1), arg2);
}

function sub_0f32600d(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
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
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Not enough Memo balance'
    mem[ceil32(return_data.size) + 100] = 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9, arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg2, 1
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
    require ext_call.return_data[0] >= arg2
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).pendingPayoutFor(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if address(arg3) == address(arg4):
            require ext_code.size(address(arg4))
            call address(arg4).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args arg2, arg5, this.address
        else:
            mem[(6 * ceil32(return_data.size)) + 132] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[(6 * ceil32(return_data.size)) + 164] = 0
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call address(arg3) with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not ext_call.return_data[0]:
                    if not arg2:
                        mem[(6 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + 328] = arg2
                        mem[(6 * ceil32(return_data.size)) + 260] = 68
                        mem[(6 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                        mem[(6 * ceil32(return_data.size)) + 360] = 32
                        mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(6 * ceil32(return_data.size)) + 492] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(6 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + 424] = 2
                                mem[(7 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(7 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 524] = arg2
                                mem[(7 * ceil32(return_data.size)) + 556] = 1
                                mem[(7 * ceil32(return_data.size)) + 588] = 160
                                mem[(7 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 716
                                t = (7 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 620] = this.address
                                mem[(7 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31115 = mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (7 * ceil32(return_data.size)) + return_data.size + 520
                                _31371 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(8 * ceil32(return_data.size)) + 520] = _31371
                                require return_data.size >= _31115 + (32 * _31371) + 32
                                mem[(8 * ceil32(return_data.size)) + 552 len 32 * _31371] = mem[(7 * ceil32(return_data.size)) + _31115 + 552 len 32 * _31371]
                                if 1 >= _31371:
                                    revert with 0, 50
                                _36235 = mem[(8 * ceil32(return_data.size)) + 584]
                                if mem[(8 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36235
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36235
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37515 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37515] == bool(mem[_37515])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36235, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + 424] = 2
                                mem[(7 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(7 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 524] = arg2
                                mem[(7 * ceil32(return_data.size)) + 556] = 1
                                mem[(7 * ceil32(return_data.size)) + 588] = 160
                                mem[(7 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 716
                                t = (7 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 620] = this.address
                                mem[(7 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31116 = mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (7 * ceil32(return_data.size)) + return_data.size + 520
                                _31372 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(8 * ceil32(return_data.size)) + 520] = _31372
                                require return_data.size >= _31116 + (32 * _31372) + 32
                                mem[(8 * ceil32(return_data.size)) + 552 len 32 * _31372] = mem[(7 * ceil32(return_data.size)) + _31116 + 552 len 32 * _31372]
                                if 1 >= _31372:
                                    revert with 0, 50
                                _36236 = mem[(8 * ceil32(return_data.size)) + 584]
                                if mem[(8 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36236
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36236
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37516 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37516] == bool(mem[_37516])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36236, arg5, this.address
                        else:
                            mem[(6 * ceil32(return_data.size)) + 424] = return_data.size
                            mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31117 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31373 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                require return_data.size >= _31117 + (32 * _31373) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31373] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _31117 + 553 len 32 * _31373]
                                if 1 >= _31373:
                                    revert with 0, 50
                                _36237 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36237
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36237
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37517 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37517] == bool(mem[_37517])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36237, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                                if not mem[(6 * ceil32(return_data.size)) + 456]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31118 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31374 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                require return_data.size >= _31118 + (32 * _31374) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31374] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _31118 + 553 len 32 * _31374]
                                if 1 >= _31374:
                                    revert with 0, 50
                                _36238 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36238
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36238
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37518 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37518] == bool(mem[_37518])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36238, arg5, this.address
                    else:
                        mem[(6 * ceil32(return_data.size)) + 264] = this.address
                        mem[(6 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(7 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + 328] = arg2
                        mem[(7 * ceil32(return_data.size)) + 260] = 68
                        mem[(7 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + 360] = 32
                        mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(7 * ceil32(return_data.size)) + 492] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(7 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 424] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 428] = 32
                                    mem[(8 * ceil32(return_data.size)) + 460] = 17
                                    mem[(8 * ceil32(return_data.size)) + 492] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 424
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 424] = 2
                                mem[(8 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 524] = arg2
                                mem[(8 * ceil32(return_data.size)) + 556] = 1
                                mem[(8 * ceil32(return_data.size)) + 588] = 160
                                mem[(8 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 716
                                t = (8 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 620] = this.address
                                mem[(8 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31123 = mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (8 * ceil32(return_data.size)) + return_data.size + 520
                                _31379 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(10 * ceil32(return_data.size)) + 520] = _31379
                                require return_data.size >= _31123 + (32 * _31379) + 32
                                mem[(10 * ceil32(return_data.size)) + 552 len 32 * _31379] = mem[(8 * ceil32(return_data.size)) + _31123 + 552 len 32 * _31379]
                                if 1 >= _31379:
                                    revert with 0, 50
                                _36243 = mem[(10 * ceil32(return_data.size)) + 584]
                                if mem[(10 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36243
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36243
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37523 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37523] == bool(mem[_37523])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36243, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 424] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 428] = 32
                                    mem[(8 * ceil32(return_data.size)) + 460] = 17
                                    mem[(8 * ceil32(return_data.size)) + 492] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 424
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 424] = 2
                                mem[(8 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 524] = arg2
                                mem[(8 * ceil32(return_data.size)) + 556] = 1
                                mem[(8 * ceil32(return_data.size)) + 588] = 160
                                mem[(8 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 716
                                t = (8 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 620] = this.address
                                mem[(8 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31124 = mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (8 * ceil32(return_data.size)) + return_data.size + 520
                                _31380 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(10 * ceil32(return_data.size)) + 520] = _31380
                                require return_data.size >= _31124 + (32 * _31380) + 32
                                mem[(10 * ceil32(return_data.size)) + 552 len 32 * _31380] = mem[(8 * ceil32(return_data.size)) + _31124 + 552 len 32 * _31380]
                                if 1 >= _31380:
                                    revert with 0, 50
                                _36244 = mem[(10 * ceil32(return_data.size)) + 584]
                                if mem[(10 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36244
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36244
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37524 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37524] == bool(mem[_37524])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36244, arg5, this.address
                        else:
                            mem[(7 * ceil32(return_data.size)) + 424] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31125 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31381 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31381
                                require return_data.size >= _31125 + (32 * _31381) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31381] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31125 + 553 len 32 * _31381]
                                if 1 >= _31381:
                                    revert with 0, 50
                                _36245 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36245
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36245
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37525 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37525] == bool(mem[_37525])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36245, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                                if not mem[(7 * ceil32(return_data.size)) + 456]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31126 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31382 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31382
                                require return_data.size >= _31126 + (32 * _31382) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31382] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31126 + 553 len 32 * _31382]
                                if 1 >= _31382:
                                    revert with 0, 50
                                _36246 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36246
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36246
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37526 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37526] == bool(mem[_37526])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36246, arg5, this.address
                else:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not arg2:
                        mem[(6 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + 328] = arg2
                        mem[(6 * ceil32(return_data.size)) + 260] = 68
                        mem[(6 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                        mem[(6 * ceil32(return_data.size)) + 360] = 32
                        mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(6 * ceil32(return_data.size)) + 492] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(6 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + 424] = 2
                                mem[(7 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(7 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 524] = arg2
                                mem[(7 * ceil32(return_data.size)) + 556] = 1
                                mem[(7 * ceil32(return_data.size)) + 588] = 160
                                mem[(7 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 716
                                t = (7 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 620] = this.address
                                mem[(7 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31131 = mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (7 * ceil32(return_data.size)) + return_data.size + 520
                                _31387 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(8 * ceil32(return_data.size)) + 520] = _31387
                                require return_data.size >= _31131 + (32 * _31387) + 32
                                mem[(8 * ceil32(return_data.size)) + 552 len 32 * _31387] = mem[(7 * ceil32(return_data.size)) + _31131 + 552 len 32 * _31387]
                                if 1 >= _31387:
                                    revert with 0, 50
                                _36251 = mem[(8 * ceil32(return_data.size)) + 584]
                                if mem[(8 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36251
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36251
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37531 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37531] == bool(mem[_37531])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36251, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + 424] = 2
                                mem[(7 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(7 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 524] = arg2
                                mem[(7 * ceil32(return_data.size)) + 556] = 1
                                mem[(7 * ceil32(return_data.size)) + 588] = 160
                                mem[(7 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 716
                                t = (7 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 620] = this.address
                                mem[(7 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31132 = mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (7 * ceil32(return_data.size)) + return_data.size + 520
                                _31388 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(8 * ceil32(return_data.size)) + 520] = _31388
                                require return_data.size >= _31132 + (32 * _31388) + 32
                                mem[(8 * ceil32(return_data.size)) + 552 len 32 * _31388] = mem[(7 * ceil32(return_data.size)) + _31132 + 552 len 32 * _31388]
                                if 1 >= _31388:
                                    revert with 0, 50
                                _36252 = mem[(8 * ceil32(return_data.size)) + 584]
                                if mem[(8 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36252
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36252
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37532 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37532] == bool(mem[_37532])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36252, arg5, this.address
                        else:
                            mem[(6 * ceil32(return_data.size)) + 424] = return_data.size
                            mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31133 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31389 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                require return_data.size >= _31133 + (32 * _31389) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31389] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _31133 + 553 len 32 * _31389]
                                if 1 >= _31389:
                                    revert with 0, 50
                                _36253 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36253
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36253
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37533 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37533] == bool(mem[_37533])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36253, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                                if not mem[(6 * ceil32(return_data.size)) + 456]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31134 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31390 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                require return_data.size >= _31134 + (32 * _31390) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31390] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _31134 + 553 len 32 * _31390]
                                if 1 >= _31390:
                                    revert with 0, 50
                                _36254 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36254
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36254
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37534 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37534] == bool(mem[_37534])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36254, arg5, this.address
                    else:
                        mem[(6 * ceil32(return_data.size)) + 264] = this.address
                        mem[(6 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(7 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + 328] = arg2
                        mem[(7 * ceil32(return_data.size)) + 260] = 68
                        mem[(7 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + 360] = 32
                        mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(7 * ceil32(return_data.size)) + 492] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(7 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 424] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 428] = 32
                                    mem[(8 * ceil32(return_data.size)) + 460] = 17
                                    mem[(8 * ceil32(return_data.size)) + 492] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 424
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 424] = 2
                                mem[(8 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 524] = arg2
                                mem[(8 * ceil32(return_data.size)) + 556] = 1
                                mem[(8 * ceil32(return_data.size)) + 588] = 160
                                mem[(8 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 716
                                t = (8 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 620] = this.address
                                mem[(8 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31139 = mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (8 * ceil32(return_data.size)) + return_data.size + 520
                                _31395 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(10 * ceil32(return_data.size)) + 520] = _31395
                                require return_data.size >= _31139 + (32 * _31395) + 32
                                mem[(10 * ceil32(return_data.size)) + 552 len 32 * _31395] = mem[(8 * ceil32(return_data.size)) + _31139 + 552 len 32 * _31395]
                                if 1 >= _31395:
                                    revert with 0, 50
                                _36259 = mem[(10 * ceil32(return_data.size)) + 584]
                                if mem[(10 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36259
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36259
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37539 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37539] == bool(mem[_37539])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36259, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 424] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 428] = 32
                                    mem[(8 * ceil32(return_data.size)) + 460] = 17
                                    mem[(8 * ceil32(return_data.size)) + 492] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 424
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 424] = 2
                                mem[(8 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 524] = arg2
                                mem[(8 * ceil32(return_data.size)) + 556] = 1
                                mem[(8 * ceil32(return_data.size)) + 588] = 160
                                mem[(8 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 716
                                t = (8 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 620] = this.address
                                mem[(8 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31140 = mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (8 * ceil32(return_data.size)) + return_data.size + 520
                                _31396 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(10 * ceil32(return_data.size)) + 520] = _31396
                                require return_data.size >= _31140 + (32 * _31396) + 32
                                mem[(10 * ceil32(return_data.size)) + 552 len 32 * _31396] = mem[(8 * ceil32(return_data.size)) + _31140 + 552 len 32 * _31396]
                                if 1 >= _31396:
                                    revert with 0, 50
                                _36260 = mem[(10 * ceil32(return_data.size)) + 584]
                                if mem[(10 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36260
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36260
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37540 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37540] == bool(mem[_37540])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36260, arg5, this.address
                        else:
                            mem[(7 * ceil32(return_data.size)) + 424] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31141 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31397 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31397
                                require return_data.size >= _31141 + (32 * _31397) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31397] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31141 + 553 len 32 * _31397]
                                if 1 >= _31397:
                                    revert with 0, 50
                                _36261 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36261
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36261
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37541 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37541] == bool(mem[_37541])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36261, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                                if not mem[(7 * ceil32(return_data.size)) + 456]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31142 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31398 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31398
                                require return_data.size >= _31142 + (32 * _31398) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31398] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31142 + 553 len 32 * _31398]
                                if 1 >= _31398:
                                    revert with 0, 50
                                _36262 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36262
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36262
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37542 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37542] == bool(mem[_37542])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36262, arg5, this.address
            else:
                mem[(6 * ceil32(return_data.size)) + 260] = return_data.size
                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not arg2:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31147 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31403 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                require return_data.size >= _31147 + (32 * _31403) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31403] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _31147 + 553 len 32 * _31403]
                                if 1 >= _31403:
                                    revert with 0, 50
                                _36267 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36267
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36267
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37547 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37547] == bool(mem[_37547])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36267, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31148 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31404 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                require return_data.size >= _31148 + (32 * _31404) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31404] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _31148 + 553 len 32 * _31404]
                                if 1 >= _31404:
                                    revert with 0, 50
                                _36268 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36268
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36268
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37548 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37548] == bool(mem[_37548])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36268, arg5, this.address
                        else:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                mem[(9 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(9 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(9 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(9 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 426] = 2
                                mem[(10 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 526] = arg2
                                mem[(10 * ceil32(return_data.size)) + 558] = 1
                                mem[(10 * ceil32(return_data.size)) + 590] = 160
                                mem[(10 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 718
                                t = (10 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 622] = this.address
                                mem[(10 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31149 = mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (10 * ceil32(return_data.size)) + return_data.size + 522
                                _31405 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(11 * ceil32(return_data.size)) + 522] = _31405
                                require return_data.size >= _31149 + (32 * _31405) + 32
                                mem[(11 * ceil32(return_data.size)) + 554 len 32 * _31405] = mem[(10 * ceil32(return_data.size)) + _31149 + 554 len 32 * _31405]
                                if 1 >= _31405:
                                    revert with 0, 50
                                _36269 = mem[(11 * ceil32(return_data.size)) + 586]
                                if mem[(11 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36269
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36269
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37549 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37549] == bool(mem[_37549])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36269, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(9 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(9 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(9 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(9 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 426] = 2
                                mem[(10 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 526] = arg2
                                mem[(10 * ceil32(return_data.size)) + 558] = 1
                                mem[(10 * ceil32(return_data.size)) + 590] = 160
                                mem[(10 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 718
                                t = (10 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 622] = this.address
                                mem[(10 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31150 = mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (10 * ceil32(return_data.size)) + return_data.size + 522
                                _31406 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(11 * ceil32(return_data.size)) + 522] = _31406
                                require return_data.size >= _31150 + (32 * _31406) + 32
                                mem[(11 * ceil32(return_data.size)) + 554 len 32 * _31406] = mem[(10 * ceil32(return_data.size)) + _31150 + 554 len 32 * _31406]
                                if 1 >= _31406:
                                    revert with 0, 50
                                _36270 = mem[(11 * ceil32(return_data.size)) + 586]
                                if mem[(11 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36270
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36270
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37550 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37550] == bool(mem[_37550])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36270, arg5, this.address
                    else:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31155 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31411 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31411
                                require return_data.size >= _31155 + (32 * _31411) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31411] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31155 + 553 len 32 * _31411]
                                if 1 >= _31411:
                                    revert with 0, 50
                                _36275 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36275
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36275
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37555 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37555] == bool(mem[_37555])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36275, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31156 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31412 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31412
                                require return_data.size >= _31156 + (32 * _31412) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31412] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31156 + 553 len 32 * _31412]
                                if 1 >= _31412:
                                    revert with 0, 50
                                _36276 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36276
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36276
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37556 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37556] == bool(mem[_37556])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36276, arg5, this.address
                        else:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                mem[(10 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(10 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 526 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 426] = 2
                                mem[(12 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(12 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 526] = arg2
                                mem[(12 * ceil32(return_data.size)) + 558] = 1
                                mem[(12 * ceil32(return_data.size)) + 590] = 160
                                mem[(12 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 718
                                t = (12 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 622] = this.address
                                mem[(12 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31157 = mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (12 * ceil32(return_data.size)) + return_data.size + 522
                                _31413 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(13 * ceil32(return_data.size)) + 522] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                require return_data.size >= _31157 + (32 * _31413) + 32
                                mem[(13 * ceil32(return_data.size)) + 554 len 32 * _31413] = mem[(12 * ceil32(return_data.size)) + _31157 + 554 len 32 * _31413]
                                if 1 >= _31413:
                                    revert with 0, 50
                                _36277 = mem[(13 * ceil32(return_data.size)) + 586]
                                if mem[(13 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36277
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36277
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37557 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37557] == bool(mem[_37557])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36277, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(10 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 526 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 426] = 2
                                mem[(12 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(12 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 526] = arg2
                                mem[(12 * ceil32(return_data.size)) + 558] = 1
                                mem[(12 * ceil32(return_data.size)) + 590] = 160
                                mem[(12 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 718
                                t = (12 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 622] = this.address
                                mem[(12 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31158 = mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (12 * ceil32(return_data.size)) + return_data.size + 522
                                _31414 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(13 * ceil32(return_data.size)) + 522] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                require return_data.size >= _31158 + (32 * _31414) + 32
                                mem[(13 * ceil32(return_data.size)) + 554 len 32 * _31414] = mem[(12 * ceil32(return_data.size)) + _31158 + 554 len 32 * _31414]
                                if 1 >= _31414:
                                    revert with 0, 50
                                _36278 = mem[(13 * ceil32(return_data.size)) + 586]
                                if mem[(13 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36278
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36278
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37558 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37558] == bool(mem[_37558])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36278, arg5, this.address
                else:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not arg2:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31163 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31419 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                require return_data.size >= _31163 + (32 * _31419) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31419] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _31163 + 553 len 32 * _31419]
                                if 1 >= _31419:
                                    revert with 0, 50
                                _36283 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36283
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36283
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37563 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37563] == bool(mem[_37563])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36283, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31164 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31420 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                require return_data.size >= _31164 + (32 * _31420) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31420] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _31164 + 553 len 32 * _31420]
                                if 1 >= _31420:
                                    revert with 0, 50
                                _36284 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36284
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36284
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37564 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37564] == bool(mem[_37564])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36284, arg5, this.address
                        else:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                mem[(9 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(9 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(9 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(9 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 426] = 2
                                mem[(10 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 526] = arg2
                                mem[(10 * ceil32(return_data.size)) + 558] = 1
                                mem[(10 * ceil32(return_data.size)) + 590] = 160
                                mem[(10 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 718
                                t = (10 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 622] = this.address
                                mem[(10 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31165 = mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (10 * ceil32(return_data.size)) + return_data.size + 522
                                _31421 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(11 * ceil32(return_data.size)) + 522] = _31421
                                require return_data.size >= _31165 + (32 * _31421) + 32
                                mem[(11 * ceil32(return_data.size)) + 554 len 32 * _31421] = mem[(10 * ceil32(return_data.size)) + _31165 + 554 len 32 * _31421]
                                if 1 >= _31421:
                                    revert with 0, 50
                                _36285 = mem[(11 * ceil32(return_data.size)) + 586]
                                if mem[(11 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36285
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36285
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37565 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37565] == bool(mem[_37565])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36285, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(9 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(9 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(9 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(9 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 426] = 2
                                mem[(10 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 526] = arg2
                                mem[(10 * ceil32(return_data.size)) + 558] = 1
                                mem[(10 * ceil32(return_data.size)) + 590] = 160
                                mem[(10 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 718
                                t = (10 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 622] = this.address
                                mem[(10 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31166 = mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (10 * ceil32(return_data.size)) + return_data.size + 522
                                _31422 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(11 * ceil32(return_data.size)) + 522] = _31422
                                require return_data.size >= _31166 + (32 * _31422) + 32
                                mem[(11 * ceil32(return_data.size)) + 554 len 32 * _31422] = mem[(10 * ceil32(return_data.size)) + _31166 + 554 len 32 * _31422]
                                if 1 >= _31422:
                                    revert with 0, 50
                                _36286 = mem[(11 * ceil32(return_data.size)) + 586]
                                if mem[(11 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36286
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36286
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37566 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37566] == bool(mem[_37566])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36286, arg5, this.address
                    else:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31171 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31427 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31427
                                require return_data.size >= _31171 + (32 * _31427) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31427] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31171 + 553 len 32 * _31427]
                                if 1 >= _31427:
                                    revert with 0, 50
                                _36291 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36291
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36291
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37571 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37571] == bool(mem[_37571])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36291, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31172 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31428 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31428
                                require return_data.size >= _31172 + (32 * _31428) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31428] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31172 + 553 len 32 * _31428]
                                if 1 >= _31428:
                                    revert with 0, 50
                                _36292 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36292
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36292
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37572 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37572] == bool(mem[_37572])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36292, arg5, this.address
                        else:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                mem[(10 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(10 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 526 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 426] = 2
                                mem[(12 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(12 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 526] = arg2
                                mem[(12 * ceil32(return_data.size)) + 558] = 1
                                mem[(12 * ceil32(return_data.size)) + 590] = 160
                                mem[(12 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 718
                                t = (12 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 622] = this.address
                                mem[(12 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31173 = mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (12 * ceil32(return_data.size)) + return_data.size + 522
                                _31429 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(13 * ceil32(return_data.size)) + 522] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                require return_data.size >= _31173 + (32 * _31429) + 32
                                mem[(13 * ceil32(return_data.size)) + 554 len 32 * _31429] = mem[(12 * ceil32(return_data.size)) + _31173 + 554 len 32 * _31429]
                                if 1 >= _31429:
                                    revert with 0, 50
                                _36293 = mem[(13 * ceil32(return_data.size)) + 586]
                                if mem[(13 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36293
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36293
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37573 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37573] == bool(mem[_37573])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36293, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(10 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 526 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 426] = 2
                                mem[(12 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(12 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 526] = arg2
                                mem[(12 * ceil32(return_data.size)) + 558] = 1
                                mem[(12 * ceil32(return_data.size)) + 590] = 160
                                mem[(12 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 718
                                t = (12 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 622] = this.address
                                mem[(12 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31174 = mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (12 * ceil32(return_data.size)) + return_data.size + 522
                                _31430 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(13 * ceil32(return_data.size)) + 522] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                require return_data.size >= _31174 + (32 * _31430) + 32
                                mem[(13 * ceil32(return_data.size)) + 554 len 32 * _31430] = mem[(12 * ceil32(return_data.size)) + _31174 + 554 len 32 * _31430]
                                if 1 >= _31430:
                                    revert with 0, 50
                                _36294 = mem[(13 * ceil32(return_data.size)) + 586]
                                if mem[(13 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36294
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36294
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37574 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37574] == bool(mem[_37574])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36294, arg5, this.address
    else:
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        mem[(6 * ceil32(return_data.size)) + 132] = 1
        require ext_code.size(address(arg1))
        call address(arg1).redeem(address arg1, bool arg2) with:
             gas gas_remaining wei
            args this.address, 1
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(arg3) == address(arg4):
            require ext_code.size(address(arg4))
            call address(arg4).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args arg2, arg5, this.address
        else:
            mem[(7 * ceil32(return_data.size)) + 132] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[(7 * ceil32(return_data.size)) + 164] = 0
            mem[(7 * ceil32(return_data.size)) + 96] = 68
            mem[(7 * ceil32(return_data.size)) + 132 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
            mem[(7 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[(7 * ceil32(return_data.size)) + 196] = 32
            mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0
            mem[(7 * ceil32(return_data.size)) + 328] = 0
            call address(arg3) with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not ext_call.return_data[0]:
                    if not arg2:
                        mem[(7 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + 328] = arg2
                        mem[(7 * ceil32(return_data.size)) + 260] = 68
                        mem[(7 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + 360] = 32
                        mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(7 * ceil32(return_data.size)) + 492] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(7 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 424] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 428] = 32
                                    mem[(8 * ceil32(return_data.size)) + 460] = 17
                                    mem[(8 * ceil32(return_data.size)) + 492] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 424
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 424] = 2
                                mem[(8 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 524] = arg2
                                mem[(8 * ceil32(return_data.size)) + 556] = 1
                                mem[(8 * ceil32(return_data.size)) + 588] = 160
                                mem[(8 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 716
                                t = (8 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 620] = this.address
                                mem[(8 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31243 = mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (8 * ceil32(return_data.size)) + return_data.size + 520
                                _31499 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(10 * ceil32(return_data.size)) + 520] = _31499
                                require return_data.size >= _31243 + (32 * _31499) + 32
                                mem[(10 * ceil32(return_data.size)) + 552 len 32 * _31499] = mem[(8 * ceil32(return_data.size)) + _31243 + 552 len 32 * _31499]
                                if 1 >= _31499:
                                    revert with 0, 50
                                _36363 = mem[(10 * ceil32(return_data.size)) + 584]
                                if mem[(10 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36363
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36363
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37643 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37643] == bool(mem[_37643])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36363, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 424] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 428] = 32
                                    mem[(8 * ceil32(return_data.size)) + 460] = 17
                                    mem[(8 * ceil32(return_data.size)) + 492] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 424
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 424] = 2
                                mem[(8 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 524] = arg2
                                mem[(8 * ceil32(return_data.size)) + 556] = 1
                                mem[(8 * ceil32(return_data.size)) + 588] = 160
                                mem[(8 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 716
                                t = (8 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 620] = this.address
                                mem[(8 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31244 = mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (8 * ceil32(return_data.size)) + return_data.size + 520
                                _31500 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(10 * ceil32(return_data.size)) + 520] = _31500
                                require return_data.size >= _31244 + (32 * _31500) + 32
                                mem[(10 * ceil32(return_data.size)) + 552 len 32 * _31500] = mem[(8 * ceil32(return_data.size)) + _31244 + 552 len 32 * _31500]
                                if 1 >= _31500:
                                    revert with 0, 50
                                _36364 = mem[(10 * ceil32(return_data.size)) + 584]
                                if mem[(10 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36364
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36364
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37644 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37644] == bool(mem[_37644])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36364, arg5, this.address
                        else:
                            mem[(7 * ceil32(return_data.size)) + 424] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31245 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31501 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31501
                                require return_data.size >= _31245 + (32 * _31501) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31501] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31245 + 553 len 32 * _31501]
                                if 1 >= _31501:
                                    revert with 0, 50
                                _36365 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36365
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36365
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37645 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37645] == bool(mem[_37645])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36365, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                                if not mem[(7 * ceil32(return_data.size)) + 456]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31246 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31502 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31502
                                require return_data.size >= _31246 + (32 * _31502) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31502] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31246 + 553 len 32 * _31502]
                                if 1 >= _31502:
                                    revert with 0, 50
                                _36366 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36366
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36366
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37646 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37646] == bool(mem[_37646])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36366, arg5, this.address
                    else:
                        mem[(7 * ceil32(return_data.size)) + 264] = this.address
                        mem[(7 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(8 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(8 * ceil32(return_data.size)) + 328] = arg2
                        mem[(8 * ceil32(return_data.size)) + 260] = 68
                        mem[(8 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                        mem[(8 * ceil32(return_data.size)) + 360] = 32
                        mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(8 * ceil32(return_data.size)) + 492] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(8 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(8 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available', mem[(10 * ceil32(return_data.size)) + 524 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + 424] = 2
                                mem[(10 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 524] = arg2
                                mem[(10 * ceil32(return_data.size)) + 556] = 1
                                mem[(10 * ceil32(return_data.size)) + 588] = 160
                                mem[(10 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 716
                                t = (10 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 620] = this.address
                                mem[(10 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31251 = mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (10 * ceil32(return_data.size)) + return_data.size + 520
                                _31507 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(11 * ceil32(return_data.size)) + 520] = _31507
                                require return_data.size >= _31251 + (32 * _31507) + 32
                                mem[(11 * ceil32(return_data.size)) + 552 len 32 * _31507] = mem[(10 * ceil32(return_data.size)) + _31251 + 552 len 32 * _31507]
                                if 1 >= _31507:
                                    revert with 0, 50
                                _36371 = mem[(11 * ceil32(return_data.size)) + 584]
                                if mem[(11 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36371
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36371
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37651 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37651] == bool(mem[_37651])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36371, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(8 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(8 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available', mem[(10 * ceil32(return_data.size)) + 524 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + 424] = 2
                                mem[(10 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 524] = arg2
                                mem[(10 * ceil32(return_data.size)) + 556] = 1
                                mem[(10 * ceil32(return_data.size)) + 588] = 160
                                mem[(10 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 716
                                t = (10 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 620] = this.address
                                mem[(10 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31252 = mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (10 * ceil32(return_data.size)) + return_data.size + 520
                                _31508 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(11 * ceil32(return_data.size)) + 520] = _31508
                                require return_data.size >= _31252 + (32 * _31508) + 32
                                mem[(11 * ceil32(return_data.size)) + 552 len 32 * _31508] = mem[(10 * ceil32(return_data.size)) + _31252 + 552 len 32 * _31508]
                                if 1 >= _31508:
                                    revert with 0, 50
                                _36372 = mem[(11 * ceil32(return_data.size)) + 584]
                                if mem[(11 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36372
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36372
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37652 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37652] == bool(mem[_37652])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36372, arg5, this.address
                        else:
                            mem[(8 * ceil32(return_data.size)) + 424] = return_data.size
                            mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31253 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31509 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31509
                                require return_data.size >= _31253 + (32 * _31509) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31509] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _31253 + 553 len 32 * _31509]
                                if 1 >= _31509:
                                    revert with 0, 50
                                _36373 = mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36373
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36373
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37653 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37653] == bool(mem[_37653])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36373, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                                if not mem[(8 * ceil32(return_data.size)) + 456]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31254 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31510 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31510
                                require return_data.size >= _31254 + (32 * _31510) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31510] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _31254 + 553 len 32 * _31510]
                                if 1 >= _31510:
                                    revert with 0, 50
                                _36374 = mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36374
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36374
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37654 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37654] == bool(mem[_37654])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36374, arg5, this.address
                else:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not arg2:
                        mem[(7 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + 328] = arg2
                        mem[(7 * ceil32(return_data.size)) + 260] = 68
                        mem[(7 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + 360] = 32
                        mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(7 * ceil32(return_data.size)) + 492] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(7 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 424] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 428] = 32
                                    mem[(8 * ceil32(return_data.size)) + 460] = 17
                                    mem[(8 * ceil32(return_data.size)) + 492] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 424
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 424] = 2
                                mem[(8 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 524] = arg2
                                mem[(8 * ceil32(return_data.size)) + 556] = 1
                                mem[(8 * ceil32(return_data.size)) + 588] = 160
                                mem[(8 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 716
                                t = (8 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 620] = this.address
                                mem[(8 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31259 = mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (8 * ceil32(return_data.size)) + return_data.size + 520
                                _31515 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(10 * ceil32(return_data.size)) + 520] = _31515
                                require return_data.size >= _31259 + (32 * _31515) + 32
                                mem[(10 * ceil32(return_data.size)) + 552 len 32 * _31515] = mem[(8 * ceil32(return_data.size)) + _31259 + 552 len 32 * _31515]
                                if 1 >= _31515:
                                    revert with 0, 50
                                _36379 = mem[(10 * ceil32(return_data.size)) + 584]
                                if mem[(10 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36379
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36379
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37659 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37659] == bool(mem[_37659])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36379, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + 424] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 428] = 32
                                    mem[(8 * ceil32(return_data.size)) + 460] = 17
                                    mem[(8 * ceil32(return_data.size)) + 492] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 424
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + 424] = 2
                                mem[(8 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 524] = arg2
                                mem[(8 * ceil32(return_data.size)) + 556] = 1
                                mem[(8 * ceil32(return_data.size)) + 588] = 160
                                mem[(8 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 716
                                t = (8 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + 620] = this.address
                                mem[(8 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31260 = mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (8 * ceil32(return_data.size)) + return_data.size + 520
                                _31516 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(10 * ceil32(return_data.size)) + 520] = _31516
                                require return_data.size >= _31260 + (32 * _31516) + 32
                                mem[(10 * ceil32(return_data.size)) + 552 len 32 * _31516] = mem[(8 * ceil32(return_data.size)) + _31260 + 552 len 32 * _31516]
                                if 1 >= _31516:
                                    revert with 0, 50
                                _36380 = mem[(10 * ceil32(return_data.size)) + 584]
                                if mem[(10 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36380
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36380
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37660 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37660] == bool(mem[_37660])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36380, arg5, this.address
                        else:
                            mem[(7 * ceil32(return_data.size)) + 424] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31261 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31517 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31517
                                require return_data.size >= _31261 + (32 * _31517) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31517] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31261 + 553 len 32 * _31517]
                                if 1 >= _31517:
                                    revert with 0, 50
                                _36381 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36381
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36381
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37661 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37661] == bool(mem[_37661])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36381, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                                if not mem[(7 * ceil32(return_data.size)) + 456]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31262 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31518 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31518
                                require return_data.size >= _31262 + (32 * _31518) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31518] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31262 + 553 len 32 * _31518]
                                if 1 >= _31518:
                                    revert with 0, 50
                                _36382 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36382
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36382
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37662 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37662] == bool(mem[_37662])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36382, arg5, this.address
                    else:
                        mem[(7 * ceil32(return_data.size)) + 264] = this.address
                        mem[(7 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(8 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(8 * ceil32(return_data.size)) + 328] = arg2
                        mem[(8 * ceil32(return_data.size)) + 260] = 68
                        mem[(8 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                        mem[(8 * ceil32(return_data.size)) + 360] = 32
                        mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(8 * ceil32(return_data.size)) + 492] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(8 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(8 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available', mem[(10 * ceil32(return_data.size)) + 524 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + 424] = 2
                                mem[(10 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 524] = arg2
                                mem[(10 * ceil32(return_data.size)) + 556] = 1
                                mem[(10 * ceil32(return_data.size)) + 588] = 160
                                mem[(10 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 716
                                t = (10 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 620] = this.address
                                mem[(10 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31267 = mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (10 * ceil32(return_data.size)) + return_data.size + 520
                                _31523 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(11 * ceil32(return_data.size)) + 520] = _31523
                                require return_data.size >= _31267 + (32 * _31523) + 32
                                mem[(11 * ceil32(return_data.size)) + 552 len 32 * _31523] = mem[(10 * ceil32(return_data.size)) + _31267 + 552 len 32 * _31523]
                                if 1 >= _31523:
                                    revert with 0, 50
                                _36387 = mem[(11 * ceil32(return_data.size)) + 584]
                                if mem[(11 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36387
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36387
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37667 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37667] == bool(mem[_37667])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36387, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(8 * ceil32(return_data.size)) + 428] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + 460] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(8 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available', mem[(10 * ceil32(return_data.size)) + 524 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + 424] = 2
                                mem[(10 * ceil32(return_data.size)) + 456] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 488] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 524] = arg2
                                mem[(10 * ceil32(return_data.size)) + 556] = 1
                                mem[(10 * ceil32(return_data.size)) + 588] = 160
                                mem[(10 * ceil32(return_data.size)) + 684] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 716
                                t = (10 * ceil32(return_data.size)) + 456
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 620] = this.address
                                mem[(10 * ceil32(return_data.size)) + 652] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 716 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 520
                                require return_data.size >= 32
                                _31268 = mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 551 < (10 * ceil32(return_data.size)) + return_data.size + 520
                                _31524 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg2) >> 32 + 520]) + 521
                                mem[(11 * ceil32(return_data.size)) + 520] = _31524
                                require return_data.size >= _31268 + (32 * _31524) + 32
                                mem[(11 * ceil32(return_data.size)) + 552 len 32 * _31524] = mem[(10 * ceil32(return_data.size)) + _31268 + 552 len 32 * _31524]
                                if 1 >= _31524:
                                    revert with 0, 50
                                _36388 = mem[(11 * ceil32(return_data.size)) + 584]
                                if mem[(11 * ceil32(return_data.size)) + 584] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36388
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36388
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37668 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37668] == bool(mem[_37668])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36388, arg5, this.address
                        else:
                            mem[(8 * ceil32(return_data.size)) + 424] = return_data.size
                            mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31269 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31525 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31525
                                require return_data.size >= _31269 + (32 * _31525) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31525] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _31269 + 553 len 32 * _31525]
                                if 1 >= _31525:
                                    revert with 0, 50
                                _36389 = mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36389
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36389
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37669 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37669] == bool(mem[_37669])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36389, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                                if not mem[(8 * ceil32(return_data.size)) + 456]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31270 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31526 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31526
                                require return_data.size >= _31270 + (32 * _31526) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31526] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _31270 + 553 len 32 * _31526]
                                if 1 >= _31526:
                                    revert with 0, 50
                                _36390 = mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36390
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36390
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37670 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37670] == bool(mem[_37670])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36390, arg5, this.address
            else:
                mem[(7 * ceil32(return_data.size)) + 260] = return_data.size
                mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not arg2:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31275 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31531 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31531
                                require return_data.size >= _31275 + (32 * _31531) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31531] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31275 + 553 len 32 * _31531]
                                if 1 >= _31531:
                                    revert with 0, 50
                                _36395 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36395
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36395
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37675 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37675] == bool(mem[_37675])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36395, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31276 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31532 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31532
                                require return_data.size >= _31276 + (32 * _31532) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31532] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31276 + 553 len 32 * _31532]
                                if 1 >= _31532:
                                    revert with 0, 50
                                _36396 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36396
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36396
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37676 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37676] == bool(mem[_37676])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36396, arg5, this.address
                        else:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                mem[(10 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(10 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 526 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 426] = 2
                                mem[(12 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(12 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 526] = arg2
                                mem[(12 * ceil32(return_data.size)) + 558] = 1
                                mem[(12 * ceil32(return_data.size)) + 590] = 160
                                mem[(12 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 718
                                t = (12 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 622] = this.address
                                mem[(12 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31277 = mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (12 * ceil32(return_data.size)) + return_data.size + 522
                                _31533 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(13 * ceil32(return_data.size)) + 522] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                require return_data.size >= _31277 + (32 * _31533) + 32
                                mem[(13 * ceil32(return_data.size)) + 554 len 32 * _31533] = mem[(12 * ceil32(return_data.size)) + _31277 + 554 len 32 * _31533]
                                if 1 >= _31533:
                                    revert with 0, 50
                                _36397 = mem[(13 * ceil32(return_data.size)) + 586]
                                if mem[(13 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36397
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36397
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37677 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37677] == bool(mem[_37677])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36397, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(10 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 526 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 426] = 2
                                mem[(12 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(12 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 526] = arg2
                                mem[(12 * ceil32(return_data.size)) + 558] = 1
                                mem[(12 * ceil32(return_data.size)) + 590] = 160
                                mem[(12 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 718
                                t = (12 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 622] = this.address
                                mem[(12 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31278 = mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (12 * ceil32(return_data.size)) + return_data.size + 522
                                _31534 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(13 * ceil32(return_data.size)) + 522] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                require return_data.size >= _31278 + (32 * _31534) + 32
                                mem[(13 * ceil32(return_data.size)) + 554 len 32 * _31534] = mem[(12 * ceil32(return_data.size)) + _31278 + 554 len 32 * _31534]
                                if 1 >= _31534:
                                    revert with 0, 50
                                _36398 = mem[(13 * ceil32(return_data.size)) + 586]
                                if mem[(13 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36398
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36398
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37678 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37678] == bool(mem[_37678])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36398, arg5, this.address
                    else:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                if var125001 < 2:
                                    mem[var125003] = mem[var125005 + 12 len 20]
                                    var125001 = var125001 + 1
                                    var125003 = var125003 + 32
                                    var125005 = var125005 + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len var125003 + (-10 * ceil32(return_data.size)) + -ceil32(return_data.size) - 525]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31283 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31539 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31539
                                require return_data.size >= _31283 + (32 * _31539) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31539] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _31283 + 553 len 32 * _31539]
                                if 1 >= _31539:
                                    revert with 0, 50
                                _36403 = mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36403
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36403
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37683 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37683] == bool(mem[_37683])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36403, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31284 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31540 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31540
                                require return_data.size >= _31284 + (32 * _31540) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31540] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _31284 + 553 len 32 * _31540]
                                if 1 >= _31540:
                                    revert with 0, 50
                                _36404 = mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36404
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36404
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37684 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37684] == bool(mem[_37684])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36404, arg5, this.address
                        else:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                mem[(12 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(12 * ceil32(return_data.size)) + 494 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(13 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(13 * ceil32(return_data.size)) + 426] = 2
                                mem[(13 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(13 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(13 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(13 * ceil32(return_data.size)) + 526] = arg2
                                mem[(13 * ceil32(return_data.size)) + 558] = 1
                                mem[(13 * ceil32(return_data.size)) + 590] = 160
                                mem[(13 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (13 * ceil32(return_data.size)) + 718
                                t = (13 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(13 * ceil32(return_data.size)) + 622] = this.address
                                mem[(13 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(13 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(13 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (14 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31285 = mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (13 * ceil32(return_data.size)) + return_data.size + 522
                                _31541 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(14 * ceil32(return_data.size)) + 522] = _31541
                                require return_data.size >= _31285 + (32 * _31541) + 32
                                mem[(14 * ceil32(return_data.size)) + 554 len 32 * _31541] = mem[(13 * ceil32(return_data.size)) + _31285 + 554 len 32 * _31541]
                                if 1 >= _31541:
                                    revert with 0, 50
                                _36405 = mem[(14 * ceil32(return_data.size)) + 586]
                                if mem[(14 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36405
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36405
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37685 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37685] == bool(mem[_37685])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36405, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(12 * ceil32(return_data.size)) + 494 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(13 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(13 * ceil32(return_data.size)) + 426] = 2
                                mem[(13 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(13 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(13 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(13 * ceil32(return_data.size)) + 526] = arg2
                                mem[(13 * ceil32(return_data.size)) + 558] = 1
                                mem[(13 * ceil32(return_data.size)) + 590] = 160
                                mem[(13 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (13 * ceil32(return_data.size)) + 718
                                t = (13 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(13 * ceil32(return_data.size)) + 622] = this.address
                                mem[(13 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(13 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(13 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (14 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31286 = mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (13 * ceil32(return_data.size)) + return_data.size + 522
                                _31542 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(14 * ceil32(return_data.size)) + 522] = _31542
                                require return_data.size >= _31286 + (32 * _31542) + 32
                                mem[(14 * ceil32(return_data.size)) + 554 len 32 * _31542] = mem[(13 * ceil32(return_data.size)) + _31286 + 554 len 32 * _31542]
                                if 1 >= _31542:
                                    revert with 0, 50
                                _36406 = mem[(14 * ceil32(return_data.size)) + 586]
                                if mem[(14 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36406
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36406
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37686 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37686] == bool(mem[_37686])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36406, arg5, this.address
                else:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                    if not mem[(7 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not arg2:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31291 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31547 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31547
                                require return_data.size >= _31291 + (32 * _31547) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31547] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31291 + 553 len 32 * _31547]
                                if 1 >= _31547:
                                    revert with 0, 50
                                _36411 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36411
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36411
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37691 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37691] == bool(mem[_37691])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36411, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 17
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'No Swap Available' << 120
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                       len ceil32(return_data.size) + 100
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31292 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31548 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31548
                                require return_data.size >= _31292 + (32 * _31548) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31548] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _31292 + 553 len 32 * _31548]
                                if 1 >= _31548:
                                    revert with 0, 50
                                _36412 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36412
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36412
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37692 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37692] == bool(mem[_37692])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36412, arg5, this.address
                        else:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                mem[(10 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(10 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 526 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 426] = 2
                                mem[(12 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(12 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 526] = arg2
                                mem[(12 * ceil32(return_data.size)) + 558] = 1
                                mem[(12 * ceil32(return_data.size)) + 590] = 160
                                mem[(12 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 718
                                t = (12 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 622] = this.address
                                mem[(12 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31293 = mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (12 * ceil32(return_data.size)) + return_data.size + 522
                                _31549 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(13 * ceil32(return_data.size)) + 522] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                require return_data.size >= _31293 + (32 * _31549) + 32
                                mem[(13 * ceil32(return_data.size)) + 554 len 32 * _31549] = mem[(12 * ceil32(return_data.size)) + _31293 + 554 len 32 * _31549]
                                if 1 >= _31549:
                                    revert with 0, 50
                                _36413 = mem[(13 * ceil32(return_data.size)) + 586]
                                if mem[(13 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36413
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36413
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37693 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37693] == bool(mem[_37693])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36413, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(10 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(12 * ceil32(return_data.size)) + 526 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 426] = 2
                                mem[(12 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(12 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 526] = arg2
                                mem[(12 * ceil32(return_data.size)) + 558] = 1
                                mem[(12 * ceil32(return_data.size)) + 590] = 160
                                mem[(12 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (12 * ceil32(return_data.size)) + 718
                                t = (12 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(12 * ceil32(return_data.size)) + 622] = this.address
                                mem[(12 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(12 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(12 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (13 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31294 = mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (12 * ceil32(return_data.size)) + return_data.size + 522
                                _31550 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(13 * ceil32(return_data.size)) + 522] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                require return_data.size >= _31294 + (32 * _31550) + 32
                                mem[(13 * ceil32(return_data.size)) + 554 len 32 * _31550] = mem[(12 * ceil32(return_data.size)) + _31294 + 554 len 32 * _31550]
                                if 1 >= _31550:
                                    revert with 0, 50
                                _36414 = mem[(13 * ceil32(return_data.size)) + 586]
                                if mem[(13 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36414
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36414
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37694 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37694] == bool(mem[_37694])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36414, arg5, this.address
                    else:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg3)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                        call address(arg3) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31299 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31555 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31555
                                require return_data.size >= _31299 + (32 * _31555) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31555] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _31299 + 553 len 32 * _31555]
                                if 1 >= _31555:
                                    revert with 0, 50
                                _36419 = mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36419
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36419
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37699 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37699] == bool(mem[_37699])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36419, arg5, this.address
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = address(arg3)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4)
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len 17 * ceil32(return_data.size)]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg3)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg4)
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 1
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                                t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = this.address
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                require return_data.size >= 32
                                _31300 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 552 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                                _31556 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg2) >> 32 + 521]) + 522
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = _31556
                                require return_data.size >= _31300 + (32 * _31556) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _31556] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _31300 + 553 len 32 * _31556]
                                if 1 >= _31556:
                                    revert with 0, 50
                                _36420 = mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]
                                if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36420
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36420
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37700 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37700] == bool(mem[_37700])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36420, arg5, this.address
                        else:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                mem[(12 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(12 * ceil32(return_data.size)) + 494 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(13 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(13 * ceil32(return_data.size)) + 426] = 2
                                mem[(13 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(13 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(13 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(13 * ceil32(return_data.size)) + 526] = arg2
                                mem[(13 * ceil32(return_data.size)) + 558] = 1
                                mem[(13 * ceil32(return_data.size)) + 590] = 160
                                mem[(13 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (13 * ceil32(return_data.size)) + 718
                                t = (13 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(13 * ceil32(return_data.size)) + 622] = this.address
                                mem[(13 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(13 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(13 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (14 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31301 = mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (13 * ceil32(return_data.size)) + return_data.size + 522
                                _31557 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(14 * ceil32(return_data.size)) + 522] = _31557
                                require return_data.size >= _31301 + (32 * _31557) + 32
                                mem[(14 * ceil32(return_data.size)) + 554 len 32 * _31557] = mem[(13 * ceil32(return_data.size)) + _31301 + 554 len 32 * _31557]
                                if 1 >= _31557:
                                    revert with 0, 50
                                _36421 = mem[(14 * ceil32(return_data.size)) + 586]
                                if mem[(14 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36421
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36421
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37701 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37701] == bool(mem[_37701])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36421, arg5, this.address
                            else:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 430] = address(arg3)
                                mem[(12 * ceil32(return_data.size)) + 462] = address(arg4)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg3), address(arg4), mem[(12 * ceil32(return_data.size)) + 494 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'No Swap Available',
                                                mem[(13 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(13 * ceil32(return_data.size)) + 426] = 2
                                mem[(13 * ceil32(return_data.size)) + 458] = address(arg3)
                                mem[(13 * ceil32(return_data.size)) + 490] = address(arg4)
                                mem[(13 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(13 * ceil32(return_data.size)) + 526] = arg2
                                mem[(13 * ceil32(return_data.size)) + 558] = 1
                                mem[(13 * ceil32(return_data.size)) + 590] = 160
                                mem[(13 * ceil32(return_data.size)) + 686] = 2
                                idx = 0
                                s = (13 * ceil32(return_data.size)) + 718
                                t = (13 * ceil32(return_data.size)) + 458
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(13 * ceil32(return_data.size)) + 622] = this.address
                                mem[(13 * ceil32(return_data.size)) + 654] = 0xf000000000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(13 * ceil32(return_data.size)) + 718 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(13 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (14 * ceil32(return_data.size)) + 522
                                require return_data.size >= 32
                                _31302 = mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 553 < (13 * ceil32(return_data.size)) + return_data.size + 522
                                _31558 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]
                                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522] > test266151307():
                                    revert with 0, 65
                                if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg2) >> 32 + 522]) + 523
                                mem[(14 * ceil32(return_data.size)) + 522] = _31558
                                require return_data.size >= _31302 + (32 * _31558) + 32
                                mem[(14 * ceil32(return_data.size)) + 554 len 32 * _31558] = mem[(13 * ceil32(return_data.size)) + _31302 + 554 len 32 * _31558]
                                if 1 >= _31558:
                                    revert with 0, 50
                                _36422 = mem[(14 * ceil32(return_data.size)) + 586]
                                if mem[(14 * ceil32(return_data.size)) + 586] <= 0:
                                    revert with 0, 'Error Swapping Tokens 2'
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _36422
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), _36422
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _37702 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_37702] == bool(mem[_37702])
                                require ext_code.size(address(arg1))
                                call address(arg1).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _36422, arg5, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
