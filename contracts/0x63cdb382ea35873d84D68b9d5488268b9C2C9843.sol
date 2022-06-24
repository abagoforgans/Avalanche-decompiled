contract main {




// =====================  Runtime code  =====================


#
#  - sub_5faf43f3(?)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - _fallback()
#
function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f0c462b8(?) {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(address(arg2))
    staticcall address(arg2).checkLiquidation(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'has liquidity'
    if address(arg3) >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[ceil32(return_data.size) + 289] = arg1
        require ext_code.size(address(arg2))
        staticcall address(arg2).checkCost(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 317] = arg1
        mem[(2 * ceil32(return_data.size)) + 349] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 381] = address(arg4)
        require ext_code.size(address(sha3(0, 11157320132538271434, sha3(12907147938406234195, address(arg3)), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
        staticcall address(sha3(0, 11157320132538271434, sha3(12907147938406234195, address(arg3)), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).token0() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(sha3(0, 11157320132538271434, sha3(12907147938406234195, address(arg3)), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
        staticcall address(sha3(0, 11157320132538271434, sha3(12907147938406234195, address(arg3)), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).token1() with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 417 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 413] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if ext_call.return_data[12 len 20] == address(arg3):
            mem[(4 * ceil32(return_data.size)) + 417] = ext_call.return_data[0]
            if ext_call.return_data[12 len 20] == address(arg3):
                mem[(4 * ceil32(return_data.size)) + 449] = ext_call.return_data[0]
            else:
                mem[(4 * ceil32(return_data.size)) + 449] = 0
        else:
            mem[(4 * ceil32(return_data.size)) + 417] = 0
            if ext_call.return_data[12 len 20] == address(arg3):
                mem[(4 * ceil32(return_data.size)) + 449] = ext_call.return_data[0]
            else:
                mem[(4 * ceil32(return_data.size)) + 449] = 0
        mem[(4 * ceil32(return_data.size)) + 481] = this.address
        mem[(4 * ceil32(return_data.size)) + 513] = 128
        mem[(4 * ceil32(return_data.size)) + 545] = ceil32(return_data.size) + 96
        mem[(4 * ceil32(return_data.size)) + 577 len ceil32(ceil32(return_data.size)) + 3] = mem[(2 * ceil32(return_data.size)) + 317 len ceil32(ceil32(return_data.size)) + 3]
        if ceil32(ceil32(return_data.size)) + 3 > ceil32(return_data.size) + 96:
            mem[(6 * ceil32(return_data.size)) + 673] = 0
        require ext_code.size(address(sha3(0, 11157320132538271434, sha3(12907147938406234195, address(arg3)), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
        call address(sha3(0, 11157320132538271434, sha3(12907147938406234195, address(arg3)), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 417 len ceil32(ceil32(return_data.size)) + (7 * ceil32(return_data.size)) + 163]
    else:
        if not address(arg3):
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        mem[ceil32(return_data.size) + 289] = arg1
        require ext_code.size(address(arg2))
        staticcall address(arg2).checkCost(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 317] = arg1
        mem[(2 * ceil32(return_data.size)) + 349] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 381] = address(arg4)
        require ext_code.size(address(sha3(0, 11157320132538271434, sha3(address(arg3), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
        staticcall address(sha3(0, 11157320132538271434, sha3(address(arg3), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).token0() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(sha3(0, 11157320132538271434, sha3(address(arg3), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
        staticcall address(sha3(0, 11157320132538271434, sha3(address(arg3), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).token1() with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 417 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 413] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if ext_call.return_data[12 len 20] == address(arg3):
            mem[(4 * ceil32(return_data.size)) + 417] = ext_call.return_data[0]
            if ext_call.return_data[12 len 20] == address(arg3):
                mem[(4 * ceil32(return_data.size)) + 449] = ext_call.return_data[0]
            else:
                mem[(4 * ceil32(return_data.size)) + 449] = 0
        else:
            mem[(4 * ceil32(return_data.size)) + 417] = 0
            if ext_call.return_data[12 len 20] == address(arg3):
                mem[(4 * ceil32(return_data.size)) + 449] = ext_call.return_data[0]
            else:
                mem[(4 * ceil32(return_data.size)) + 449] = 0
        mem[(4 * ceil32(return_data.size)) + 481] = this.address
        mem[(4 * ceil32(return_data.size)) + 513] = 128
        mem[(4 * ceil32(return_data.size)) + 545] = ceil32(return_data.size) + 96
        mem[(4 * ceil32(return_data.size)) + 577 len ceil32(ceil32(return_data.size)) + 3] = mem[(2 * ceil32(return_data.size)) + 317 len ceil32(ceil32(return_data.size)) + 3]
        if ceil32(ceil32(return_data.size)) + 3 > ceil32(return_data.size) + 96:
            mem[(6 * ceil32(return_data.size)) + 673] = 0
        require ext_code.size(address(sha3(0, 11157320132538271434, sha3(address(arg3), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
        call address(sha3(0, 11157320132538271434, sha3(address(arg3), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 417 len ceil32(ceil32(return_data.size)) + (7 * ceil32(return_data.size)) + 163]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d85eb6b0(?) {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(address(arg2))
    staticcall address(arg2).checkCost(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg5:
        revert with 0, 'noliq'
    require ext_code.size(address(arg2))
    staticcall address(arg2).checkLiquidation(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'has liquidity'
    if address(arg3) >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[(2 * ceil32(return_data.size)) + 289] = arg1
        require ext_code.size(address(arg2))
        staticcall address(arg2).checkCost(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 317] = arg1
        mem[(4 * ceil32(return_data.size)) + 349] = address(arg2)
        mem[(4 * ceil32(return_data.size)) + 381] = address(arg4)
        require ext_code.size(address(sha3(0, 11157320132538271434, sha3(12907147938406234195, address(arg3)), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
        staticcall address(sha3(0, 11157320132538271434, sha3(12907147938406234195, address(arg3)), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).token0() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(sha3(0, 11157320132538271434, sha3(12907147938406234195, address(arg3)), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
        staticcall address(sha3(0, 11157320132538271434, sha3(12907147938406234195, address(arg3)), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).token1() with:
                gas gas_remaining wei
               args mem[(6 * ceil32(return_data.size)) + 417 len 8 * ceil32(return_data.size)]
        mem[(6 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 413] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if ext_call.return_data[12 len 20] == address(arg3):
            mem[(8 * ceil32(return_data.size)) + 417] = ext_call.return_data[0]
            if ext_call.return_data[12 len 20] == address(arg3):
                mem[(8 * ceil32(return_data.size)) + 449] = ext_call.return_data[0]
            else:
                mem[(8 * ceil32(return_data.size)) + 449] = 0
        else:
            mem[(8 * ceil32(return_data.size)) + 417] = 0
            if ext_call.return_data[12 len 20] == address(arg3):
                mem[(8 * ceil32(return_data.size)) + 449] = ext_call.return_data[0]
            else:
                mem[(8 * ceil32(return_data.size)) + 449] = 0
        mem[(8 * ceil32(return_data.size)) + 481] = this.address
        mem[(8 * ceil32(return_data.size)) + 513] = 128
        mem[(8 * ceil32(return_data.size)) + 545] = (5 * ceil32(return_data.size)) + 96
        mem[(8 * ceil32(return_data.size)) + 577 len ceil32(5 * ceil32(return_data.size)) + 3] = mem[(4 * ceil32(return_data.size)) + 317 len ceil32(5 * ceil32(return_data.size)) + 3]
        if ceil32(5 * ceil32(return_data.size)) + 3 > (5 * ceil32(return_data.size)) + 96:
            mem[(14 * ceil32(return_data.size)) + 673] = 0
        require ext_code.size(address(sha3(0, 11157320132538271434, sha3(12907147938406234195, address(arg3)), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
        call address(sha3(0, 11157320132538271434, sha3(12907147938406234195, address(arg3)), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[(8 * ceil32(return_data.size)) + 417 len ceil32(5 * ceil32(return_data.size)) + (13 * ceil32(return_data.size)) + 163]
    else:
        if not address(arg3):
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        mem[(2 * ceil32(return_data.size)) + 289] = arg1
        require ext_code.size(address(arg2))
        staticcall address(arg2).checkCost(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 317] = arg1
        mem[(4 * ceil32(return_data.size)) + 349] = address(arg2)
        mem[(4 * ceil32(return_data.size)) + 381] = address(arg4)
        require ext_code.size(address(sha3(0, 11157320132538271434, sha3(address(arg3), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
        staticcall address(sha3(0, 11157320132538271434, sha3(address(arg3), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).token0() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(sha3(0, 11157320132538271434, sha3(address(arg3), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
        staticcall address(sha3(0, 11157320132538271434, sha3(address(arg3), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).token1() with:
                gas gas_remaining wei
               args mem[(6 * ceil32(return_data.size)) + 417 len 8 * ceil32(return_data.size)]
        mem[(6 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 413] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if ext_call.return_data[12 len 20] == address(arg3):
            mem[(8 * ceil32(return_data.size)) + 417] = ext_call.return_data[0]
            if ext_call.return_data[12 len 20] == address(arg3):
                mem[(8 * ceil32(return_data.size)) + 449] = ext_call.return_data[0]
            else:
                mem[(8 * ceil32(return_data.size)) + 449] = 0
        else:
            mem[(8 * ceil32(return_data.size)) + 417] = 0
            if ext_call.return_data[12 len 20] == address(arg3):
                mem[(8 * ceil32(return_data.size)) + 449] = ext_call.return_data[0]
            else:
                mem[(8 * ceil32(return_data.size)) + 449] = 0
        mem[(8 * ceil32(return_data.size)) + 481] = this.address
        mem[(8 * ceil32(return_data.size)) + 513] = 128
        mem[(8 * ceil32(return_data.size)) + 545] = (5 * ceil32(return_data.size)) + 96
        mem[(8 * ceil32(return_data.size)) + 577 len ceil32(5 * ceil32(return_data.size)) + 3] = mem[(4 * ceil32(return_data.size)) + 317 len ceil32(5 * ceil32(return_data.size)) + 3]
        if ceil32(5 * ceil32(return_data.size)) + 3 > (5 * ceil32(return_data.size)) + 96:
            mem[(14 * ceil32(return_data.size)) + 673] = 0
        require ext_code.size(address(sha3(0, 11157320132538271434, sha3(address(arg3), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
        call address(sha3(0, 11157320132538271434, sha3(address(arg3), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[(8 * ceil32(return_data.size)) + 417 len ceil32(5 * ceil32(return_data.size)) + (13 * ceil32(return_data.size)) + 163]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
