contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;

function _fallback() payable {
    revert
}

function main() payable {
    staticcall stor5.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall stor6.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor7)
    call stor7.rebase() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    staticcall stor0.wMEMOToMEMO(uint256 arg1) with:
            gas gas_remaining wei
           args Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]):
        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1 > !(Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        s = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) + 1 / 2
        t = Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])
        while s < t:
            if not s:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / s > !s:
                revert with 0, 17
            s = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
            t = s
            continue 
        if 1 > !(ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        s = (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + 1 / 2
        u = ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])
        while s < u:
            if not s:
                revert with 0, 18
            if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / s > !s:
                revert with 0, 17
            s = (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
            u = s
            continue 
        if u > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * u and t > -1 / 997 * u:
            revert with 0, 17
        if 997 * u * t < 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if (997 * u * t) - (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * ext_call.return_data[0] > !(1000 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        if (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if not (994009 * ext_call.return_data[0]) + (997000 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 18
        if (997000 * u * t) - (10^6 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / (994009 * ext_call.return_data[0]) + (997000 * Mask(112, 0, ext_call.return_data[32])) and 997 > -1 / (997000 * u * t) - (10^6 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / (994009 * ext_call.return_data[0]) + (997000 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        if 997 * (997000 * u * t) - (10^6 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / (994009 * ext_call.return_data[0]) + (997000 * Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * (997000 * u * t) - (10^6 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / (994009 * ext_call.return_data[0]) + (997000 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * (997000 * u * t) - (10^6 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / (994009 * ext_call.return_data[0]) + (997000 * Mask(112, 0, ext_call.return_data[32]))):
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (997000 * u * t) - (10^6 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / (994009 * ext_call.return_data[0]) + (997000 * Mask(112, 0, ext_call.return_data[32]))):
            revert with 0, 18
        require ext_code.size(stor5)
        call stor5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 997 * (997000 * u * t) - (10^6 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / (994009 * ext_call.return_data[0]) + (997000 * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (997000 * u * t) - (10^6 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / (994009 * ext_call.return_data[0]) + (997000 * Mask(112, 0, ext_call.return_data[32]))), 0, address(this.address), 128, 32, (997000 * u * t) - (10^6 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / (994009 * ext_call.return_data[0]) + (997000 * Mask(112, 0, ext_call.return_data[32]))
    else:
        if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 1000 * ext_call.return_data[0]:
            revert with 0, 17
        if 1 > !(Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        s = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) + 1 / 2
        t = Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])
        while s < t:
            if not s:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / s > !s:
                revert with 0, 17
            s = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
            t = s
            continue 
        if 1 > !(ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        s = (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + 1 / 2
        u = ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])
        while s < u:
            if not s:
                revert with 0, 18
            if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / s > !s:
                revert with 0, 17
            s = (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
            u = s
            continue 
        if u > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * u and t > -1 / 997 * u:
            revert with 0, 17
        if 997 * u * t < 1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if (997 * u * t) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[0] > !(997 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        if (1000 * ext_call.return_data[0]) + (997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if not (997000 * ext_call.return_data[0]) + (994009 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 18
        if (997000 * u * t) - (10^6 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997000 * ext_call.return_data[0]) + (994009 * Mask(112, 0, ext_call.return_data[32])) and 997 > -1 / (997000 * u * t) - (10^6 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997000 * ext_call.return_data[0]) + (994009 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        if 997 * (997000 * u * t) - (10^6 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997000 * ext_call.return_data[0]) + (994009 * Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * (997000 * u * t) - (10^6 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997000 * ext_call.return_data[0]) + (994009 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * (997000 * u * t) - (10^6 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997000 * ext_call.return_data[0]) + (994009 * Mask(112, 0, ext_call.return_data[32]))):
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (997000 * u * t) - (10^6 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997000 * ext_call.return_data[0]) + (994009 * Mask(112, 0, ext_call.return_data[32]))):
            revert with 0, 18
        require ext_code.size(stor6)
        call stor6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * (997000 * u * t) - (10^6 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997000 * ext_call.return_data[0]) + (994009 * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (997000 * u * t) - (10^6 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997000 * ext_call.return_data[0]) + (994009 * Mask(112, 0, ext_call.return_data[32]))), address(this.address), 128, 32, (997000 * u * t) - (10^6 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997000 * ext_call.return_data[0]) + (994009 * Mask(112, 0, ext_call.return_data[32]))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg2:
        mem[100] = arg2
        call stor0.unwrap(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = stor7
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor7, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor7)
        call stor7.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 100] = stor4
        mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        call stor3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor4, ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = stor3
        mem[(4 * ceil32(return_data.size)) + 160] = stor1
        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 388
        t = (4 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = -1
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), -1, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _84 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _86 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require (32 * _86) + _84 + 32 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _86)] = mem[(4 * ceil32(return_data.size)) + _84 + 224 len ceil32(32 * _86)]
        require arg4.length >= 32
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 36)]
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _118 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_118] == bool(mem[_118])
        if 1 >= _86:
            revert with 0, 50
        _124 = mem[(6 * ceil32(return_data.size)) + 256]
        if mem[(6 * ceil32(return_data.size)) + 256] < cd[(arg4 + 36)]:
            revert with 0, 17
        mem[mem[64] + 4] = stor9
        mem[mem[64] + 36] = _124 - cd[(arg4 + 36)]
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor9, _124 - cd[(arg4 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _130 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_130] == bool(mem[_130])
    else:
        mem[100] = stor8
        mem[132] = arg3
        call stor3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor8, arg3
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor8)
        call stor8.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args arg3, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 100] = stor0
        mem[ceil32(return_data.size) + 132] = arg3
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor0, arg3
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 100] = arg3
        call stor0.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args arg3
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 100] = stor4
        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor4, ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 96] = 2
        mem[(6 * ceil32(return_data.size)) + 128] = stor0
        mem[(6 * ceil32(return_data.size)) + 160] = stor1
        mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 228] = 0
        mem[(6 * ceil32(return_data.size)) + 260] = 160
        mem[(6 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (6 * ceil32(return_data.size)) + 388
        t = (6 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 292] = this.address
        mem[(6 * ceil32(return_data.size)) + 324] = -1
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), -1, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _83 = mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
        _85 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 0, 65
        if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require (32 * _85) + _83 + 32 <= return_data.size
        mem[(7 * ceil32(return_data.size)) + 224 len ceil32(32 * _85)] = mem[(6 * ceil32(return_data.size)) + _83 + 224 len ceil32(32 * _85)]
        require arg4.length >= 32
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 36)]
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _117 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_117] == bool(mem[_117])
        if 1 >= _85:
            revert with 0, 50
        _123 = mem[(7 * ceil32(return_data.size)) + 256]
        if mem[(7 * ceil32(return_data.size)) + 256] < cd[(arg4 + 36)]:
            revert with 0, 17
        mem[mem[64] + 4] = stor9
        mem[mem[64] + 36] = _123 - cd[(arg4 + 36)]
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor9, _123 - cd[(arg4 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _129 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_129] == bool(mem[_129])
}



}
