contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function swap(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 != ext_call.return_data[12 len 20]:
        if Mask(112, 0, ext_call.return_data[0]) and arg4 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) * arg4 / 10^18 <= Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'AmmScramble: Price too low'
        if Mask(112, 0, ext_call.return_data[0]) and arg4 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) * arg4 / 10^18 < Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if arg3 < (Mask(112, 0, ext_call.return_data[0]) * arg4 / 10^18) - Mask(112, 0, ext_call.return_data[32]):
            if arg3 and 997 > -1 / arg3:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > test266151307() / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > (-997 * arg3) - 1:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and arg3 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) * arg3 and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * arg3:
                revert with 'NH{q', 17
            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
                revert with 'NH{q', 18
            call arg2.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(arg1)
            if arg2 != ext_call.return_data[12 len 20]:
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * Mask(112, 0, ext_call.return_data[0]) * arg3 / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3), 0, msg.sender, 128, 0
            else:
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * Mask(112, 0, ext_call.return_data[0]) * arg3 / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3), msg.sender, 128, 0
        else:
            if (Mask(112, 0, ext_call.return_data[0]) * arg4 / 10^18) - Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / (Mask(112, 0, ext_call.return_data[0]) * arg4 / 10^18) - Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > test266151307() / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > (-997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 10^18) + (997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and (Mask(112, 0, ext_call.return_data[0]) * arg4 / 10^18) - Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if (Mask(112, 0, ext_call.return_data[0]) * arg4 / 10^18 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) and 997 > -1 / (Mask(112, 0, ext_call.return_data[0]) * arg4 / 10^18 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 10^18) - (997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            call arg2.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), (Mask(112, 0, ext_call.return_data[0]) * arg4 / 10^18) - Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(arg1)
            if arg2 != ext_call.return_data[12 len 20]:
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 10^18 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 10^18) - (997 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0
            else:
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 10^18 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 10^18) - (997 * Mask(112, 0, ext_call.return_data[32])), msg.sender, 128, 0
    else:
        if Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[32]) * arg4 / 10^18 <= Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'AmmScramble: Price too low'
        if Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[32]) * arg4 / 10^18 < Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if arg3 < (Mask(112, 0, ext_call.return_data[32]) * arg4 / 10^18) - Mask(112, 0, ext_call.return_data[0]):
            if arg3 and 997 > -1 / arg3:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > test266151307() / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > (-997 * arg3) - 1:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and arg3 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) * arg3 and 997 > -1 / Mask(112, 0, ext_call.return_data[32]) * arg3:
                revert with 'NH{q', 17
            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
                revert with 'NH{q', 18
            call arg2.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(arg1)
            if arg2 != ext_call.return_data[12 len 20]:
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3), 0, msg.sender, 128, 0
            else:
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3), msg.sender, 128, 0
        else:
            if (Mask(112, 0, ext_call.return_data[32]) * arg4 / 10^18) - Mask(112, 0, ext_call.return_data[0]) and 997 > -1 / (Mask(112, 0, ext_call.return_data[32]) * arg4 / 10^18) - Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > test266151307() / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > (-997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 10^18) + (997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and (Mask(112, 0, ext_call.return_data[32]) * arg4 / 10^18) - Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if (Mask(112, 0, ext_call.return_data[32]) * arg4 / 10^18 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) and 997 > -1 / (Mask(112, 0, ext_call.return_data[32]) * arg4 / 10^18 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 10^18) - (997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            call arg2.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), (Mask(112, 0, ext_call.return_data[32]) * arg4 / 10^18) - Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(arg1)
            if arg2 != ext_call.return_data[12 len 20]:
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 10^18 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 10^18) - (997 * Mask(112, 0, ext_call.return_data[0])), 0, msg.sender, 128, 0
            else:
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 10^18 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 10^18) - (997 * Mask(112, 0, ext_call.return_data[0])), msg.sender, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
