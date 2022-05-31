contract main {




// =====================  Runtime code  =====================


#
#  - sub_082bfd18(?)
#  - sub_0f32600d(?)
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

function sub_1c9f78cc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
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
        if not ext_code.size(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call address(arg1) with:
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
                if not arg3:
                    mem[(4 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + 328] = arg3
                    mem[(4 * ceil32(return_data.size)) + 260] = 68
                    mem[(4 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + 360] = 32
                    mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(4 * ceil32(return_data.size)) + 492] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                            s = (6 * ceil32(return_data.size)) + 716
                            t = (6 * ceil32(return_data.size)) + 456
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12519 = mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (6 * ceil32(return_data.size)) + return_data.size + 520
                            _12647 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 0, 65
                            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 0, 65
                            mem[(7 * ceil32(return_data.size)) + 520] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            require return_data.size >= _12519 + (32 * _12647) + 32
                            mem[(7 * ceil32(return_data.size)) + 552 len 32 * _12647] = mem[(6 * ceil32(return_data.size)) + _12519 + 552 len 32 * _12647]
                            if 1 >= _12647:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                            s = (6 * ceil32(return_data.size)) + 716
                            t = (6 * ceil32(return_data.size)) + 456
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12520 = mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (6 * ceil32(return_data.size)) + return_data.size + 520
                            _12648 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 0, 65
                            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 0, 65
                            mem[(7 * ceil32(return_data.size)) + 520] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            require return_data.size >= _12520 + (32 * _12648) + 32
                            mem[(7 * ceil32(return_data.size)) + 552 len 32 * _12648] = mem[(6 * ceil32(return_data.size)) + _12520 + 552 len 32 * _12648]
                            if 1 >= _12648:
                                revert with 0, 50
                        if mem[(7 * ceil32(return_data.size)) + 584] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 424] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
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
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12521 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12649 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require return_data.size >= _12521 + (32 * _12649) + 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12649] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + _12521 + 553 len 32 * _12649]
                            if 1 >= _12649:
                                revert with 0, 50
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
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12522 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12650 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require return_data.size >= _12522 + (32 * _12650) + 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12650] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + _12522 + 553 len 32 * _12650]
                            if 1 >= _12650:
                                revert with 0, 50
                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                else:
                    mem[(4 * ceil32(return_data.size)) + 264] = this.address
                    mem[(4 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(6 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(6 * ceil32(return_data.size)) + 328] = arg3
                    mem[(6 * ceil32(return_data.size)) + 260] = 68
                    mem[(6 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                    mem[(6 * ceil32(return_data.size)) + 360] = 32
                    mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(6 * ceil32(return_data.size)) + 492] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                            mem[(7 * ceil32(return_data.size)) + 456] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + 488] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 524] = arg3
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 716 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + 520
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (7 * ceil32(return_data.size)) + return_data.size + 520
                            _12655 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 32
                            mem[(8 * ceil32(return_data.size)) + 552 len 32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 552 len 32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]]
                            if 1 >= _12655:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                            mem[(7 * ceil32(return_data.size)) + 456] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + 488] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 524] = arg3
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 716 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + 520
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (7 * ceil32(return_data.size)) + return_data.size + 520
                            _12656 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 32
                            mem[(8 * ceil32(return_data.size)) + 552 len 32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 552 len 32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]]
                            if 1 >= _12656:
                                revert with 0, 50
                        if mem[(8 * ceil32(return_data.size)) + 584] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12657 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + (32 * _12657) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12657] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 553 len 32 * _12657]
                            if 1 >= _12657:
                                revert with 0, 50
                        else:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                            if not mem[(6 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12658 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + (32 * _12658) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12658] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 553 len 32 * _12658]
                            if 1 >= _12658:
                                revert with 0, 50
                        if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
            else:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not arg3:
                    mem[(4 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + 328] = arg3
                    mem[(4 * ceil32(return_data.size)) + 260] = 68
                    mem[(4 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + 360] = 32
                    mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(4 * ceil32(return_data.size)) + 492] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                            s = (6 * ceil32(return_data.size)) + 716
                            t = (6 * ceil32(return_data.size)) + 456
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12535 = mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (6 * ceil32(return_data.size)) + return_data.size + 520
                            _12663 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 0, 65
                            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 0, 65
                            mem[(7 * ceil32(return_data.size)) + 520] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            require return_data.size >= _12535 + (32 * _12663) + 32
                            mem[(7 * ceil32(return_data.size)) + 552 len 32 * _12663] = mem[(6 * ceil32(return_data.size)) + _12535 + 552 len 32 * _12663]
                            if 1 >= _12663:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                            s = (6 * ceil32(return_data.size)) + 716
                            t = (6 * ceil32(return_data.size)) + 456
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12536 = mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (6 * ceil32(return_data.size)) + return_data.size + 520
                            _12664 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 0, 65
                            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 0, 65
                            mem[(7 * ceil32(return_data.size)) + 520] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            require return_data.size >= _12536 + (32 * _12664) + 32
                            mem[(7 * ceil32(return_data.size)) + 552 len 32 * _12664] = mem[(6 * ceil32(return_data.size)) + _12536 + 552 len 32 * _12664]
                            if 1 >= _12664:
                                revert with 0, 50
                        if mem[(7 * ceil32(return_data.size)) + 584] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 424] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
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
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12537 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12665 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require return_data.size >= _12537 + (32 * _12665) + 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12665] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + _12537 + 553 len 32 * _12665]
                            if 1 >= _12665:
                                revert with 0, 50
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
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12538 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12666 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require return_data.size >= _12538 + (32 * _12666) + 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12666] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + _12538 + 553 len 32 * _12666]
                            if 1 >= _12666:
                                revert with 0, 50
                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                else:
                    mem[(4 * ceil32(return_data.size)) + 264] = this.address
                    mem[(4 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(6 * ceil32(return_data.size)) + 296] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(6 * ceil32(return_data.size)) + 328] = arg3
                    mem[(6 * ceil32(return_data.size)) + 260] = 68
                    mem[(6 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                    mem[(6 * ceil32(return_data.size)) + 360] = 32
                    mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(6 * ceil32(return_data.size)) + 492] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                            mem[(7 * ceil32(return_data.size)) + 456] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + 488] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 524] = arg3
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 716 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + 520
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (7 * ceil32(return_data.size)) + return_data.size + 520
                            _12671 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 32
                            mem[(8 * ceil32(return_data.size)) + 552 len 32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 552 len 32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]]
                            if 1 >= _12671:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                            mem[(7 * ceil32(return_data.size)) + 456] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + 488] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + 520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 524] = arg3
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + 716 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + 520
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 551 < (7 * ceil32(return_data.size)) + return_data.size + 520
                            _12672 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 32
                            mem[(8 * ceil32(return_data.size)) + 552 len 32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 552 len 32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]]
                            if 1 >= _12672:
                                revert with 0, 50
                        if mem[(8 * ceil32(return_data.size)) + 584] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12673 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + (32 * _12673) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12673] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 553 len 32 * _12673]
                            if 1 >= _12673:
                                revert with 0, 50
                        else:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                            if not mem[(6 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12674 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + (32 * _12674) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12674] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 553 len 32 * _12674]
                            if 1 >= _12674:
                                revert with 0, 50
                        if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
        else:
            mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if not arg3:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12551 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12679 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require return_data.size >= _12551 + (32 * _12679) + 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12679] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + _12551 + 553 len 32 * _12679]
                            if 1 >= _12679:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12552 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12680 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require return_data.size >= _12552 + (32 * _12680) + 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12680] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + _12552 + 553 len 32 * _12680]
                            if 1 >= _12680:
                                revert with 0, 50
                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 430] = 32
                            mem[(8 * ceil32(return_data.size)) + 462] = 32
                            mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 426
                               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if not return_data.size:
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
                            s = (9 * ceil32(return_data.size)) + 718
                            t = (9 * ceil32(return_data.size)) + 458
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12553 = mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (9 * ceil32(return_data.size)) + return_data.size + 522
                            _12681 = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 0, 65
                            mem[(10 * ceil32(return_data.size)) + 522] = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require return_data.size >= _12553 + (32 * _12681) + 32
                            mem[(10 * ceil32(return_data.size)) + 554 len 32 * _12681] = mem[(9 * ceil32(return_data.size)) + _12553 + 554 len 32 * _12681]
                            if 1 >= _12681:
                                revert with 0, 50
                        else:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 430] = 32
                                mem[(8 * ceil32(return_data.size)) + 462] = 42
                                mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                                mem[(8 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
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
                            s = (9 * ceil32(return_data.size)) + 718
                            t = (9 * ceil32(return_data.size)) + 458
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12554 = mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (9 * ceil32(return_data.size)) + return_data.size + 522
                            _12682 = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 0, 65
                            mem[(10 * ceil32(return_data.size)) + 522] = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require return_data.size >= _12554 + (32 * _12682) + 32
                            mem[(10 * ceil32(return_data.size)) + 554 len 32 * _12682] = mem[(9 * ceil32(return_data.size)) + _12554 + 554 len 32 * _12682]
                            if 1 >= _12682:
                                revert with 0, 50
                        if mem[(10 * ceil32(return_data.size)) + 586] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12687 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + (32 * _12687) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12687] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 553 len 32 * _12687]
                            if 1 >= _12687:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12688 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + (32 * _12688) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12688] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 553 len 32 * _12688]
                            if 1 >= _12688:
                                revert with 0, 50
                        if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 718 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 522
                            require return_data.size >= 32
                            _12561 = mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (10 * ceil32(return_data.size)) + return_data.size + 522
                            _12689 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 0, 65
                            mem[(11 * ceil32(return_data.size)) + 522] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require return_data.size >= _12561 + (32 * _12689) + 32
                            mem[(11 * ceil32(return_data.size)) + 554 len 32 * _12689] = mem[(10 * ceil32(return_data.size)) + _12561 + 554 len 32 * _12689]
                            if 1 >= _12689:
                                revert with 0, 50
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 718 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 522
                            require return_data.size >= 32
                            _12562 = mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (10 * ceil32(return_data.size)) + return_data.size + 522
                            _12690 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 0, 65
                            mem[(11 * ceil32(return_data.size)) + 522] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require return_data.size >= _12562 + (32 * _12690) + 32
                            mem[(11 * ceil32(return_data.size)) + 554 len 32 * _12690] = mem[(10 * ceil32(return_data.size)) + _12562 + 554 len 32 * _12690]
                            if 1 >= _12690:
                                revert with 0, 50
                        if mem[(11 * ceil32(return_data.size)) + 586] <= 0:
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
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12567 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12695 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require return_data.size >= _12567 + (32 * _12695) + 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12695] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + _12567 + 553 len 32 * _12695]
                            if 1 >= _12695:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12568 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12696 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            require return_data.size >= _12568 + (32 * _12696) + 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12696] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + _12568 + 553 len 32 * _12696]
                            if 1 >= _12696:
                                revert with 0, 50
                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 430] = 32
                            mem[(8 * ceil32(return_data.size)) + 462] = 32
                            mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 426
                               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if not return_data.size:
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
                            s = (9 * ceil32(return_data.size)) + 718
                            t = (9 * ceil32(return_data.size)) + 458
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12569 = mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (9 * ceil32(return_data.size)) + return_data.size + 522
                            _12697 = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 0, 65
                            mem[(10 * ceil32(return_data.size)) + 522] = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require return_data.size >= _12569 + (32 * _12697) + 32
                            mem[(10 * ceil32(return_data.size)) + 554 len 32 * _12697] = mem[(9 * ceil32(return_data.size)) + _12569 + 554 len 32 * _12697]
                            if 1 >= _12697:
                                revert with 0, 50
                        else:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 430] = 32
                                mem[(8 * ceil32(return_data.size)) + 462] = 42
                                mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                                mem[(8 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
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
                            s = (9 * ceil32(return_data.size)) + 718
                            t = (9 * ceil32(return_data.size)) + 458
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _12570 = mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (9 * ceil32(return_data.size)) + return_data.size + 522
                            _12698 = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 0, 65
                            mem[(10 * ceil32(return_data.size)) + 522] = mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require return_data.size >= _12570 + (32 * _12698) + 32
                            mem[(10 * ceil32(return_data.size)) + 554 len 32 * _12698] = mem[(9 * ceil32(return_data.size)) + _12570 + 554 len 32 * _12698]
                            if 1 >= _12698:
                                revert with 0, 50
                        if mem[(10 * ceil32(return_data.size)) + 586] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12703 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + (32 * _12703) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12703] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 553 len 32 * _12703]
                            if 1 >= _12703:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'No Swap Available'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg1)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = address(arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg3
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 552 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 521
                            _12704 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + (32 * _12704) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 32 * _12704] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 553 len 32 * _12704]
                            if 1 >= _12704:
                                revert with 0, 50
                        if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 718 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 522
                            require return_data.size >= 32
                            _12577 = mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (10 * ceil32(return_data.size)) + return_data.size + 522
                            _12705 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 0, 65
                            mem[(11 * ceil32(return_data.size)) + 522] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require return_data.size >= _12577 + (32 * _12705) + 32
                            mem[(11 * ceil32(return_data.size)) + 554 len 32 * _12705] = mem[(10 * ceil32(return_data.size)) + _12577 + 554 len 32 * _12705]
                            if 1 >= _12705:
                                revert with 0, 50
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
                                args arg3, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(10 * ceil32(return_data.size)) + 718 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 522
                            require return_data.size >= 32
                            _12578 = mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 553 < (10 * ceil32(return_data.size)) + return_data.size + 522
                            _12706 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 1 < 0:
                                revert with 0, 65
                            mem[(11 * ceil32(return_data.size)) + 522] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require return_data.size >= _12578 + (32 * _12706) + 32
                            mem[(11 * ceil32(return_data.size)) + 554 len 32 * _12706] = mem[(10 * ceil32(return_data.size)) + _12578 + 554 len 32 * _12706]
                            if 1 >= _12706:
                                revert with 0, 50
                        if mem[(11 * ceil32(return_data.size)) + 586] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
}



}
