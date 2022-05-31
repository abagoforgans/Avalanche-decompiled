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
    return ext_call.return_data[0]
}

function sub_075ecfac(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
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
}

function addLiquidity(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, 0xf000000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
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
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521
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
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521
                            mem[(7 * ceil32(return_data.size)) + 520] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            require return_data.size >= _12520 + (32 * _12648) + 32
                            mem[(7 * ceil32(return_data.size)) + 552 len 32 * _12648] = mem[(6 * ceil32(return_data.size)) + _12520 + 552 len 32 * _12648]
                            if 1 >= _12648:
                                revert with 0, 50
                        if mem[(7 * ceil32(return_data.size)) + 584] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
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
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
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
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
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
                            mem[(6 * ceil32(return_data.size)) + 460] = address(arg2)
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
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + (32 * _12655) + 32
                            mem[(8 * ceil32(return_data.size)) + 552 len 32 * _12655] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 552 len 32 * _12655]
                            if 1 >= _12655:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(6 * ceil32(return_data.size)) + 460] = address(arg2)
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
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + (32 * _12656) + 32
                            mem[(8 * ceil32(return_data.size)) + 552 len 32 * _12656] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 552 len 32 * _12656]
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
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521
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
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521
                            mem[(7 * ceil32(return_data.size)) + 520] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]
                            require return_data.size >= _12536 + (32 * _12664) + 32
                            mem[(7 * ceil32(return_data.size)) + 552 len 32 * _12664] = mem[(6 * ceil32(return_data.size)) + _12536 + 552 len 32 * _12664]
                            if 1 >= _12664:
                                revert with 0, 50
                        if mem[(7 * ceil32(return_data.size)) + 584] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
                    else:
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
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
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
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
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
                            mem[(6 * ceil32(return_data.size)) + 460] = address(arg2)
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
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + (32 * _12671) + 32
                            mem[(8 * ceil32(return_data.size)) + 552 len 32 * _12671] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 552 len 32 * _12671]
                            if 1 >= _12671:
                                revert with 0, 50
                        else:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                            if not uint32(this.address), mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(6 * ceil32(return_data.size)) + 460] = address(arg2)
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
                            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 520]) + 521
                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + (32 * _12672) + 32
                            mem[(8 * ceil32(return_data.size)) + 552 len 32 * _12672] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 520 len 4], Mask(224, 32, arg3) >> 32 + 552 len 32 * _12672]
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
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
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
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
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
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523
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
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523
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
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not return_data.size:
                            mem[(9 * ceil32(return_data.size)) + 462] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2), mem[(9 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523
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
                            mem[(9 * ceil32(return_data.size)) + 462] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2), mem[(9 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523
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
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
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
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg3) >> 32 + 521]) + 522
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
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523
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
                            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(9 * ceil32(return_data.size)) + mem[(9 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523
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
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not return_data.size:
                            mem[(9 * ceil32(return_data.size)) + 462] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2), mem[(9 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523
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
                            mem[(9 * ceil32(return_data.size)) + 462] = address(arg2)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), address(arg2), mem[(9 * ceil32(return_data.size)) + 494 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]) + 523
                            mem[(11 * ceil32(return_data.size)) + 522] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg3) >> 32 + 522]
                            require return_data.size >= _12578 + (32 * _12706) + 32
                            mem[(11 * ceil32(return_data.size)) + 554 len 32 * _12706] = mem[(10 * ceil32(return_data.size)) + _12578 + 554 len 32 * _12706]
                            if 1 >= _12706:
                                revert with 0, 50
                        if mem[(11 * ceil32(return_data.size)) + 586] <= 0:
                            revert with 0, 'Error Swapping Tokens 2'
}

function sub_8c8daea1(?) payable {
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
        if address(arg2) != address(arg3):
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
                                mem[(6 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
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
                                require mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (7 * ceil32(return_data.size)) + return_data.size + 584
                                _25211 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                require return_data.size >= mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + (32 * _25211) + 32
                                mem[(8 * ceil32(return_data.size)) + 616 len 32 * _25211] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 616 len 32 * _25211]
                                if 1 >= _25211:
                                    revert with 0, 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
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
                                require mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (7 * ceil32(return_data.size)) + return_data.size + 584
                                _25212 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                require return_data.size >= mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + (32 * _25212) + 32
                                mem[(8 * ceil32(return_data.size)) + 616 len 32 * _25212] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 616 len 32 * _25212]
                                if 1 >= _25212:
                                    revert with 0, 50
                            if mem[(8 * ceil32(return_data.size)) + 648] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
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
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25213 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + (32 * _25213) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25213] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 617 len 32 * _25213]
                                if 1 >= _25213:
                                    revert with 0, 50
                            else:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 520] == bool(mem[(6 * ceil32(return_data.size)) + 520])
                                if not mem[(6 * ceil32(return_data.size)) + 520]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
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
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25214 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + (32 * _25214) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25214] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 617 len 32 * _25214]
                                if 1 >= _25214:
                                    revert with 0, 50
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                                _24963 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _25219 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require return_data.size >= _24963 + (32 * _25219) + 32
                                mem[(10 * ceil32(return_data.size)) + 616 len 32 * _25219] = mem[(8 * ceil32(return_data.size)) + _24963 + 616 len 32 * _25219]
                                if 1 >= _25219:
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
                                _24964 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _25220 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require return_data.size >= _24964 + (32 * _25220) + 32
                                mem[(10 * ceil32(return_data.size)) + 616 len 32 * _25220] = mem[(8 * ceil32(return_data.size)) + _24964 + 616 len 32 * _25220]
                                if 1 >= _25220:
                                    revert with 0, 50
                            if mem[(10 * ceil32(return_data.size)) + 648] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                                _24965 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25221 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _24965 + (32 * _25221) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25221] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _24965 + 617 len 32 * _25221]
                                if 1 >= _25221:
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
                                _24966 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25222 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _24966 + (32 * _25222) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25222] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _24966 + 617 len 32 * _25222]
                                if 1 >= _25222:
                                    revert with 0, 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                                mem[(6 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
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
                                require mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (7 * ceil32(return_data.size)) + return_data.size + 584
                                _25227 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                require return_data.size >= mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + (32 * _25227) + 32
                                mem[(8 * ceil32(return_data.size)) + 616 len 32 * _25227] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 616 len 32 * _25227]
                                if 1 >= _25227:
                                    revert with 0, 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + 524] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
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
                                require mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (7 * ceil32(return_data.size)) + return_data.size + 584
                                _25228 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                require return_data.size >= mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + (32 * _25228) + 32
                                mem[(8 * ceil32(return_data.size)) + 616 len 32 * _25228] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 616 len 32 * _25228]
                                if 1 >= _25228:
                                    revert with 0, 50
                            if mem[(8 * ceil32(return_data.size)) + 648] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
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
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25229 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + (32 * _25229) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25229] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 617 len 32 * _25229]
                                if 1 >= _25229:
                                    revert with 0, 50
                            else:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 520] == bool(mem[(6 * ceil32(return_data.size)) + 520])
                                if not mem[(6 * ceil32(return_data.size)) + 520]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
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
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25230 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + (32 * _25230) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25230] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 617 len 32 * _25230]
                                if 1 >= _25230:
                                    revert with 0, 50
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                                _24979 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _25235 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require return_data.size >= _24979 + (32 * _25235) + 32
                                mem[(10 * ceil32(return_data.size)) + 616 len 32 * _25235] = mem[(8 * ceil32(return_data.size)) + _24979 + 616 len 32 * _25235]
                                if 1 >= _25235:
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
                                _24980 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _25236 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require return_data.size >= _24980 + (32 * _25236) + 32
                                mem[(10 * ceil32(return_data.size)) + 616 len 32 * _25236] = mem[(8 * ceil32(return_data.size)) + _24980 + 616 len 32 * _25236]
                                if 1 >= _25236:
                                    revert with 0, 50
                            if mem[(10 * ceil32(return_data.size)) + 648] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                                _24981 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25237 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _24981 + (32 * _25237) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25237] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _24981 + 617 len 32 * _25237]
                                if 1 >= _25237:
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
                                _24982 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25238 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _24982 + (32 * _25238) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25238] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _24982 + 617 len 32 * _25238]
                                if 1 >= _25238:
                                    revert with 0, 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
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
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25243 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + (32 * _25243) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25243] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 617 len 32 * _25243]
                                if 1 >= _25243:
                                    revert with 0, 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
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
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25244 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + (32 * _25244) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25244] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 617 len 32 * _25244]
                                if 1 >= _25244:
                                    revert with 0, 50
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(9 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                mem[(9 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _24989 = mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (10 * ceil32(return_data.size)) + return_data.size + 586
                                _25245 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(11 * ceil32(return_data.size)) + 586] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _24989 + (32 * _25245) + 32
                                mem[(11 * ceil32(return_data.size)) + 618 len 32 * _25245] = mem[(10 * ceil32(return_data.size)) + _24989 + 618 len 32 * _25245]
                                if 1 >= _25245:
                                    revert with 0, 50
                            else:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(9 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(9 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _24990 = mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (10 * ceil32(return_data.size)) + return_data.size + 586
                                _25246 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(11 * ceil32(return_data.size)) + 586] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _24990 + (32 * _25246) + 32
                                mem[(11 * ceil32(return_data.size)) + 618 len 32 * _25246] = mem[(10 * ceil32(return_data.size)) + _24990 + 618 len 32 * _25246]
                                if 1 >= _25246:
                                    revert with 0, 50
                            if mem[(11 * ceil32(return_data.size)) + 650] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                        if return_data.size:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _24997 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _25253 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _24997 + (32 * _25253) + 32
                                mem[(13 * ceil32(return_data.size)) + 618 len 32 * _25253] = mem[(12 * ceil32(return_data.size)) + _24997 + 618 len 32 * _25253]
                                if 1 >= _25253:
                                    revert with 0, 50
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(10 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _24998 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _25254 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _24998 + (32 * _25254) + 32
                                mem[(13 * ceil32(return_data.size)) + 618 len 32 * _25254] = mem[(12 * ceil32(return_data.size)) + _24998 + 618 len 32 * _25254]
                                if 1 >= _25254:
                                    revert with 0, 50
                            if mem[(13 * ceil32(return_data.size)) + 650] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
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
                                _24995 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25251 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _24995 + (32 * _25251) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25251] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _24995 + 617 len 32 * _25251]
                                if 1 >= _25251:
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
                                _24996 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25252 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _24996 + (32 * _25252) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25252] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _24996 + 617 len 32 * _25252]
                                if 1 >= _25252:
                                    revert with 0, 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
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
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
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
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25259 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + (32 * _25259) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25259] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 617 len 32 * _25259]
                                if 1 >= _25259:
                                    revert with 0, 50
                            else:
                                require ext_call.return_data[0] >= 32
                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                if not uint32(this.address), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 'No Swap Available'
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
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25260 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + (32 * _25260) + 32
                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25260] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 617 len 32 * _25260]
                                if 1 >= _25260:
                                    revert with 0, 50
                            if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(9 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                mem[(9 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _25005 = mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (10 * ceil32(return_data.size)) + return_data.size + 586
                                _25261 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(11 * ceil32(return_data.size)) + 586] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _25005 + (32 * _25261) + 32
                                mem[(11 * ceil32(return_data.size)) + 618 len 32 * _25261] = mem[(10 * ceil32(return_data.size)) + _25005 + 618 len 32 * _25261]
                                if 1 >= _25261:
                                    revert with 0, 50
                            else:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(9 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(9 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _25006 = mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (10 * ceil32(return_data.size)) + return_data.size + 586
                                _25262 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(11 * ceil32(return_data.size)) + 586] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _25006 + (32 * _25262) + 32
                                mem[(11 * ceil32(return_data.size)) + 618 len 32 * _25262] = mem[(10 * ceil32(return_data.size)) + _25006 + 618 len 32 * _25262]
                                if 1 >= _25262:
                                    revert with 0, 50
                            if mem[(11 * ceil32(return_data.size)) + 650] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                        if return_data.size:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _25013 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _25269 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _25013 + (32 * _25269) + 32
                                mem[(13 * ceil32(return_data.size)) + 618 len 32 * _25269] = mem[(12 * ceil32(return_data.size)) + _25013 + 618 len 32 * _25269]
                                if 1 >= _25269:
                                    revert with 0, 50
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(10 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _25014 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _25270 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _25014 + (32 * _25270) + 32
                                mem[(13 * ceil32(return_data.size)) + 618 len 32 * _25270] = mem[(12 * ceil32(return_data.size)) + _25014 + 618 len 32 * _25270]
                                if 1 >= _25270:
                                    revert with 0, 50
                            if mem[(13 * ceil32(return_data.size)) + 650] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
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
                                _25011 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25267 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25011 + (32 * _25267) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25267] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _25011 + 617 len 32 * _25267]
                                if 1 >= _25267:
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
                                _25012 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25268 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25012 + (32 * _25268) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25268] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _25012 + 617 len 32 * _25268]
                                if 1 >= _25268:
                                    revert with 0, 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
        if address(arg2) != address(arg3):
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
                                _25083 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _25339 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require return_data.size >= _25083 + (32 * _25339) + 32
                                mem[(10 * ceil32(return_data.size)) + 616 len 32 * _25339] = mem[(8 * ceil32(return_data.size)) + _25083 + 616 len 32 * _25339]
                                if 1 >= _25339:
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
                                _25084 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _25340 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require return_data.size >= _25084 + (32 * _25340) + 32
                                mem[(10 * ceil32(return_data.size)) + 616 len 32 * _25340] = mem[(8 * ceil32(return_data.size)) + _25084 + 616 len 32 * _25340]
                                if 1 >= _25340:
                                    revert with 0, 50
                            if mem[(10 * ceil32(return_data.size)) + 648] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                                _25085 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25341 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25085 + (32 * _25341) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25341] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _25085 + 617 len 32 * _25341]
                                if 1 >= _25341:
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
                                _25086 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25342 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25086 + (32 * _25342) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25342] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _25086 + 617 len 32 * _25342]
                                if 1 >= _25342:
                                    revert with 0, 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                                _25091 = mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (10 * ceil32(return_data.size)) + return_data.size + 584
                                _25347 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(11 * ceil32(return_data.size)) + 584] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require return_data.size >= _25091 + (32 * _25347) + 32
                                mem[(11 * ceil32(return_data.size)) + 616 len 32 * _25347] = mem[(10 * ceil32(return_data.size)) + _25091 + 616 len 32 * _25347]
                                if 1 >= _25347:
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
                                _25092 = mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (10 * ceil32(return_data.size)) + return_data.size + 584
                                _25348 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(11 * ceil32(return_data.size)) + 584] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require return_data.size >= _25092 + (32 * _25348) + 32
                                mem[(11 * ceil32(return_data.size)) + 616 len 32 * _25348] = mem[(10 * ceil32(return_data.size)) + _25092 + 616 len 32 * _25348]
                                if 1 >= _25348:
                                    revert with 0, 50
                            if mem[(11 * ceil32(return_data.size)) + 648] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
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
                                _25093 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25349 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25093 + (32 * _25349) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25349] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _25093 + 617 len 32 * _25349]
                                if 1 >= _25349:
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
                                _25094 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25350 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25094 + (32 * _25350) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25350] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _25094 + 617 len 32 * _25350]
                                if 1 >= _25350:
                                    revert with 0, 50
                            if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                                _25099 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _25355 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require return_data.size >= _25099 + (32 * _25355) + 32
                                mem[(10 * ceil32(return_data.size)) + 616 len 32 * _25355] = mem[(8 * ceil32(return_data.size)) + _25099 + 616 len 32 * _25355]
                                if 1 >= _25355:
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
                                _25100 = mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (8 * ceil32(return_data.size)) + return_data.size + 584
                                _25356 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(10 * ceil32(return_data.size)) + 584] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require return_data.size >= _25100 + (32 * _25356) + 32
                                mem[(10 * ceil32(return_data.size)) + 616 len 32 * _25356] = mem[(8 * ceil32(return_data.size)) + _25100 + 616 len 32 * _25356]
                                if 1 >= _25356:
                                    revert with 0, 50
                            if mem[(10 * ceil32(return_data.size)) + 648] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                                _25101 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25357 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25101 + (32 * _25357) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25357] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _25101 + 617 len 32 * _25357]
                                if 1 >= _25357:
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
                                _25102 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25358 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25102 + (32 * _25358) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25358] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _25102 + 617 len 32 * _25358]
                                if 1 >= _25358:
                                    revert with 0, 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                                _25107 = mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (10 * ceil32(return_data.size)) + return_data.size + 584
                                _25363 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(11 * ceil32(return_data.size)) + 584] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require return_data.size >= _25107 + (32 * _25363) + 32
                                mem[(11 * ceil32(return_data.size)) + 616 len 32 * _25363] = mem[(10 * ceil32(return_data.size)) + _25107 + 616 len 32 * _25363]
                                if 1 >= _25363:
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
                                _25108 = mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 615 < (10 * ceil32(return_data.size)) + return_data.size + 584
                                _25364 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]) + 585
                                mem[(11 * ceil32(return_data.size)) + 584] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 584 len 4], Mask(224, 32, arg4) >> 32 + 584]
                                require return_data.size >= _25108 + (32 * _25364) + 32
                                mem[(11 * ceil32(return_data.size)) + 616 len 32 * _25364] = mem[(10 * ceil32(return_data.size)) + _25108 + 616 len 32 * _25364]
                                if 1 >= _25364:
                                    revert with 0, 50
                            if mem[(11 * ceil32(return_data.size)) + 648] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
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
                                _25109 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25365 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25109 + (32 * _25365) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25365] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _25109 + 617 len 32 * _25365]
                                if 1 >= _25365:
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
                                _25110 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25366 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25110 + (32 * _25366) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25366] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _25110 + 617 len 32 * _25366]
                                if 1 >= _25366:
                                    revert with 0, 50
                            if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                        if return_data.size:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _25117 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _25373 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _25117 + (32 * _25373) + 32
                                mem[(13 * ceil32(return_data.size)) + 618 len 32 * _25373] = mem[(12 * ceil32(return_data.size)) + _25117 + 618 len 32 * _25373]
                                if 1 >= _25373:
                                    revert with 0, 50
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(10 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _25118 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _25374 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _25118 + (32 * _25374) + 32
                                mem[(13 * ceil32(return_data.size)) + 618 len 32 * _25374] = mem[(12 * ceil32(return_data.size)) + _25118 + 618 len 32 * _25374]
                                if 1 >= _25374:
                                    revert with 0, 50
                            if mem[(13 * ceil32(return_data.size)) + 650] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
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
                                _25115 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25371 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25115 + (32 * _25371) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25371] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _25115 + 617 len 32 * _25371]
                                if 1 >= _25371:
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
                                _25116 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25372 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25116 + (32 * _25372) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25372] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _25116 + 617 len 32 * _25372]
                                if 1 >= _25372:
                                    revert with 0, 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                                _25123 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25379 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25123 + (32 * _25379) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25379] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _25123 + 617 len 32 * _25379]
                                if 1 >= _25379:
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
                                _25124 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25380 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25124 + (32 * _25380) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25380] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _25124 + 617 len 32 * _25380]
                                if 1 >= _25380:
                                    revert with 0, 50
                            if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                                mem[(12 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _25125 = mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (13 * ceil32(return_data.size)) + return_data.size + 586
                                _25381 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(14 * ceil32(return_data.size)) + 586] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _25125 + (32 * _25381) + 32
                                mem[(14 * ceil32(return_data.size)) + 618 len 32 * _25381] = mem[(13 * ceil32(return_data.size)) + _25125 + 618 len 32 * _25381]
                                if 1 >= _25381:
                                    revert with 0, 50
                            else:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(12 * ceil32(return_data.size)) + 622 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _25126 = mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (13 * ceil32(return_data.size)) + return_data.size + 586
                                _25382 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(14 * ceil32(return_data.size)) + 586] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _25126 + (32 * _25382) + 32
                                mem[(14 * ceil32(return_data.size)) + 618 len 32 * _25382] = mem[(13 * ceil32(return_data.size)) + _25126 + 618 len 32 * _25382]
                                if 1 >= _25382:
                                    revert with 0, 50
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
                        if not ext_code.size(address(arg2)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                        call address(arg2) with:
                           funct Mask(32, 224, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg4 / 2, 0) << 288)
                        if return_data.size:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _25133 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _25389 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _25133 + (32 * _25389) + 32
                                mem[(13 * ceil32(return_data.size)) + 618 len 32 * _25389] = mem[(12 * ceil32(return_data.size)) + _25133 + 618 len 32 * _25389]
                                if 1 >= _25389:
                                    revert with 0, 50
                            else:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(10 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(10 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _25134 = mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (12 * ceil32(return_data.size)) + return_data.size + 586
                                _25390 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(13 * ceil32(return_data.size)) + 586] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _25134 + (32 * _25390) + 32
                                mem[(13 * ceil32(return_data.size)) + 618 len 32 * _25390] = mem[(12 * ceil32(return_data.size)) + _25134 + 618 len 32 * _25390]
                                if 1 >= _25390:
                                    revert with 0, 50
                            if mem[(13 * ceil32(return_data.size)) + 650] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
                        else:
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
                                _25131 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25387 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25131 + (32 * _25387) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25387] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _25131 + 617 len 32 * _25387]
                                if 1 >= _25387:
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
                                _25132 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25388 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25132 + (32 * _25388) + 32
                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25388] = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + _25132 + 617 len 32 * _25388]
                                if 1 >= _25388:
                                    revert with 0, 50
                            if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                                _25139 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25395 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25139 + (32 * _25395) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25395] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _25139 + 617 len 32 * _25395]
                                if 1 >= _25395:
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
                                _25140 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 616 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 585
                                _25396 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585] > test266151307():
                                    revert with 0, 65
                                if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]) + 586
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg4) >> 32 + 585]
                                require return_data.size >= _25140 + (32 * _25396) + 32
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 32 * _25396] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _25140 + 617 len 32 * _25396]
                                if 1 >= _25396:
                                    revert with 0, 50
                            if mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
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
                                mem[(12 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _25141 = mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (13 * ceil32(return_data.size)) + return_data.size + 586
                                _25397 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(14 * ceil32(return_data.size)) + 586] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _25141 + (32 * _25397) + 32
                                mem[(14 * ceil32(return_data.size)) + 618 len 32 * _25397] = mem[(13 * ceil32(return_data.size)) + _25141 + 618 len 32 * _25397]
                                if 1 >= _25397:
                                    revert with 0, 50
                            else:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(12 * ceil32(return_data.size)) + 622 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[(12 * ceil32(return_data.size)) + 526] = address(arg3)
                                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                _25142 = mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32
                                require mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 617 < (13 * ceil32(return_data.size)) + return_data.size + 586
                                _25398 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586] > test266151307():
                                    revert with 0, 65
                                if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]) + 587
                                mem[(14 * ceil32(return_data.size)) + 586] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg4) >> 32 + 586]
                                require return_data.size >= _25142 + (32 * _25398) + 32
                                mem[(14 * ceil32(return_data.size)) + 618 len 32 * _25398] = mem[(13 * ceil32(return_data.size)) + _25142 + 618 len 32 * _25398]
                                if 1 >= _25398:
                                    revert with 0, 50
                            if mem[(14 * ceil32(return_data.size)) + 650] <= 0:
                                revert with 0, 'Error Swapping Tokens 2'
}



}
