contract main {




// =====================  Runtime code  =====================


address stor0;

function Withdraw() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_31284ea9(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    staticcall address(arg4).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(arg4).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if arg5:
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    else:
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg4).'jbxB' with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0], 0, 0, stor0, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_990ea4a4(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    mem[128] = address(arg3)
    mem[160] = address(arg2)
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, stor0, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(arg4).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(arg4).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if arg5:
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    else:
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg4).'jbxB' with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0], 0, 0, stor0, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_94869385(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg4).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(arg4).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if arg5:
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    else:
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg4).'jbxB' with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0], 0, 0, stor0, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if gas_remaining < gas_remaining:
        revert with 'NH{q', 17
    revert with 0, 
                ext_call.return_data[0],
                eth.balance(stor0),
                ext_call.return_data[0],
                ext_call.return_data[0],
                eth.balance(stor0),
                ext_call.return_data[0],
                0
}

function sub_c75fc662(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = stor0
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg3)
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, stor0, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(arg4).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(arg4).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if arg5:
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    else:
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg4).'jbxB' with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0], 0, 0, stor0, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if gas_remaining < gas_remaining:
        revert with 'NH{q', 17
    revert with 0, 
                ext_call.return_data[0],
                eth.balance(stor0),
                ext_call.return_data[0],
                ext_call.return_data[0],
                eth.balance(stor0),
                ext_call.return_data[0],
                0
}

function sub_c7c3b362(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    staticcall address(arg4).getReserves() with:
            gas gas_remaining wei
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(arg4).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 132] = address(arg4)
    mem[(2 * ceil32(return_data.size)) + 164] = (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
    if arg5:
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 132] = address(arg4)
        mem[(4 * ceil32(return_data.size)) + 164] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    else:
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 132] = address(arg4)
        mem[(4 * ceil32(return_data.size)) + 164] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg4).'jbxB' with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 100] = address(arg2)
    mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 164] = 0
    mem[(8 * ceil32(return_data.size)) + 196] = 0
    mem[(8 * ceil32(return_data.size)) + 228] = this.address
    mem[(8 * ceil32(return_data.size)) + 260] = block.timestamp
    call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(11 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(12 * ceil32(return_data.size)) + 128] = address(arg2)
    mem[(12 * ceil32(return_data.size)) + 160] = address(arg3)
    mem[(12 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(12 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    idx = 0
    s = (12 * ceil32(return_data.size)) + 128
    t = (12 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_9ec29bf6(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg4).getReserves() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(arg4).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    mem[(6 * ceil32(return_data.size)) + 164] = (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
    if arg5:
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 164] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    else:
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 164] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 100] = this.address
    call address(arg4).'jbxB' with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(11 * ceil32(return_data.size)) + 164] = 0
    mem[(11 * ceil32(return_data.size)) + 196] = 0
    mem[(11 * ceil32(return_data.size)) + 228] = this.address
    mem[(11 * ceil32(return_data.size)) + 260] = block.timestamp
    call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(13 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(14 * ceil32(return_data.size)) + 128] = address(arg2)
    mem[(14 * ceil32(return_data.size)) + 160] = address(arg3)
    mem[(14 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    idx = 0
    s = (14 * ceil32(return_data.size)) + 128
    t = (14 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(14 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    require return_data.size >= 32
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if gas_remaining < gas_remaining:
        revert with 'NH{q', 17
    revert with 0, 
                ext_call.return_data[0],
                eth.balance(stor0),
                ext_call.return_data[0],
                ext_call.return_data[0],
                eth.balance(stor0),
                ext_call.return_data[0],
                0
}

function sub_973dfea2(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    mem[128] = address(arg3)
    mem[160] = address(arg2)
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    mem[324] = 2
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[260] = stor0
    mem[292] = block.timestamp
    require ext_code.size(address(arg1))
    call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, stor0, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(arg4).getReserves() with:
            gas gas_remaining wei
    mem[192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(arg4).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 228] = address(arg4)
    mem[(2 * ceil32(return_data.size)) + 260] = (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
    if arg5:
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 196] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 228] = address(arg4)
        mem[(4 * ceil32(return_data.size)) + 260] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    else:
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 196] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 228] = address(arg4)
        mem[(4 * ceil32(return_data.size)) + 260] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg4).'jbxB' with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 196] = address(arg2)
    mem[(8 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 260] = 0
    mem[(8 * ceil32(return_data.size)) + 292] = 0
    mem[(8 * ceil32(return_data.size)) + 324] = this.address
    mem[(8 * ceil32(return_data.size)) + 356] = block.timestamp
    call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(11 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(12 * ceil32(return_data.size)) + 224] = address(arg2)
    mem[(12 * ceil32(return_data.size)) + 256] = address(arg3)
    mem[(12 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(12 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
    idx = 0
    s = (12 * ceil32(return_data.size)) + 224
    t = (12 * ceil32(return_data.size)) + 484
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 484 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_00c1c2e6(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = stor0
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg3)
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    mem[(2 * ceil32(return_data.size)) + 324] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 260] = stor0
    mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
    require ext_code.size(address(arg1))
    call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, stor0, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(arg4).getReserves() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(arg4).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    mem[(6 * ceil32(return_data.size)) + 260] = (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
    if arg5:
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 260] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    else:
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 260] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 196] = this.address
    call address(arg4).'jbxB' with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(11 * ceil32(return_data.size)) + 260] = 0
    mem[(11 * ceil32(return_data.size)) + 292] = 0
    mem[(11 * ceil32(return_data.size)) + 324] = this.address
    mem[(11 * ceil32(return_data.size)) + 356] = block.timestamp
    call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(13 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(14 * ceil32(return_data.size)) + 224] = address(arg2)
    mem[(14 * ceil32(return_data.size)) + 256] = address(arg3)
    mem[(14 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(14 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
    idx = 0
    s = (14 * ceil32(return_data.size)) + 224
    t = (14 * ceil32(return_data.size)) + 484
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(14 * ceil32(return_data.size)) + 484 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    require return_data.size >= 32
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if gas_remaining < gas_remaining:
        revert with 'NH{q', 17
    revert with 0, 
                ext_call.return_data[0],
                eth.balance(stor0),
                ext_call.return_data[0],
                ext_call.return_data[0],
                eth.balance(stor0),
                ext_call.return_data[0],
                0
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x973dfea2(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x9ec29bf6(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x9ec29bf6(?????):
                if unknown_0xc75fc662(?????) == uint32(call.func_hash) >> 224:
                    require calldata.size - 4 >= 160
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require arg3 == address(arg3)
                    require arg4 == address(arg4)
                    require arg5 == bool(arg5)
                    if stor0 != msg.sender:
                        revert with 0, 'This function is restricted to the contract's owner'
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args stor0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 132] = stor0
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args stor0
                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
                    mem[(2 * ceil32(return_data.size)) + 192] = address(arg2)
                    mem[(2 * ceil32(return_data.size)) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 160
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 0, 128, stor0, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    staticcall address(arg4).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    staticcall address(arg4).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if arg5:
                        call address(arg2).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        call address(arg3).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
                    else:
                        call address(arg3).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        call address(arg2).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    call address(arg4).'jbxB' with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call address(arg4).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(arg2), ext_call.return_data[0], 0, 0, stor0, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args stor0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args stor0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if gas_remaining < gas_remaining:
                        revert with 'NH{q', 17
                    revert with 0, 
                                ext_call.return_data[0],
                                eth.balance(stor0),
                                ext_call.return_data[0],
                                ext_call.return_data[0],
                                eth.balance(stor0),
                                ext_call.return_data[0],
                                0
                require unknown_0xc7c3b362(?????) == uint32(call.func_hash) >> 224
                require calldata.size - 4 >= 160
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                require arg5 == bool(arg5)
                if stor0 != msg.sender:
                    revert with 0, 'This function is restricted to the contract's owner'
                staticcall address(arg4).getReserves() with:
                        gas gas_remaining wei
                mem[128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                staticcall address(arg4).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                mem[(2 * ceil32(return_data.size)) + 164] = address(arg4)
                mem[(2 * ceil32(return_data.size)) + 196] = (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
                if arg5:
                    call address(arg2).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 164] = address(arg4)
                    mem[(4 * ceil32(return_data.size)) + 196] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
                    call address(arg3).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
                else:
                    call address(arg3).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 164] = address(arg4)
                    mem[(4 * ceil32(return_data.size)) + 196] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
                    call address(arg2).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                call address(arg4).'jbxB' with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                call address(arg4).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 132] = address(arg2)
                mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 196] = 0
                mem[(8 * ceil32(return_data.size)) + 228] = 0
                mem[(8 * ceil32(return_data.size)) + 260] = this.address
                mem[(8 * ceil32(return_data.size)) + 292] = block.timestamp
                call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(12 * ceil32(return_data.size)) + 160] = address(arg2)
                mem[(12 * ceil32(return_data.size)) + 192] = address(arg3)
                mem[(12 * ceil32(return_data.size)) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(12 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                idx = 0
                s = (12 * ceil32(return_data.size)) + 160
                t = (12 * ceil32(return_data.size)) + 420
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 420 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor0 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            require calldata.size - 4 >= 160
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            require arg3 == address(arg3)
            require arg4 == address(arg4)
            require arg5 == bool(arg5)
            if stor0 != msg.sender:
                revert with 0, 'This function is restricted to the contract's owner'
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall address(arg4).getReserves() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            staticcall address(arg4).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
                revert with 'NH{q', 17
            mem[(6 * ceil32(return_data.size)) + 196] = (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
            if arg5:
                call address(arg2).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(7 * ceil32(return_data.size)) + 196] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
            else:
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(7 * ceil32(return_data.size)) + 196] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
                call address(arg2).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 132] = this.address
            call address(arg4).'jbxB' with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call address(arg4).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(11 * ceil32(return_data.size)) + 196] = 0
            mem[(11 * ceil32(return_data.size)) + 228] = 0
            mem[(11 * ceil32(return_data.size)) + 260] = this.address
            mem[(11 * ceil32(return_data.size)) + 292] = block.timestamp
            call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(13 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(14 * ceil32(return_data.size)) + 160] = address(arg2)
            mem[(14 * ceil32(return_data.size)) + 192] = address(arg3)
            mem[(14 * ceil32(return_data.size)) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[(14 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            idx = 0
            s = (14 * ceil32(return_data.size)) + 160
            t = (14 * ceil32(return_data.size)) + 420
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg1))
            call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(14 * ceil32(return_data.size)) + 420 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            require return_data.size >= 32
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if gas_remaining < gas_remaining:
                revert with 'NH{q', 17
            revert with 0, 
                        ext_call.return_data[0],
                        eth.balance(stor0),
                        ext_call.return_data[0],
                        ext_call.return_data[0],
                        eth.balance(stor0),
                        ext_call.return_data[0],
                        0
        if uint32(call.func_hash) >> 224 != unknown_0x973dfea2(?????):
            require unknown_0x990ea4a4(?????) == uint32(call.func_hash) >> 224
            require calldata.size - 4 >= 160
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            require arg3 == address(arg3)
            require arg4 == address(arg4)
            require arg5 == bool(arg5)
            if stor0 != msg.sender:
                revert with 0, 'This function is restricted to the contract's owner'
            mem[160] = address(arg3)
            mem[192] = address(arg2)
            mem[224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[228] = 0
            idx = 0
            s = 160
            t = 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg1))
            call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, 128, stor0, block.timestamp, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall address(arg4).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            staticcall address(arg4).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
                revert with 'NH{q', 17
            if arg5:
                call address(arg2).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
            else:
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                call address(arg2).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call address(arg4).'jbxB' with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call address(arg4).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0], 0, 0, stor0, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            require calldata.size - 4 >= 160
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            require arg3 == address(arg3)
            require arg4 == address(arg4)
            require arg5 == bool(arg5)
            if stor0 != msg.sender:
                revert with 0, 'This function is restricted to the contract's owner'
            mem[160] = address(arg3)
            mem[192] = address(arg2)
            mem[224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[228] = 0
            mem[356] = 2
            idx = 0
            s = 160
            t = 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[292] = stor0
            mem[324] = block.timestamp
            require ext_code.size(address(arg1))
            call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, 128, stor0, block.timestamp, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall address(arg4).getReserves() with:
                    gas gas_remaining wei
            mem[224 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            staticcall address(arg4).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 260] = address(arg4)
            mem[(2 * ceil32(return_data.size)) + 292] = (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
            if arg5:
                call address(arg2).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 228] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 260] = address(arg4)
                mem[(4 * ceil32(return_data.size)) + 292] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
            else:
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 228] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 260] = address(arg4)
                mem[(4 * ceil32(return_data.size)) + 292] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
                call address(arg2).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call address(arg4).'jbxB' with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            call address(arg4).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 228] = address(arg2)
            mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 292] = 0
            mem[(8 * ceil32(return_data.size)) + 324] = 0
            mem[(8 * ceil32(return_data.size)) + 356] = this.address
            mem[(8 * ceil32(return_data.size)) + 388] = block.timestamp
            call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(11 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 256] = address(arg2)
            mem[(12 * ceil32(return_data.size)) + 288] = address(arg3)
            mem[(12 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
            idx = 0
            s = (12 * ceil32(return_data.size)) + 256
            t = (12 * ceil32(return_data.size)) + 516
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg1))
            call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    if uint32(call.func_hash) >> 224 != unknown_0x00c1c2e6(?????):
        if unknown_0x31284ea9(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 160
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            require arg3 == address(arg3)
            require arg4 == address(arg4)
            require arg5 == bool(arg5)
            if stor0 != msg.sender:
                revert with 0, 'This function is restricted to the contract's owner'
            staticcall address(arg4).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            staticcall address(arg4).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
                revert with 'NH{q', 17
            if arg5:
                call address(arg2).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
            else:
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                call address(arg2).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call address(arg4).'jbxB' with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call address(arg4).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0], 0, 0, stor0, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        if unknown_0x57ea89b6(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require unknown_0x94869385(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 160
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        require arg3 == address(arg3)
        require arg4 == address(arg4)
        require arg5 == bool(arg5)
        if stor0 != msg.sender:
            revert with 0, 'This function is restricted to the contract's owner'
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args stor0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args stor0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall address(arg4).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        staticcall address(arg4).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
            revert with 'NH{q', 17
        if arg5:
            call address(arg2).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call address(arg3).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
        else:
            call address(arg3).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call address(arg2).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call address(arg4).'jbxB' with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call address(arg4).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0], 0, 0, stor0, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args stor0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require calldata.size - 4 >= 160
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        require arg3 == address(arg3)
        require arg4 == address(arg4)
        require arg5 == bool(arg5)
        if stor0 != msg.sender:
            revert with 0, 'This function is restricted to the contract's owner'
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args stor0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 132] = stor0
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args stor0
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
        mem[(2 * ceil32(return_data.size)) + 192] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = 0
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 160
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = stor0
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(address(arg1))
        call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 128, stor0, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall address(arg4).getReserves() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 224 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        staticcall address(arg4).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(112, 0, ext_call.return_data[0]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 1 > !(100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[32]) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 1 > !(100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + 292] = (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
        if arg5:
            call address(arg2).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 292] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
            call address(arg3).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
        else:
            call address(arg3).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 292] = (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
            call address(arg2).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(arg4), (100 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 228] = this.address
        call address(arg4).'jbxB' with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call address(arg4).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(11 * ceil32(return_data.size)) + 292] = 0
        mem[(11 * ceil32(return_data.size)) + 324] = 0
        mem[(11 * ceil32(return_data.size)) + 356] = this.address
        mem[(11 * ceil32(return_data.size)) + 388] = block.timestamp
        call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(13 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(14 * ceil32(return_data.size)) + 256] = address(arg2)
        mem[(14 * ceil32(return_data.size)) + 288] = address(arg3)
        mem[(14 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(14 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
        idx = 0
        s = (14 * ceil32(return_data.size)) + 256
        t = (14 * ceil32(return_data.size)) + 516
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(14 * ceil32(return_data.size)) + 516 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args stor0
    require return_data.size >= 32
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if gas_remaining < gas_remaining:
        revert with 'NH{q', 17
    revert with 0, 
                ext_call.return_data[0],
                eth.balance(stor0),
                ext_call.return_data[0],
                ext_call.return_data[0],
                eth.balance(stor0),
                ext_call.return_data[0],
                0
}



}
