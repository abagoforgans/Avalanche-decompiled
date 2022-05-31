contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function swapExact(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    return 0
}

function swap(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if arg1 != 0xda67235dd5787d67955420c84ca1cecd4e5bb3b:
        revert with 0, 'S: F'
    if arg2 != 0x130966628846bfd36ff31a822705796e8cb8c18d:
        revert with 0, 'S: T'
    if arg3 != 0xf3bb767e521643b933423a7d80cf34d89538d55f:
        revert with 0, 'S: R'
    if arg5 <= 0:
        revert with 0, 'S: shareFrom'
    require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
    call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, address(this.address), address(this.address), 0, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'S: amountFrom'
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'S: amountTIME'
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xa9059cbb with:
         gas gas_remaining wei
        args 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
    staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'YgetAmountOut: INSUFFICIENT_INPUT_AMOUN'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe676574416d6f756e744f75743a20494e53554646494349454e545f4c49515549444954,
                    0
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe676574416d6f756e744f75743a20494e53554646494349454e545f4c49515549444954,
                    0
    if 997 * ext_call.return_data[0] / 997 != ext_call.return_data[0]:
        revert with 0, '~BoringMath: Mul Overflow'
    if not ext_call.return_data[50 len 14]:
        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
            revert with 0, '~BoringMath: Mul Overflow'
        if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 997 * ext_call.return_data[0]:
            revert with 0, '~BoringMath: Add Overflow'
        require (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
        require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
        call 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0x781655d802670bba3c89aebaaea59d3182fd755d, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) <= 0:
            revert with 0, 'S: amountWAVAX'
        require ext_code.size(0x781655d802670bba3c89aebaaea59d3182fd755d)
        staticcall 0x781655d802670bba3c89aebaaea59d3182fd755d.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) <= 0:
            revert with 0, 'YgetAmountOut: INSUFFICIENT_INPUT_AMOUN'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 32, 36, 0xfe676574416d6f756e744f75743a20494e53554646494349454e545f4c49515549444954, 0
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 32, 36, 0xfe676574416d6f756e744f75743a20494e53554646494349454e545f4c49515549444954, 0
        if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 997 != 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
            revert with 0, '~BoringMath: Mul Overflow'
        if not ext_call.return_data[18 len 14]:
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, '~BoringMath: Mul Overflow'
            if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) < 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 0, '~BoringMath: Add Overflow'
            require (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
            require ext_code.size(0x781655d802670bba3c89aebaaea59d3182fd755d)
            call 0x781655d802670bba3c89aebaaea59d3182fd755d.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, 128, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) <= 0:
                revert with 0, 'S: amountMIM'
            require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
            call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args address(arg2), 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, address(arg3), 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, 0
        else:
            require ext_call.return_data[18 len 14]
            if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 0, '~BoringMath: Mul Overflow'
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, '~BoringMath: Mul Overflow'
            if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) < 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 0, '~BoringMath: Add Overflow'
            require (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
            require ext_code.size(0x781655d802670bba3c89aebaaea59d3182fd755d)
            call 0x781655d802670bba3c89aebaaea59d3182fd755d.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, 128, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) <= 0:
                revert with 0, 'S: amountMIM'
            require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
            call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args address(arg2), 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, address(arg3), 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, 0
    else:
        require ext_call.return_data[50 len 14]
        if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * ext_call.return_data[0]:
            revert with 0, '~BoringMath: Mul Overflow'
        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
            revert with 0, '~BoringMath: Mul Overflow'
        if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 997 * ext_call.return_data[0]:
            revert with 0, '~BoringMath: Add Overflow'
        require (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
        require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
        call 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0x781655d802670bba3c89aebaaea59d3182fd755d, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) <= 0:
            revert with 0, 'S: amountWAVAX'
        require ext_code.size(0x781655d802670bba3c89aebaaea59d3182fd755d)
        staticcall 0x781655d802670bba3c89aebaaea59d3182fd755d.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) <= 0:
            revert with 0, 'YgetAmountOut: INSUFFICIENT_INPUT_AMOUN'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 32, 36, 0xfe676574416d6f756e744f75743a20494e53554646494349454e545f4c49515549444954, 0
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 32, 36, 0xfe676574416d6f756e744f75743a20494e53554646494349454e545f4c49515549444954, 0
        if 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 997 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
            revert with 0, '~BoringMath: Mul Overflow'
        if not ext_call.return_data[18 len 14]:
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, '~BoringMath: Mul Overflow'
            if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) < 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 0, '~BoringMath: Add Overflow'
            require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
            require ext_code.size(0x781655d802670bba3c89aebaaea59d3182fd755d)
            call 0x781655d802670bba3c89aebaaea59d3182fd755d.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, 128, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) <= 0:
                revert with 0, 'S: amountMIM'
            require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
            call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args address(arg2), 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, address(arg3), 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, 0
        else:
            require ext_call.return_data[18 len 14]
            if 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 0, '~BoringMath: Mul Overflow'
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, '~BoringMath: Mul Overflow'
            if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) < 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 0, '~BoringMath: Add Overflow'
            require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
            require ext_code.size(0x781655d802670bba3c89aebaaea59d3182fd755d)
            call 0x781655d802670bba3c89aebaaea59d3182fd755d.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, 128, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) <= 0:
                revert with 0, 'S: amountMIM'
            require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
            call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args address(arg2), 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, address(arg3), 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] <= arg4:
        revert with 0, 'S: shareReturned'
    if ext_call.return_data[32] - arg4 > ext_call.return_data[32]:
        revert with 0, '~BoringMath: Underflow'
    return ext_call.return_data[32] - arg4, ext_call.return_data[32]
}



}
