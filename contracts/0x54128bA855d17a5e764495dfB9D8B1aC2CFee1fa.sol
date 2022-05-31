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

function sub_6f28a6bd(?) payable {
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

function sub_c00a97bd(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[100] = this.address
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    if not ext_call.return_data[0]:
        mem[(6 * ceil32(return_data.size)) + 96] = 26
        mem[(6 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        if arg4 / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if Mask(255, 1, arg4) > !bool(arg4):
            revert with 0, 17
        if arg4 != arg4:
            revert with 0, 1
        if address(arg2) == address(arg3):
            return (arg4 / 2)
        mem[(6 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[(6 * ceil32(return_data.size)) + 228] = 0
        mem[(6 * ceil32(return_data.size)) + 160] = 68
        mem[(6 * ceil32(return_data.size)) + 196 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
        mem[(6 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
        mem[(6 * ceil32(return_data.size)) + 260] = 32
        mem[(6 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + 324 len 96] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0
        mem[(6 * ceil32(return_data.size)) + 392] = 0
        call address(arg2) with:
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
                if not Mask(255, 1, arg4):
                    mem[(6 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(6 * ceil32(return_data.size)) + 392] = arg4 / 2
                    mem[(6 * ceil32(return_data.size)) + 324] = 68
                    mem[(6 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                    mem[(6 * ceil32(return_data.size)) + 424] = 32
                    mem[(6 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(6 * ceil32(return_data.size)) + 556] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                            s = (7 * ceil32(return_data.size)) + 780
                            t = (7 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26495 = mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (7 * ceil32(return_data.size)) + return_data.size + 584
                            _26751 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(8 * ceil32(return_data.size)) + 584] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            require return_data.size >= _26495 + (32 * _26751) + 32
                            mem[(8 * ceil32(return_data.size)) + 616 len 32 * _26751] = mem[(7 * ceil32(return_data.size)) + _26495 + 616 len 32 * _26751]
                            if 1 >= _26751:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                            s = (7 * ceil32(return_data.size)) + 780
                            t = (7 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26496 = mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (7 * ceil32(return_data.size)) + return_data.size + 584
                            _26752 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(8 * ceil32(return_data.size)) + 584] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            require return_data.size >= _26496 + (32 * _26752) + 32
                            mem[(8 * ceil32(return_data.size)) + 616 len 32 * _26752] = mem[(7 * ceil32(return_data.size)) + _26496 + 616 len 32 * _26752]
                            if 1 >= _26752:
                                revert with 0, 50
                        if mem[(8 * ceil32(return_data.size)) + 648] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(8 * ceil32(return_data.size)) + 648]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 488] = return_data.size
                        mem[(6 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
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
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26497 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26753 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26753
                            require return_data.size >= _26497 + (32 * _26753) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26753] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _26497 + 617 len 32 * _26753]
                            if 1 >= _26753:
                                revert with 0, 50
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
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26498 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26754 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26754
                            require return_data.size >= _26498 + (32 * _26754) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26754] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _26498 + 617 len 32 * _26754]
                            if 1 >= _26754:
                                revert with 0, 50
                        if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
                else:
                    mem[(6 * ceil32(return_data.size)) + 328] = this.address
                    mem[(6 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(6 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(7 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(7 * ceil32(return_data.size)) + 392] = arg4 / 2
                    mem[(7 * ceil32(return_data.size)) + 324] = 68
                    mem[(7 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                    mem[(7 * ceil32(return_data.size)) + 424] = 32
                    mem[(7 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(7 * ceil32(return_data.size)) + 556] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                                mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 488
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + 488] = 2
                            mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + 620] = 1
                            mem[(8 * ceil32(return_data.size)) + 652] = 160
                            mem[(8 * ceil32(return_data.size)) + 748] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 780
                            t = (8 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26503 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                            _26759 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(10 * ceil32(return_data.size)) + 584] = _26759
                            require return_data.size >= _26503 + (32 * _26759) + 32
                            mem[(10 * ceil32(return_data.size)) + 616 len 32 * _26759] = mem[(8 * ceil32(return_data.size)) + _26503 + 616 len 32 * _26759]
                            if 1 >= _26759:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                                mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 488
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + 488] = 2
                            mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + 620] = 1
                            mem[(8 * ceil32(return_data.size)) + 652] = 160
                            mem[(8 * ceil32(return_data.size)) + 748] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 780
                            t = (8 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26504 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                            _26760 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(10 * ceil32(return_data.size)) + 584] = _26760
                            require return_data.size >= _26504 + (32 * _26760) + 32
                            mem[(10 * ceil32(return_data.size)) + 616 len 32 * _26760] = mem[(8 * ceil32(return_data.size)) + _26504 + 616 len 32 * _26760]
                            if 1 >= _26760:
                                revert with 0, 50
                        if mem[(10 * ceil32(return_data.size)) + 648] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(10 * ceil32(return_data.size)) + 648]
                    else:
                        mem[(7 * ceil32(return_data.size)) + 488] = return_data.size
                        mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26505 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26761 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26505 + (32 * _26761) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26761] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26505 + 617 len 32 * _26761]
                            if 1 >= _26761:
                                revert with 0, 50
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26506 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26762 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26506 + (32 * _26762) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26762] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26506 + 617 len 32 * _26762]
                            if 1 >= _26762:
                                revert with 0, 50
                        if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
            else:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not Mask(255, 1, arg4):
                    mem[(6 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(6 * ceil32(return_data.size)) + 392] = arg4 / 2
                    mem[(6 * ceil32(return_data.size)) + 324] = 68
                    mem[(6 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                    mem[(6 * ceil32(return_data.size)) + 424] = 32
                    mem[(6 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(6 * ceil32(return_data.size)) + 556] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                            s = (7 * ceil32(return_data.size)) + 780
                            t = (7 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26511 = mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (7 * ceil32(return_data.size)) + return_data.size + 584
                            _26767 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(8 * ceil32(return_data.size)) + 584] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            require return_data.size >= _26511 + (32 * _26767) + 32
                            mem[(8 * ceil32(return_data.size)) + 616 len 32 * _26767] = mem[(7 * ceil32(return_data.size)) + _26511 + 616 len 32 * _26767]
                            if 1 >= _26767:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                            s = (7 * ceil32(return_data.size)) + 780
                            t = (7 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26512 = mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (7 * ceil32(return_data.size)) + return_data.size + 584
                            _26768 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(8 * ceil32(return_data.size)) + 584] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            require return_data.size >= _26512 + (32 * _26768) + 32
                            mem[(8 * ceil32(return_data.size)) + 616 len 32 * _26768] = mem[(7 * ceil32(return_data.size)) + _26512 + 616 len 32 * _26768]
                            if 1 >= _26768:
                                revert with 0, 50
                        if mem[(8 * ceil32(return_data.size)) + 648] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(8 * ceil32(return_data.size)) + 648]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 488] = return_data.size
                        mem[(6 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
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
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26513 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26769 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26769
                            require return_data.size >= _26513 + (32 * _26769) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26769] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _26513 + 617 len 32 * _26769]
                            if 1 >= _26769:
                                revert with 0, 50
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
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26514 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26770 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26770
                            require return_data.size >= _26514 + (32 * _26770) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26770] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _26514 + 617 len 32 * _26770]
                            if 1 >= _26770:
                                revert with 0, 50
                        if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
                else:
                    mem[(6 * ceil32(return_data.size)) + 328] = this.address
                    mem[(6 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(6 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(7 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(7 * ceil32(return_data.size)) + 392] = arg4 / 2
                    mem[(7 * ceil32(return_data.size)) + 324] = 68
                    mem[(7 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                    mem[(7 * ceil32(return_data.size)) + 424] = 32
                    mem[(7 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(7 * ceil32(return_data.size)) + 556] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                                mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 488
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + 488] = 2
                            mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + 620] = 1
                            mem[(8 * ceil32(return_data.size)) + 652] = 160
                            mem[(8 * ceil32(return_data.size)) + 748] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 780
                            t = (8 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26519 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                            _26775 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(10 * ceil32(return_data.size)) + 584] = _26775
                            require return_data.size >= _26519 + (32 * _26775) + 32
                            mem[(10 * ceil32(return_data.size)) + 616 len 32 * _26775] = mem[(8 * ceil32(return_data.size)) + _26519 + 616 len 32 * _26775]
                            if 1 >= _26775:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                                mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 488
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + 488] = 2
                            mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + 620] = 1
                            mem[(8 * ceil32(return_data.size)) + 652] = 160
                            mem[(8 * ceil32(return_data.size)) + 748] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 780
                            t = (8 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26520 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                            _26776 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(10 * ceil32(return_data.size)) + 584] = _26776
                            require return_data.size >= _26520 + (32 * _26776) + 32
                            mem[(10 * ceil32(return_data.size)) + 616 len 32 * _26776] = mem[(8 * ceil32(return_data.size)) + _26520 + 616 len 32 * _26776]
                            if 1 >= _26776:
                                revert with 0, 50
                        if mem[(10 * ceil32(return_data.size)) + 648] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(10 * ceil32(return_data.size)) + 648]
                    else:
                        mem[(7 * ceil32(return_data.size)) + 488] = return_data.size
                        mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26521 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26777 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26521 + (32 * _26777) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26777] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26521 + 617 len 32 * _26777]
                            if 1 >= _26777:
                                revert with 0, 50
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26522 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26778 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26522 + (32 * _26778) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26778] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26522 + 617 len 32 * _26778]
                            if 1 >= _26778:
                                revert with 0, 50
                        if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
        else:
            mem[(6 * ceil32(return_data.size)) + 324] = return_data.size
            mem[(6 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if not Mask(255, 1, arg4):
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4 / 2
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26527 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26783 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26783
                            require return_data.size >= _26527 + (32 * _26783) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26783] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _26527 + 617 len 32 * _26783]
                            if 1 >= _26783:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26528 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26784 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26784
                            require return_data.size >= _26528 + (32 * _26784) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26784] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _26528 + 617 len 32 * _26784]
                            if 1 >= _26784:
                                revert with 0, 50
                        if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
                    else:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(9 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not return_data.size:
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
                            mem[(10 * ceil32(return_data.size)) + 490] = 2
                            mem[(10 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + 622] = 1
                            mem[(10 * ceil32(return_data.size)) + 654] = 160
                            mem[(10 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 782
                            t = (10 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26529 = mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (10 * ceil32(return_data.size)) + return_data.size + 586
                            _26785 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(11 * ceil32(return_data.size)) + 586] = _26785
                            require return_data.size >= _26529 + (32 * _26785) + 32
                            mem[(11 * ceil32(return_data.size)) + 618 len 32 * _26785] = mem[(10 * ceil32(return_data.size)) + _26529 + 618 len 32 * _26785]
                            if 1 >= _26785:
                                revert with 0, 50
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
                            mem[(10 * ceil32(return_data.size)) + 490] = 2
                            mem[(10 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + 622] = 1
                            mem[(10 * ceil32(return_data.size)) + 654] = 160
                            mem[(10 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 782
                            t = (10 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26530 = mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (10 * ceil32(return_data.size)) + return_data.size + 586
                            _26786 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(11 * ceil32(return_data.size)) + 586] = _26786
                            require return_data.size >= _26530 + (32 * _26786) + 32
                            mem[(11 * ceil32(return_data.size)) + 618 len 32 * _26786] = mem[(10 * ceil32(return_data.size)) + _26530 + 618 len 32 * _26786]
                            if 1 >= _26786:
                                revert with 0, 50
                        if mem[(11 * ceil32(return_data.size)) + 650] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(11 * ceil32(return_data.size)) + 650]
                else:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4 / 2
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26535 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26791 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26535 + (32 * _26791) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26791] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26535 + 617 len 32 * _26791]
                            if 1 >= _26791:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26536 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26792 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26536 + (32 * _26792) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26792] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26536 + 617 len 32 * _26792]
                            if 1 >= _26792:
                                revert with 0, 50
                        if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
                    else:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not return_data.size:
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
                            mem[(12 * ceil32(return_data.size)) + 490] = 2
                            mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(12 * ceil32(return_data.size)) + 622] = 1
                            mem[(12 * ceil32(return_data.size)) + 654] = 160
                            mem[(12 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (12 * ceil32(return_data.size)) + 782
                            t = (12 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26537 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                            _26793 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            require return_data.size >= _26537 + (32 * _26793) + 32
                            mem[(13 * ceil32(return_data.size)) + 618 len 32 * _26793] = mem[(12 * ceil32(return_data.size)) + _26537 + 618 len 32 * _26793]
                            if 1 >= _26793:
                                revert with 0, 50
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
                            mem[(12 * ceil32(return_data.size)) + 490] = 2
                            mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(12 * ceil32(return_data.size)) + 622] = 1
                            mem[(12 * ceil32(return_data.size)) + 654] = 160
                            mem[(12 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (12 * ceil32(return_data.size)) + 782
                            t = (12 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26538 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                            _26794 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            require return_data.size >= _26538 + (32 * _26794) + 32
                            mem[(13 * ceil32(return_data.size)) + 618 len 32 * _26794] = mem[(12 * ceil32(return_data.size)) + _26538 + 618 len 32 * _26794]
                            if 1 >= _26794:
                                revert with 0, 50
                        if mem[(13 * ceil32(return_data.size)) + 650] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(13 * ceil32(return_data.size)) + 650]
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
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26543 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26799 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26799
                            require return_data.size >= _26543 + (32 * _26799) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26799] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _26543 + 617 len 32 * _26799]
                            if 1 >= _26799:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26544 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26800 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26800
                            require return_data.size >= _26544 + (32 * _26800) + 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26800] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + _26544 + 617 len 32 * _26800]
                            if 1 >= _26800:
                                revert with 0, 50
                        if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
                    else:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(9 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not return_data.size:
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
                            mem[(10 * ceil32(return_data.size)) + 490] = 2
                            mem[(10 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + 622] = 1
                            mem[(10 * ceil32(return_data.size)) + 654] = 160
                            mem[(10 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 782
                            t = (10 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26545 = mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (10 * ceil32(return_data.size)) + return_data.size + 586
                            _26801 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(11 * ceil32(return_data.size)) + 586] = _26801
                            require return_data.size >= _26545 + (32 * _26801) + 32
                            mem[(11 * ceil32(return_data.size)) + 618 len 32 * _26801] = mem[(10 * ceil32(return_data.size)) + _26545 + 618 len 32 * _26801]
                            if 1 >= _26801:
                                revert with 0, 50
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
                            mem[(10 * ceil32(return_data.size)) + 490] = 2
                            mem[(10 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + 622] = 1
                            mem[(10 * ceil32(return_data.size)) + 654] = 160
                            mem[(10 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 782
                            t = (10 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26546 = mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (10 * ceil32(return_data.size)) + return_data.size + 586
                            _26802 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(11 * ceil32(return_data.size)) + 586] = _26802
                            require return_data.size >= _26546 + (32 * _26802) + 32
                            mem[(11 * ceil32(return_data.size)) + 618 len 32 * _26802] = mem[(10 * ceil32(return_data.size)) + _26546 + 618 len 32 * _26802]
                            if 1 >= _26802:
                                revert with 0, 50
                        if mem[(11 * ceil32(return_data.size)) + 650] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(11 * ceil32(return_data.size)) + 650]
                else:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4 / 2
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26551 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26807 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26551 + (32 * _26807) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26807] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26551 + 617 len 32 * _26807]
                            if 1 >= _26807:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26552 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26808 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26552 + (32 * _26808) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26808] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26552 + 617 len 32 * _26808]
                            if 1 >= _26808:
                                revert with 0, 50
                        if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
                    else:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not return_data.size:
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
                            mem[(12 * ceil32(return_data.size)) + 490] = 2
                            mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(12 * ceil32(return_data.size)) + 622] = 1
                            mem[(12 * ceil32(return_data.size)) + 654] = 160
                            mem[(12 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (12 * ceil32(return_data.size)) + 782
                            t = (12 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26553 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                            _26809 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            require return_data.size >= _26553 + (32 * _26809) + 32
                            mem[(13 * ceil32(return_data.size)) + 618 len 32 * _26809] = mem[(12 * ceil32(return_data.size)) + _26553 + 618 len 32 * _26809]
                            if 1 >= _26809:
                                revert with 0, 50
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
                            mem[(12 * ceil32(return_data.size)) + 490] = 2
                            mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(12 * ceil32(return_data.size)) + 622] = 1
                            mem[(12 * ceil32(return_data.size)) + 654] = 160
                            mem[(12 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (12 * ceil32(return_data.size)) + 782
                            t = (12 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26554 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                            _26810 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            require return_data.size >= _26554 + (32 * _26810) + 32
                            mem[(13 * ceil32(return_data.size)) + 618 len 32 * _26810] = mem[(12 * ceil32(return_data.size)) + _26554 + 618 len 32 * _26810]
                            if 1 >= _26810:
                                revert with 0, 50
                        if mem[(13 * ceil32(return_data.size)) + 650] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(13 * ceil32(return_data.size)) + 650]
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
        mem[(7 * ceil32(return_data.size)) + 96] = 26
        mem[(7 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        if arg4 / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if Mask(255, 1, arg4) > !bool(arg4):
            revert with 0, 17
        if arg4 != arg4:
            revert with 0, 1
        if address(arg2) == address(arg3):
            return (arg4 / 2)
        mem[(7 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[(7 * ceil32(return_data.size)) + 228] = 0
        mem[(7 * ceil32(return_data.size)) + 160] = 68
        mem[(7 * ceil32(return_data.size)) + 196 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
        mem[(7 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
        mem[(7 * ceil32(return_data.size)) + 260] = 32
        mem[(7 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + 324 len 96] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0, 0
        mem[(7 * ceil32(return_data.size)) + 392] = 0
        call address(arg2) with:
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
                if not Mask(255, 1, arg4):
                    mem[(7 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(7 * ceil32(return_data.size)) + 392] = arg4 / 2
                    mem[(7 * ceil32(return_data.size)) + 324] = 68
                    mem[(7 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                    mem[(7 * ceil32(return_data.size)) + 424] = 32
                    mem[(7 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(7 * ceil32(return_data.size)) + 556] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                                mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 488
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + 488] = 2
                            mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + 620] = 1
                            mem[(8 * ceil32(return_data.size)) + 652] = 160
                            mem[(8 * ceil32(return_data.size)) + 748] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 780
                            t = (8 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26623 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                            _26879 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(10 * ceil32(return_data.size)) + 584] = _26879
                            require return_data.size >= _26623 + (32 * _26879) + 32
                            mem[(10 * ceil32(return_data.size)) + 616 len 32 * _26879] = mem[(8 * ceil32(return_data.size)) + _26623 + 616 len 32 * _26879]
                            if 1 >= _26879:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                                mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 488
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + 488] = 2
                            mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + 620] = 1
                            mem[(8 * ceil32(return_data.size)) + 652] = 160
                            mem[(8 * ceil32(return_data.size)) + 748] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 780
                            t = (8 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26624 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                            _26880 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(10 * ceil32(return_data.size)) + 584] = _26880
                            require return_data.size >= _26624 + (32 * _26880) + 32
                            mem[(10 * ceil32(return_data.size)) + 616 len 32 * _26880] = mem[(8 * ceil32(return_data.size)) + _26624 + 616 len 32 * _26880]
                            if 1 >= _26880:
                                revert with 0, 50
                        if mem[(10 * ceil32(return_data.size)) + 648] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(10 * ceil32(return_data.size)) + 648]
                    else:
                        mem[(7 * ceil32(return_data.size)) + 488] = return_data.size
                        mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26625 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26881 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26625 + (32 * _26881) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26881] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26625 + 617 len 32 * _26881]
                            if 1 >= _26881:
                                revert with 0, 50
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26626 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26882 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26626 + (32 * _26882) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26882] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26626 + 617 len 32 * _26882]
                            if 1 >= _26882:
                                revert with 0, 50
                        if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
                else:
                    mem[(7 * ceil32(return_data.size)) + 328] = this.address
                    mem[(7 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(7 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(8 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(8 * ceil32(return_data.size)) + 392] = arg4 / 2
                    mem[(8 * ceil32(return_data.size)) + 324] = 68
                    mem[(8 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                    mem[(8 * ceil32(return_data.size)) + 424] = 32
                    mem[(8 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(8 * ceil32(return_data.size)) + 556] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                            mem[(10 * ceil32(return_data.size)) + 488] = 2
                            mem[(10 * ceil32(return_data.size)) + 520] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 552] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 588] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + 620] = 1
                            mem[(10 * ceil32(return_data.size)) + 652] = 160
                            mem[(10 * ceil32(return_data.size)) + 748] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 780
                            t = (10 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26631 = mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (10 * ceil32(return_data.size)) + return_data.size + 584
                            _26887 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(11 * ceil32(return_data.size)) + 584] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            require return_data.size >= _26631 + (32 * _26887) + 32
                            mem[(11 * ceil32(return_data.size)) + 616 len 32 * _26887] = mem[(10 * ceil32(return_data.size)) + _26631 + 616 len 32 * _26887]
                            if 1 >= _26887:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                            mem[(10 * ceil32(return_data.size)) + 488] = 2
                            mem[(10 * ceil32(return_data.size)) + 520] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 552] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 588] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + 620] = 1
                            mem[(10 * ceil32(return_data.size)) + 652] = 160
                            mem[(10 * ceil32(return_data.size)) + 748] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 780
                            t = (10 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26632 = mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (10 * ceil32(return_data.size)) + return_data.size + 584
                            _26888 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(11 * ceil32(return_data.size)) + 584] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            require return_data.size >= _26632 + (32 * _26888) + 32
                            mem[(11 * ceil32(return_data.size)) + 616 len 32 * _26888] = mem[(10 * ceil32(return_data.size)) + _26632 + 616 len 32 * _26888]
                            if 1 >= _26888:
                                revert with 0, 50
                        if mem[(11 * ceil32(return_data.size)) + 648] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(11 * ceil32(return_data.size)) + 648]
                    else:
                        mem[(8 * ceil32(return_data.size)) + 488] = return_data.size
                        mem[(8 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
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
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26633 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26889 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26889
                            require return_data.size >= _26633 + (32 * _26889) + 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26889] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _26633 + 617 len 32 * _26889]
                            if 1 >= _26889:
                                revert with 0, 50
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
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26634 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26890 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26890
                            require return_data.size >= _26634 + (32 * _26890) + 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26890] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _26634 + 617 len 32 * _26890]
                            if 1 >= _26890:
                                revert with 0, 50
                        if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
            else:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not Mask(255, 1, arg4):
                    mem[(7 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(7 * ceil32(return_data.size)) + 392] = arg4 / 2
                    mem[(7 * ceil32(return_data.size)) + 324] = 68
                    mem[(7 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                    mem[(7 * ceil32(return_data.size)) + 424] = 32
                    mem[(7 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(7 * ceil32(return_data.size)) + 556] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                                mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 488
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + 488] = 2
                            mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + 620] = 1
                            mem[(8 * ceil32(return_data.size)) + 652] = 160
                            mem[(8 * ceil32(return_data.size)) + 748] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 780
                            t = (8 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26639 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                            _26895 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(10 * ceil32(return_data.size)) + 584] = _26895
                            require return_data.size >= _26639 + (32 * _26895) + 32
                            mem[(10 * ceil32(return_data.size)) + 616 len 32 * _26895] = mem[(8 * ceil32(return_data.size)) + _26639 + 616 len 32 * _26895]
                            if 1 >= _26895:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                                mem[(8 * ceil32(return_data.size)) + 556] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 488
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + 488] = 2
                            mem[(8 * ceil32(return_data.size)) + 520] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + 552] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 588] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + 620] = 1
                            mem[(8 * ceil32(return_data.size)) + 652] = 160
                            mem[(8 * ceil32(return_data.size)) + 748] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 780
                            t = (8 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26640 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                            _26896 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(10 * ceil32(return_data.size)) + 584] = _26896
                            require return_data.size >= _26640 + (32 * _26896) + 32
                            mem[(10 * ceil32(return_data.size)) + 616 len 32 * _26896] = mem[(8 * ceil32(return_data.size)) + _26640 + 616 len 32 * _26896]
                            if 1 >= _26896:
                                revert with 0, 50
                        if mem[(10 * ceil32(return_data.size)) + 648] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(10 * ceil32(return_data.size)) + 648]
                    else:
                        mem[(7 * ceil32(return_data.size)) + 488] = return_data.size
                        mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26641 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26897 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26641 + (32 * _26897) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26897] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26641 + 617 len 32 * _26897]
                            if 1 >= _26897:
                                revert with 0, 50
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26642 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26898 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26642 + (32 * _26898) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26898] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26642 + 617 len 32 * _26898]
                            if 1 >= _26898:
                                revert with 0, 50
                        if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
                else:
                    mem[(7 * ceil32(return_data.size)) + 328] = this.address
                    mem[(7 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(7 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(8 * ceil32(return_data.size)) + 360] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(8 * ceil32(return_data.size)) + 392] = arg4 / 2
                    mem[(8 * ceil32(return_data.size)) + 324] = 68
                    mem[(8 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
                    mem[(8 * ceil32(return_data.size)) + 424] = 32
                    mem[(8 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 488 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(8 * ceil32(return_data.size)) + 556] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                            mem[(10 * ceil32(return_data.size)) + 488] = 2
                            mem[(10 * ceil32(return_data.size)) + 520] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 552] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 588] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + 620] = 1
                            mem[(10 * ceil32(return_data.size)) + 652] = 160
                            mem[(10 * ceil32(return_data.size)) + 748] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 780
                            t = (10 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26647 = mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (10 * ceil32(return_data.size)) + return_data.size + 584
                            _26903 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(11 * ceil32(return_data.size)) + 584] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            require return_data.size >= _26647 + (32 * _26903) + 32
                            mem[(11 * ceil32(return_data.size)) + 616 len 32 * _26903] = mem[(10 * ceil32(return_data.size)) + _26647 + 616 len 32 * _26903]
                            if 1 >= _26903:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                            mem[(10 * ceil32(return_data.size)) + 488] = 2
                            mem[(10 * ceil32(return_data.size)) + 520] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 552] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + 584] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 588] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + 620] = 1
                            mem[(10 * ceil32(return_data.size)) + 652] = 160
                            mem[(10 * ceil32(return_data.size)) + 748] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 780
                            t = (10 * ceil32(return_data.size)) + 520
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26648 = mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (10 * ceil32(return_data.size)) + return_data.size + 584
                            _26904 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                            mem[(11 * ceil32(return_data.size)) + 584] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                            require return_data.size >= _26648 + (32 * _26904) + 32
                            mem[(11 * ceil32(return_data.size)) + 616 len 32 * _26904] = mem[(10 * ceil32(return_data.size)) + _26648 + 616 len 32 * _26904]
                            if 1 >= _26904:
                                revert with 0, 50
                        if mem[(11 * ceil32(return_data.size)) + 648] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(11 * ceil32(return_data.size)) + 648]
                    else:
                        mem[(8 * ceil32(return_data.size)) + 488] = return_data.size
                        mem[(8 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
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
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26649 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26905 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26905
                            require return_data.size >= _26649 + (32 * _26905) + 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26905] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _26649 + 617 len 32 * _26905]
                            if 1 >= _26905:
                                revert with 0, 50
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
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26650 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26906 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26906
                            require return_data.size >= _26650 + (32 * _26906) + 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26906] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _26650 + 617 len 32 * _26906]
                            if 1 >= _26906:
                                revert with 0, 50
                        if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
        else:
            mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
            mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if not Mask(255, 1, arg4):
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4 / 2
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26655 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26911 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26655 + (32 * _26911) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26911] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26655 + 617 len 32 * _26911]
                            if 1 >= _26911:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26656 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26912 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26656 + (32 * _26912) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26912] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26656 + 617 len 32 * _26912]
                            if 1 >= _26912:
                                revert with 0, 50
                        if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
                    else:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not return_data.size:
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
                            mem[(12 * ceil32(return_data.size)) + 490] = 2
                            mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(12 * ceil32(return_data.size)) + 622] = 1
                            mem[(12 * ceil32(return_data.size)) + 654] = 160
                            mem[(12 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (12 * ceil32(return_data.size)) + 782
                            t = (12 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26657 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                            _26913 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            require return_data.size >= _26657 + (32 * _26913) + 32
                            mem[(13 * ceil32(return_data.size)) + 618 len 32 * _26913] = mem[(12 * ceil32(return_data.size)) + _26657 + 618 len 32 * _26913]
                            if 1 >= _26913:
                                revert with 0, 50
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
                            mem[(12 * ceil32(return_data.size)) + 490] = 2
                            mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(12 * ceil32(return_data.size)) + 622] = 1
                            mem[(12 * ceil32(return_data.size)) + 654] = 160
                            mem[(12 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (12 * ceil32(return_data.size)) + 782
                            t = (12 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26658 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                            _26914 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            require return_data.size >= _26658 + (32 * _26914) + 32
                            mem[(13 * ceil32(return_data.size)) + 618 len 32 * _26914] = mem[(12 * ceil32(return_data.size)) + _26658 + 618 len 32 * _26914]
                            if 1 >= _26914:
                                revert with 0, 50
                        if mem[(13 * ceil32(return_data.size)) + 650] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(13 * ceil32(return_data.size)) + 650]
                else:
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4 / 2
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26663 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26919 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26919
                            require return_data.size >= _26663 + (32 * _26919) + 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26919] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _26663 + 617 len 32 * _26919]
                            if 1 >= _26919:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26664 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26920 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26920
                            require return_data.size >= _26664 + (32 * _26920) + 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26920] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _26664 + 617 len 32 * _26920]
                            if 1 >= _26920:
                                revert with 0, 50
                        if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
                    else:
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(12 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not return_data.size:
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
                            mem[(13 * ceil32(return_data.size)) + 490] = 2
                            mem[(13 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(13 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(13 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(13 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(13 * ceil32(return_data.size)) + 622] = 1
                            mem[(13 * ceil32(return_data.size)) + 654] = 160
                            mem[(13 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (13 * ceil32(return_data.size)) + 782
                            t = (13 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26665 = mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (13 * ceil32(return_data.size)) + return_data.size + 586
                            _26921 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(14 * ceil32(return_data.size)) + 586] = _26921
                            require return_data.size >= _26665 + (32 * _26921) + 32
                            mem[(14 * ceil32(return_data.size)) + 618 len 32 * _26921] = mem[(13 * ceil32(return_data.size)) + _26665 + 618 len 32 * _26921]
                            if 1 >= _26921:
                                revert with 0, 50
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
                            mem[(13 * ceil32(return_data.size)) + 490] = 2
                            mem[(13 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(13 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(13 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(13 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(13 * ceil32(return_data.size)) + 622] = 1
                            mem[(13 * ceil32(return_data.size)) + 654] = 160
                            mem[(13 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (13 * ceil32(return_data.size)) + 782
                            t = (13 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26666 = mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (13 * ceil32(return_data.size)) + return_data.size + 586
                            _26922 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(14 * ceil32(return_data.size)) + 586] = _26922
                            require return_data.size >= _26666 + (32 * _26922) + 32
                            mem[(14 * ceil32(return_data.size)) + 618 len 32 * _26922] = mem[(13 * ceil32(return_data.size)) + _26666 + 618 len 32 * _26922]
                            if 1 >= _26922:
                                revert with 0, 50
                        if mem[(14 * ceil32(return_data.size)) + 650] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(14 * ceil32(return_data.size)) + 650]
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
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26671 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26927 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26671 + (32 * _26927) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26927] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26671 + 617 len 32 * _26927]
                            if 1 >= _26927:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'No Swap Available' << 120
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                   len ceil32(return_data.size) + 100
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26672 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26928 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            require return_data.size >= _26672 + (32 * _26928) + 32
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26928] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _26672 + 617 len 32 * _26928]
                            if 1 >= _26928:
                                revert with 0, 50
                        if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
                    else:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not return_data.size:
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
                            mem[(12 * ceil32(return_data.size)) + 490] = 2
                            mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(12 * ceil32(return_data.size)) + 622] = 1
                            mem[(12 * ceil32(return_data.size)) + 654] = 160
                            mem[(12 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (12 * ceil32(return_data.size)) + 782
                            t = (12 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26673 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                            _26929 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            require return_data.size >= _26673 + (32 * _26929) + 32
                            mem[(13 * ceil32(return_data.size)) + 618 len 32 * _26929] = mem[(12 * ceil32(return_data.size)) + _26673 + 618 len 32 * _26929]
                            if 1 >= _26929:
                                revert with 0, 50
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
                            mem[(12 * ceil32(return_data.size)) + 490] = 2
                            mem[(12 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(12 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(12 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(12 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(12 * ceil32(return_data.size)) + 622] = 1
                            mem[(12 * ceil32(return_data.size)) + 654] = 160
                            mem[(12 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (12 * ceil32(return_data.size)) + 782
                            t = (12 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26674 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                            _26930 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            require return_data.size >= _26674 + (32 * _26930) + 32
                            mem[(13 * ceil32(return_data.size)) + 618 len 32 * _26930] = mem[(12 * ceil32(return_data.size)) + _26674 + 618 len 32 * _26930]
                            if 1 >= _26930:
                                revert with 0, 50
                        if mem[(13 * ceil32(return_data.size)) + 650] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(13 * ceil32(return_data.size)) + 650]
                else:
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4 / 2
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
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
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26679 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26935 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26935
                            require return_data.size >= _26679 + (32 * _26935) + 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26935] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _26679 + 617 len 32 * _26935]
                            if 1 >= _26935:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
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
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = address(arg3)
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg4 / 2
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 1
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 160
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 2
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 781
                            t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26680 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                            _26936 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = _26936
                            require return_data.size >= _26680 + (32 * _26936) + 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _26936] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _26680 + 617 len 32 * _26936]
                            if 1 >= _26936:
                                revert with 0, 50
                        if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649]
                    else:
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(12 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not return_data.size:
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
                            mem[(13 * ceil32(return_data.size)) + 490] = 2
                            mem[(13 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(13 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(13 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(13 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(13 * ceil32(return_data.size)) + 622] = 1
                            mem[(13 * ceil32(return_data.size)) + 654] = 160
                            mem[(13 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (13 * ceil32(return_data.size)) + 782
                            t = (13 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26681 = mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (13 * ceil32(return_data.size)) + return_data.size + 586
                            _26937 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(14 * ceil32(return_data.size)) + 586] = _26937
                            require return_data.size >= _26681 + (32 * _26937) + 32
                            mem[(14 * ceil32(return_data.size)) + 618 len 32 * _26937] = mem[(13 * ceil32(return_data.size)) + _26681 + 618 len 32 * _26937]
                            if 1 >= _26937:
                                revert with 0, 50
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
                            mem[(13 * ceil32(return_data.size)) + 490] = 2
                            mem[(13 * ceil32(return_data.size)) + 522] = address(arg2)
                            mem[(13 * ceil32(return_data.size)) + 554] = address(arg3)
                            mem[(13 * ceil32(return_data.size)) + 586] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(13 * ceil32(return_data.size)) + 590] = arg4 / 2
                            mem[(13 * ceil32(return_data.size)) + 622] = 1
                            mem[(13 * ceil32(return_data.size)) + 654] = 160
                            mem[(13 * ceil32(return_data.size)) + 750] = 2
                            idx = 0
                            s = (13 * ceil32(return_data.size)) + 782
                            t = (13 * ceil32(return_data.size)) + 522
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            _26682 = mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                            require mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                            require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (13 * ceil32(return_data.size)) + return_data.size + 586
                            _26938 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                            if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                revert with 0, 65
                            if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                            mem[(14 * ceil32(return_data.size)) + 586] = _26938
                            require return_data.size >= _26682 + (32 * _26938) + 32
                            mem[(14 * ceil32(return_data.size)) + 618 len 32 * _26938] = mem[(13 * ceil32(return_data.size)) + _26682 + 618 len 32 * _26938]
                            if 1 >= _26938:
                                revert with 0, 50
                        if mem[(14 * ceil32(return_data.size)) + 650] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                        mem[mem[64]] = mem[(14 * ceil32(return_data.size)) + 650]
    return memory
      from mem[64]
       len 32
}



}
