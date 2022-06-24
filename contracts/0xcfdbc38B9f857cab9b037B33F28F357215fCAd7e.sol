contract main {




// =====================  Runtime code  =====================


#
#  - sub_7f4edf91(?)
#  - sub_9612f3e1(?)
#
function _fallback() payable {
    revert
}

function sub_e7499c38(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(address(arg2))
    call address(arg2).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require address(arg6)
    require ext_code.size(address(arg6))
    staticcall address(arg6).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg6))
    staticcall address(arg6).token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg6))
    staticcall address(arg6).token1() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != address(arg3):
        if ext_call.return_data[12 len 20] != address(arg3):
            revert with 0, 'bad LP token'
        if address(ext_call.return_data[0]) != address(arg2):
            revert with 0, 'bad LP token'
        if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) and arg1 > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if arg1 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * arg1 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if arg1 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * arg1 / 2 and arg1 / 2 > -1 / 997 * arg1 / 2:
            revert with 'NH{q', 17
        if 997 * arg1 / 2 * arg1 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) - 1:
            revert with 'NH{q', 17
        if not (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) - 1:
            revert with 'NH{q', 17
        if not (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) - 1:
            revert with 'NH{q', 17
        if not (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        require address(arg3)
        mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
        mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 96] = 2
        mem[(7 * ceil32(return_data.size)) + 128] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 160] = address(arg3)
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        mem[(7 * ceil32(return_data.size)) + 228] = 0
        mem[(7 * ceil32(return_data.size)) + 260] = 160
        mem[(7 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (7 * ceil32(return_data.size)) + 128
        t = (7 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 292] = this.address
        mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(address(arg4))
        call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _81 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
        _84 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
        mem[(8 * ceil32(return_data.size)) + 192] = _84
        require _81 + (32 * _84) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _81 + 224
        t = (8 * ceil32(return_data.size)) + 224
        while idx < _84:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _168 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _171 = mem[_168]
        require mem[_168] == mem[_168]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _183 = mem[_180]
        require mem[_180] == mem[_180]
        mem[mem[64] + 4] = address(arg5)
        mem[mem[64] + 36] = _171
        require ext_code.size(address(arg3))
        call address(arg3).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg5), _171
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _192 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_192] == bool(mem[_192])
        mem[mem[64] + 4] = address(arg5)
        mem[mem[64] + 36] = _183
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg5), _183
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_204] == bool(mem[_204])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _183
        mem[mem[64] + 100] = _171
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(address(arg5))
        call address(arg5).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg2), address(arg3), _183, _171, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _216 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_216] == mem[_216]
        require mem[_216 + 32] == mem[_216 + 32]
        require mem[_216 + 64] == mem[_216 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg6))
        staticcall address(arg6).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _234 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _237 = mem[_234]
        require mem[_234] == mem[_234]
        mem[mem[64] + 4] = address(arg7)
        mem[mem[64] + 36] = _237
        require ext_code.size(address(arg6))
        call address(arg6).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg7), _237
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _246 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_246] == bool(mem[_246])
        require ext_code.size(address(arg7))
        staticcall address(arg7).trueBondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _258 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _261 = mem[_258]
        require mem[_258] == mem[_258]
        require ext_code.size(address(arg7))
        staticcall address(arg7).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _270 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _273 = mem[_270]
        require mem[_270] == mem[_270]
        require mem[_270 + 32] == mem[_270 + 32]
        require mem[_270 + 64] == mem[_270 + 92 len 4]
        require mem[_270 + 96] == mem[_270 + 124 len 4]
        mem[mem[64] + 4] = _237
        mem[mem[64] + 36] = _261
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg7))
        call address(arg7).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _237, _261, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _291 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_291] == mem[_291]
        require ext_code.size(address(arg7))
        staticcall address(arg7).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _303 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_303] == mem[_303]
        require mem[_303 + 32] == mem[_303 + 32]
        require mem[_303 + 64] == mem[_303 + 92 len 4]
        require mem[_303 + 96] == mem[_303 + 124 len 4]
        if mem[_303] < _273:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_303] - _273
    else:
        if ext_call.return_data[12 len 20] == address(arg2):
            if Mask(112, 0, ext_call.return_data[32]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) and arg1 > -1 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if arg1 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * arg1 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if arg1 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * arg1 / 2 and arg1 / 2 > -1 / 997 * arg1 / 2:
                revert with 'NH{q', 17
            if 997 * arg1 / 2 * arg1 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) - 1:
                revert with 'NH{q', 17
            if not (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            require address(arg3)
            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = 2
            mem[(7 * ceil32(return_data.size)) + 128] = address(arg2)
            mem[(7 * ceil32(return_data.size)) + 160] = address(arg3)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            mem[(7 * ceil32(return_data.size)) + 228] = 0
            mem[(7 * ceil32(return_data.size)) + 260] = 160
            mem[(7 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (7 * ceil32(return_data.size)) + 128
            t = (7 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 292] = this.address
            mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(address(arg4))
            call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _83 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
            _86 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193
            mem[(8 * ceil32(return_data.size)) + 192] = _86
            require _83 + (32 * _86) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _83 + 224
            t = (8 * ceil32(return_data.size)) + 224
            while idx < _86:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _173 = mem[_170]
            require mem[_170] == mem[_170]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _182 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _185 = mem[_182]
            require mem[_182] == mem[_182]
            mem[mem[64] + 4] = address(arg5)
            mem[mem[64] + 36] = _173
            require ext_code.size(address(arg3))
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg5), _173
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _194 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_194] == bool(mem[_194])
            mem[mem[64] + 4] = address(arg5)
            mem[mem[64] + 36] = _185
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg5), _185
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _206 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_206] == bool(mem[_206])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _185
            mem[mem[64] + 100] = _173
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(arg5))
            call address(arg5).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg2), address(arg3), _185, _173, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _218 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_218] == mem[_218]
            require mem[_218 + 32] == mem[_218 + 32]
            require mem[_218 + 64] == mem[_218 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg6))
            staticcall address(arg6).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _236 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _239 = mem[_236]
            require mem[_236] == mem[_236]
            mem[mem[64] + 4] = address(arg7)
            mem[mem[64] + 36] = _239
            require ext_code.size(address(arg6))
            call address(arg6).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg7), _239
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _248 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_248] == bool(mem[_248])
            require ext_code.size(address(arg7))
            staticcall address(arg7).trueBondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _260 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _263 = mem[_260]
            require mem[_260] == mem[_260]
            require ext_code.size(address(arg7))
            staticcall address(arg7).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _272 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _275 = mem[_272]
            require mem[_272] == mem[_272]
            require mem[_272 + 32] == mem[_272 + 32]
            require mem[_272 + 64] == mem[_272 + 92 len 4]
            require mem[_272 + 96] == mem[_272 + 124 len 4]
            mem[mem[64] + 4] = _239
            mem[mem[64] + 36] = _263
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(address(arg7))
            call address(arg7).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _239, _263, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _293 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_293] == mem[_293]
            require ext_code.size(address(arg7))
            staticcall address(arg7).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _305 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_305] == mem[_305]
            require mem[_305 + 32] == mem[_305 + 32]
            require mem[_305 + 64] == mem[_305 + 92 len 4]
            require mem[_305 + 96] == mem[_305 + 124 len 4]
            if mem[_305] < _275:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_305] - _275
        else:
            if ext_call.return_data[12 len 20] != address(arg3):
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != address(arg2):
                revert with 0, 'bad LP token'
            if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) and arg1 > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if arg1 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * arg1 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if arg1 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * arg1 / 2 and arg1 / 2 > -1 / 997 * arg1 / 2:
                revert with 'NH{q', 17
            if 997 * arg1 / 2 * arg1 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) - 1:
                revert with 'NH{q', 17
            if not (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            require address(arg3)
            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = 2
            mem[(7 * ceil32(return_data.size)) + 128] = address(arg2)
            mem[(7 * ceil32(return_data.size)) + 160] = address(arg3)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(7 * ceil32(return_data.size)) + 228] = 0
            mem[(7 * ceil32(return_data.size)) + 260] = 160
            mem[(7 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (7 * ceil32(return_data.size)) + 128
            t = (7 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 292] = this.address
            mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(address(arg4))
            call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _82 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
            _85 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
            mem[(8 * ceil32(return_data.size)) + 192] = _85
            require _82 + (32 * _85) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _82 + 224
            t = (8 * ceil32(return_data.size)) + 224
            while idx < _85:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _172 = mem[_169]
            require mem[_169] == mem[_169]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _181 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _184 = mem[_181]
            require mem[_181] == mem[_181]
            mem[mem[64] + 4] = address(arg5)
            mem[mem[64] + 36] = _172
            require ext_code.size(address(arg3))
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg5), _172
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _193 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_193] == bool(mem[_193])
            mem[mem[64] + 4] = address(arg5)
            mem[mem[64] + 36] = _184
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg5), _184
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_205] == bool(mem[_205])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _184
            mem[mem[64] + 100] = _172
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(arg5))
            call address(arg5).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg2), address(arg3), _184, _172, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _217 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_217] == mem[_217]
            require mem[_217 + 32] == mem[_217 + 32]
            require mem[_217 + 64] == mem[_217 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg6))
            staticcall address(arg6).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _235 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _238 = mem[_235]
            require mem[_235] == mem[_235]
            mem[mem[64] + 4] = address(arg7)
            mem[mem[64] + 36] = _238
            require ext_code.size(address(arg6))
            call address(arg6).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg7), _238
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _247 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_247] == bool(mem[_247])
            require ext_code.size(address(arg7))
            staticcall address(arg7).trueBondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _262 = mem[_259]
            require mem[_259] == mem[_259]
            require ext_code.size(address(arg7))
            staticcall address(arg7).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _271 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _274 = mem[_271]
            require mem[_271] == mem[_271]
            require mem[_271 + 32] == mem[_271 + 32]
            require mem[_271 + 64] == mem[_271 + 92 len 4]
            require mem[_271 + 96] == mem[_271 + 124 len 4]
            mem[mem[64] + 4] = _238
            mem[mem[64] + 36] = _262
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(address(arg7))
            call address(arg7).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _238, _262, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _292 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_292] == mem[_292]
            require ext_code.size(address(arg7))
            staticcall address(arg7).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _304 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_304] == mem[_304]
            require mem[_304 + 32] == mem[_304 + 32]
            require mem[_304 + 64] == mem[_304 + 92 len 4]
            require mem[_304 + 96] == mem[_304 + 124 len 4]
            if mem[_304] < _274:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_304] - _274
    return memory
      from mem[64]
       len 32
}

function sub_7a4f46d6(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == arg8
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(address(arg2))
    call address(arg2).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require address(arg6)
    require ext_code.size(address(arg6))
    staticcall address(arg6).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg6))
    staticcall address(arg6).token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg6))
    staticcall address(arg6).token1() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != address(arg3):
        if ext_call.return_data[12 len 20] != address(arg3):
            revert with 0, 'bad LP token'
        if address(ext_call.return_data[0]) != address(arg2):
            revert with 0, 'bad LP token'
        if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) and arg1 > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if arg1 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * arg1 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if arg1 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * arg1 / 2 and arg1 / 2 > -1 / 997 * arg1 / 2:
            revert with 'NH{q', 17
        if 997 * arg1 / 2 * arg1 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) - 1:
            revert with 'NH{q', 17
        if not (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) - 1:
            revert with 'NH{q', 17
        if not (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) - 1:
            revert with 'NH{q', 17
        if not (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        require address(arg3)
        mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
        mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 96] = 2
        mem[(7 * ceil32(return_data.size)) + 128] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 160] = address(arg3)
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        mem[(7 * ceil32(return_data.size)) + 228] = 0
        mem[(7 * ceil32(return_data.size)) + 260] = 160
        mem[(7 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (7 * ceil32(return_data.size)) + 128
        t = (7 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 292] = this.address
        mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(address(arg4))
        call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _76 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
        _79 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
        mem[(8 * ceil32(return_data.size)) + 192] = _79
        require _76 + (32 * _79) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _76 + 224
        t = (8 * ceil32(return_data.size)) + 224
        while idx < _79:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _166 = mem[_163]
        require mem[_163] == mem[_163]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _178 = mem[_175]
        require mem[_175] == mem[_175]
        mem[mem[64] + 4] = address(arg5)
        mem[mem[64] + 36] = _166
        require ext_code.size(address(arg3))
        call address(arg3).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg5), _166
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _187 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_187] == bool(mem[_187])
        mem[mem[64] + 4] = address(arg5)
        mem[mem[64] + 36] = _178
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg5), _178
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _199 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_199] == bool(mem[_199])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _178
        mem[mem[64] + 100] = _166
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(address(arg5))
        call address(arg5).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg2), address(arg3), _178, _166, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_211] == mem[_211]
        require mem[_211 + 32] == mem[_211 + 32]
        require mem[_211 + 64] == mem[_211 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg6))
        staticcall address(arg6).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _229 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _232 = mem[_229]
        require mem[_229] == mem[_229]
        mem[mem[64] + 4] = address(arg7)
        mem[mem[64] + 36] = _232
        require ext_code.size(address(arg6))
        call address(arg6).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg7), _232
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _241 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_241] == bool(mem[_241])
        require ext_code.size(address(arg7))
        staticcall address(arg7).trueBondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _253 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _256 = mem[_253]
        require mem[_253] == mem[_253]
        require ext_code.size(address(arg7))
        staticcall address(arg7).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _265 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _268 = mem[_265]
        require mem[_265] == mem[_265]
        require mem[_265 + 32] == mem[_265 + 32]
        require mem[_265 + 64] == mem[_265 + 92 len 4]
        require mem[_265 + 96] == mem[_265 + 124 len 4]
        mem[mem[64] + 4] = _232
        mem[mem[64] + 36] = _256
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg7))
        call address(arg7).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _232, _256, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _286 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_286] == mem[_286]
        require ext_code.size(address(arg7))
        staticcall address(arg7).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _298 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_298] == mem[_298]
        require mem[_298 + 32] == mem[_298 + 32]
        require mem[_298 + 64] == mem[_298 + 92 len 4]
        require mem[_298 + 96] == mem[_298 + 124 len 4]
        if mem[_298] < _268:
            revert with 'NH{q', 17
        if mem[_298] - _268 < arg8:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _325 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _328 = mem[_325]
        require mem[_325] == mem[_325]
        if mem[_325] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _340 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _349 = mem[_340]
            require mem[_340] == mem[_340]
            if mem[_340] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _349
                require ext_code.size(address(arg3))
                call address(arg3).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _349
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _367 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_367] == bool(mem[_367])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _328
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _328
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _346 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_346] == bool(mem[_346])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _368 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _374 = mem[_368]
            require mem[_368] == mem[_368]
            if mem[_368] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _374
                require ext_code.size(address(arg3))
                call address(arg3).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _374
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _385 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_385] == bool(mem[_385])
    else:
        if ext_call.return_data[12 len 20] == address(arg2):
            if Mask(112, 0, ext_call.return_data[32]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) and arg1 > -1 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if arg1 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * arg1 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if arg1 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * arg1 / 2 and arg1 / 2 > -1 / 997 * arg1 / 2:
                revert with 'NH{q', 17
            if 997 * arg1 / 2 * arg1 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) - 1:
                revert with 'NH{q', 17
            if not (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            require address(arg3)
            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = 2
            mem[(7 * ceil32(return_data.size)) + 128] = address(arg2)
            mem[(7 * ceil32(return_data.size)) + 160] = address(arg3)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            mem[(7 * ceil32(return_data.size)) + 228] = 0
            mem[(7 * ceil32(return_data.size)) + 260] = 160
            mem[(7 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (7 * ceil32(return_data.size)) + 128
            t = (7 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 292] = this.address
            mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(address(arg4))
            call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _78 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
            _81 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193
            mem[(8 * ceil32(return_data.size)) + 192] = _81
            require _78 + (32 * _81) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _78 + 224
            t = (8 * ceil32(return_data.size)) + 224
            while idx < _81:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _165 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _168 = mem[_165]
            require mem[_165] == mem[_165]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _180 = mem[_177]
            require mem[_177] == mem[_177]
            mem[mem[64] + 4] = address(arg5)
            mem[mem[64] + 36] = _168
            require ext_code.size(address(arg3))
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg5), _168
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_189] == bool(mem[_189])
            mem[mem[64] + 4] = address(arg5)
            mem[mem[64] + 36] = _180
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg5), _180
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _201 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_201] == bool(mem[_201])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _180
            mem[mem[64] + 100] = _168
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(arg5))
            call address(arg5).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg2), address(arg3), _180, _168, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _213 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_213] == mem[_213]
            require mem[_213 + 32] == mem[_213 + 32]
            require mem[_213 + 64] == mem[_213 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg6))
            staticcall address(arg6).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _231 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _234 = mem[_231]
            require mem[_231] == mem[_231]
            mem[mem[64] + 4] = address(arg7)
            mem[mem[64] + 36] = _234
            require ext_code.size(address(arg6))
            call address(arg6).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg7), _234
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _243 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_243] == bool(mem[_243])
            require ext_code.size(address(arg7))
            staticcall address(arg7).trueBondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _255 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _258 = mem[_255]
            require mem[_255] == mem[_255]
            require ext_code.size(address(arg7))
            staticcall address(arg7).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _267 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _270 = mem[_267]
            require mem[_267] == mem[_267]
            require mem[_267 + 32] == mem[_267 + 32]
            require mem[_267 + 64] == mem[_267 + 92 len 4]
            require mem[_267 + 96] == mem[_267 + 124 len 4]
            mem[mem[64] + 4] = _234
            mem[mem[64] + 36] = _258
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(address(arg7))
            call address(arg7).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _234, _258, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _288 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_288] == mem[_288]
            require ext_code.size(address(arg7))
            staticcall address(arg7).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _300 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_300] == mem[_300]
            require mem[_300 + 32] == mem[_300 + 32]
            require mem[_300 + 64] == mem[_300 + 92 len 4]
            require mem[_300 + 96] == mem[_300 + 124 len 4]
            if mem[_300] < _270:
                revert with 'NH{q', 17
            if mem[_300] - _270 < arg8:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _327 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _330 = mem[_327]
            require mem[_327] == mem[_327]
            if mem[_327] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _344 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _351 = mem[_344]
                require mem[_344] == mem[_344]
                if mem[_344] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _351
                    require ext_code.size(address(arg3))
                    call address(arg3).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _351
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _371 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_371] == bool(mem[_371])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _330
                require ext_code.size(address(arg2))
                call address(arg2).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _330
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _348 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_348] == bool(mem[_348])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _372 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _378 = mem[_372]
                require mem[_372] == mem[_372]
                if mem[_372] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _378
                    require ext_code.size(address(arg3))
                    call address(arg3).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _378
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _387 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_387] == bool(mem[_387])
        else:
            if ext_call.return_data[12 len 20] != address(arg3):
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != address(arg2):
                revert with 0, 'bad LP token'
            if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) and arg1 > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if arg1 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * arg1 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if arg1 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * arg1 / 2 and arg1 / 2 > -1 / 997 * arg1 / 2:
                revert with 'NH{q', 17
            if 997 * arg1 / 2 * arg1 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) - 1:
                revert with 'NH{q', 17
            if not (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            require address(arg3)
            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = 2
            mem[(7 * ceil32(return_data.size)) + 128] = address(arg2)
            mem[(7 * ceil32(return_data.size)) + 160] = address(arg3)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(7 * ceil32(return_data.size)) + 228] = 0
            mem[(7 * ceil32(return_data.size)) + 260] = 160
            mem[(7 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (7 * ceil32(return_data.size)) + 128
            t = (7 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 292] = this.address
            mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(address(arg4))
            call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _77 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
            _80 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * (997 * arg1 / 2 * arg1 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg1) / (1994 * arg1 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
            mem[(8 * ceil32(return_data.size)) + 192] = _80
            require _77 + (32 * _80) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _77 + 224
            t = (8 * ceil32(return_data.size)) + 224
            while idx < _80:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _164 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _167 = mem[_164]
            require mem[_164] == mem[_164]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _179 = mem[_176]
            require mem[_176] == mem[_176]
            mem[mem[64] + 4] = address(arg5)
            mem[mem[64] + 36] = _167
            require ext_code.size(address(arg3))
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg5), _167
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _188 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_188] == bool(mem[_188])
            mem[mem[64] + 4] = address(arg5)
            mem[mem[64] + 36] = _179
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg5), _179
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _200 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_200] == bool(mem[_200])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _179
            mem[mem[64] + 100] = _167
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(arg5))
            call address(arg5).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg2), address(arg3), _179, _167, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _212 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_212] == mem[_212]
            require mem[_212 + 32] == mem[_212 + 32]
            require mem[_212 + 64] == mem[_212 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg6))
            staticcall address(arg6).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _230 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _233 = mem[_230]
            require mem[_230] == mem[_230]
            mem[mem[64] + 4] = address(arg7)
            mem[mem[64] + 36] = _233
            require ext_code.size(address(arg6))
            call address(arg6).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg7), _233
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _242 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_242] == bool(mem[_242])
            require ext_code.size(address(arg7))
            staticcall address(arg7).trueBondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _254 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _257 = mem[_254]
            require mem[_254] == mem[_254]
            require ext_code.size(address(arg7))
            staticcall address(arg7).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _266 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _269 = mem[_266]
            require mem[_266] == mem[_266]
            require mem[_266 + 32] == mem[_266 + 32]
            require mem[_266 + 64] == mem[_266 + 92 len 4]
            require mem[_266 + 96] == mem[_266 + 124 len 4]
            mem[mem[64] + 4] = _233
            mem[mem[64] + 36] = _257
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(address(arg7))
            call address(arg7).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _233, _257, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _287 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_287] == mem[_287]
            require ext_code.size(address(arg7))
            staticcall address(arg7).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_299] == mem[_299]
            require mem[_299 + 32] == mem[_299 + 32]
            require mem[_299 + 64] == mem[_299 + 92 len 4]
            require mem[_299 + 96] == mem[_299 + 124 len 4]
            if mem[_299] < _269:
                revert with 'NH{q', 17
            if mem[_299] - _269 < arg8:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _326 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _329 = mem[_326]
            require mem[_326] == mem[_326]
            if mem[_326] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _342 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _350 = mem[_342]
                require mem[_342] == mem[_342]
                if mem[_342] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _350
                    require ext_code.size(address(arg3))
                    call address(arg3).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _350
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _369 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_369] == bool(mem[_369])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _329
                require ext_code.size(address(arg2))
                call address(arg2).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _329
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _347 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_347] == bool(mem[_347])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _370 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _376 = mem[_370]
                require mem[_370] == mem[_370]
                if mem[_370] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _376
                    require ext_code.size(address(arg3))
                    call address(arg3).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _376
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _386 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_386] == bool(mem[_386])
}



}
