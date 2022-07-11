contract main {




// =====================  Runtime code  =====================


const bentoBox = 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f


address stor0;
mapping of uint8 stor1;

function _fallback() payable {
    revert
}

function sub_c6360bc8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor0 != msg.sender:
        revert with 0, 'U A'
    stor1[address(arg1)] = uint8(bool(arg2))
}

function swapExact(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    return 0
}

function swap(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if arg3 != stor0:
        if not stor1[address(arg3)]:
            revert with 0, 'Ni Tra'
    mem[132] = this.address
    mem[164] = 0x781655d802670bba3c89aebaaea59d3182fd755d
    mem[196] = 0
    mem[228] = arg5
    require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
    call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, address(this.address), 0x781655d802670bba3c89aebaaea59d3182fd755d, 0, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(0x781655d802670bba3c89aebaaea59d3182fd755d)
    staticcall 0x781655d802670bba3c89aebaaea59d3182fd755d.getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 997 * ext_call.return_data[0] / 997 != ext_call.return_data[0]:
        revert with 0, 'BoringMath: Mul Overflow'
    if not ext_call.return_data[18 len 14]:
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
        require ext_code.size(0x781655d802670bba3c89aebaaea59d3182fd755d)
        call 0x781655d802670bba3c89aebaaea59d3182fd755d.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 164] = 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f
        mem[(2 * ceil32(return_data.size)) + 196] = arg3
        mem[(2 * ceil32(return_data.size)) + 228] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 260] = 0
        require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
        call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args address(arg2), 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, address(arg3), 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0
    else:
        require ext_call.return_data[18 len 14]
        if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Mul Overflow'
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
        require ext_code.size(0x781655d802670bba3c89aebaaea59d3182fd755d)
        call 0x781655d802670bba3c89aebaaea59d3182fd755d.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 164] = 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f
        mem[(2 * ceil32(return_data.size)) + 196] = arg3
        mem[(2 * ceil32(return_data.size)) + 228] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 260] = 0
        require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
        call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args address(arg2), 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, address(arg3), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0
    mem[(2 * ceil32(return_data.size)) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[32] - arg4 <= ext_call.return_data[32]:
        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[32] - arg4
        mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[32]
        return memory
          from (4 * ceil32(return_data.size)) + 128
           len (5 * ceil32(return_data.size)) + 64
    mem[(4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 132] = 32
    mem[(4 * ceil32(return_data.size)) + 164] = 21
    mem[(4 * ceil32(return_data.size)) + 196] = 'BoringMath: Underflow'
    revert with memory
      from (4 * ceil32(return_data.size)) + 128
       len (5 * ceil32(return_data.size)) + 100
}



}
