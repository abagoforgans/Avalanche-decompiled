contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor3
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args stor3, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_58a314c4(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require msg.sender == stor4
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[100] = this.address
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = stor2
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    call address(('cd', 4)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = 0
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 4).length
    idx = 0
    s = (2 * ceil32(return_data.size)) + 292
    t = cd[4] + 36
    while idx < ('cd', 4).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = -1
    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), -1, ('cd', 4).length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 4).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 0, 65
    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 0, 65
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
}

function sub_f91a06c0(?) payable {
    require calldata.size - 4 >= 128
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require msg.sender == stor3
    if not ('cd', 68).length:
        revert with 0, 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    if 1 >= ('cd', 68).length:
        revert with 0, 50
    require ('cd', 68)[1] == address(('cd', 68)[1])
    mem[100] = address(('cd', 68)[0])
    mem[132] = address(('cd', 68)[1])
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(('cd', 68)[0]), address(('cd', 68)[1])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 1 >= ('cd', 68).length:
        revert with 0, 50
    require ('cd', 68)[1] == address(('cd', 68)[1])
    if 0 >= ('cd', 68).length:
        revert with 0, 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(('cd', 68)[0]) < address(('cd', 68)[1]):
        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if cd[4] > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
            revert with 0, 17
        if 9970 * cd[4] and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) > -1 / 9970 * cd[4]:
            revert with 0, 17
        if not cd[36]:
            revert with 0, 18
        if 9970 * cd[4] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / cd[36] > 0x1a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e90:
            revert with 0, 17
        if 9970 * cd[4] and 9970 * cd[4] > -1 / 9970 * cd[4]:
            revert with 0, 17
        if 99400900 * cd[4] * cd[4] > !(40000 * 9970 * cd[4] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / cd[36]):
            revert with 0, 17
        if 1 > !((99400900 * cd[4] * cd[4]) + (40000 * 9970 * cd[4] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / cd[36])):
            revert with 0, 17
        s = (99400900 * cd[4] * cd[4]) + (40000 * 9970 * cd[4] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / cd[36]) + 1 / 2
        t = (99400900 * cd[4] * cd[4]) + (40000 * 9970 * cd[4] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / cd[36])
        while s < t:
            if not s:
                revert with 0, 18
            if (99400900 * cd[4] * cd[4]) + (40000 * 9970 * cd[4] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / cd[36]) / s > !s:
                revert with 0, 17
            s = ((99400900 * cd[4] * cd[4]) + (40000 * 9970 * cd[4] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / cd[36]) / s) + s / 2
            t = s
            continue 
        if t < 9970 * cd[4]:
            revert with 0, 17
        if t - (9970 * cd[4]) > 0xa7c61a3ae2bdd0cef9133bc4d7ca2854a50a2bc57513e0ebd99c1f877e95:
            revert with 0, 17
        if (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 < Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 > !(9970 * cd[4] / 10000):
            revert with 0, 17
        if not ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000):
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[0]) > !(((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        if ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not (99999 * t) - (996990030 * cd[4]) / 2 * 10^9:
            revert with 0, 18
        if ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000) > !(997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9):
            revert with 0, 17
        if 997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 and ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000) > -1 / 997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9:
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000)) + (997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9):
            revert with 0, 18
        if (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[0])) / 997 <= ext_call.return_data[0]:
            require (997 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (997 * 9970 * cd[4] / 10000 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) / (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000)) + (997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) >= (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[0])) / 997
            require ((997 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (997 * 9970 * cd[4] / 10000 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) / (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000)) + (997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9)) - ((1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[0])) / 997) >= cd[100]
            mem[(4 * ceil32(return_data.size)) + 100] = stor2
            mem[(4 * ceil32(return_data.size)) + 132] = (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[0])) / 997
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[0])) / 997
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 100] = (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[0])) / 997
            mem[(6 * ceil32(return_data.size)) + 132] = 0
            mem[(6 * ceil32(return_data.size)) + 164] = 160
            mem[(6 * ceil32(return_data.size)) + 260] = ('cd', 68).length
            idx = 0
            s = (6 * ceil32(return_data.size)) + 292
            u = cd[68] + 36
            while idx < ('cd', 68).length:
                require cd[u] == address(cd[u])
                mem[s] = address(cd[u])
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 196] = this.address
            mem[(6 * ceil32(return_data.size)) + 228] = -1
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[0])) / 997, 0, 160, address(this.address), -1, ('cd', 68).length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[0])) / 997) >> 32 <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[0])) / 997) >> 32 + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[0])) / 997) >> 32 + 96] > test266151307():
                revert with 0, 65
            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[0])) / 997) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[0])) / 997) >> 32 + 96]) + 1 < 0:
                revert with 0, 65
            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[0])) / 997) >> 32 + 96]) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[0])) / 997) >> 32 + 32 <= return_data.size
        else:
            require (997 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (997 * 9970 * cd[4] / 10000 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) / (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000)) + (997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) >= ext_call.return_data[0]
            require ((997 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (997 * 9970 * cd[4] / 10000 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) / (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000)) + (997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9)) - ext_call.return_data[0] >= cd[100]
            mem[(4 * ceil32(return_data.size)) + 100] = stor2
            mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 132] = 0
            mem[(6 * ceil32(return_data.size)) + 164] = 160
            mem[(6 * ceil32(return_data.size)) + 260] = ('cd', 68).length
            idx = 0
            s = (6 * ceil32(return_data.size)) + 292
            t = cd[68] + 36
            while idx < ('cd', 68).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 196] = this.address
            mem[(6 * ceil32(return_data.size)) + 228] = -1
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), -1, ('cd', 68).length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                revert with 0, 65
            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
                revert with 0, 65
            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    else:
        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if cd[4] > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
            revert with 0, 17
        if 9970 * cd[4] and Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) > -1 / 9970 * cd[4]:
            revert with 0, 17
        if not cd[36]:
            revert with 0, 18
        if 9970 * cd[4] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / cd[36] > 0x1a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e90:
            revert with 0, 17
        if 9970 * cd[4] and 9970 * cd[4] > -1 / 9970 * cd[4]:
            revert with 0, 17
        if 99400900 * cd[4] * cd[4] > !(40000 * 9970 * cd[4] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / cd[36]):
            revert with 0, 17
        if 1 > !((99400900 * cd[4] * cd[4]) + (40000 * 9970 * cd[4] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / cd[36])):
            revert with 0, 17
        s = (99400900 * cd[4] * cd[4]) + (40000 * 9970 * cd[4] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / cd[36]) + 1 / 2
        t = (99400900 * cd[4] * cd[4]) + (40000 * 9970 * cd[4] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / cd[36])
        while s < t:
            if not s:
                revert with 0, 18
            if (99400900 * cd[4] * cd[4]) + (40000 * 9970 * cd[4] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / cd[36]) / s > !s:
                revert with 0, 17
            s = ((99400900 * cd[4] * cd[4]) + (40000 * 9970 * cd[4] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / cd[36]) / s) + s / 2
            t = s
            continue 
        if t < 9970 * cd[4]:
            revert with 0, 17
        if t - (9970 * cd[4]) > 0xa7c61a3ae2bdd0cef9133bc4d7ca2854a50a2bc57513e0ebd99c1f877e95:
            revert with 0, 17
        if (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 < Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 > !(9970 * cd[4] / 10000):
            revert with 0, 17
        if not ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000):
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[32]) > !(((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        if ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not (99999 * t) - (996990030 * cd[4]) / 2 * 10^9:
            revert with 0, 18
        if ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000) > !(997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9):
            revert with 0, 17
        if 997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 and ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000) > -1 / 997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9:
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000)) + (997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9):
            revert with 0, 18
        if (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 <= ext_call.return_data[0]:
            require (997 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (997 * 9970 * cd[4] / 10000 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) / (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000)) + (997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) >= (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997
            require ((997 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (997 * 9970 * cd[4] / 10000 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) / (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000)) + (997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9)) - ((1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) >= cd[100]
            mem[(4 * ceil32(return_data.size)) + 100] = stor2
            mem[(4 * ceil32(return_data.size)) + 132] = (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 100] = (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997
            mem[(6 * ceil32(return_data.size)) + 132] = 0
            mem[(6 * ceil32(return_data.size)) + 164] = 160
            mem[(6 * ceil32(return_data.size)) + 260] = ('cd', 68).length
            idx = 0
            s = (6 * ceil32(return_data.size)) + 292
            u = cd[68] + 36
            while idx < ('cd', 68).length:
                require cd[u] == address(cd[u])
                mem[s] = address(cd[u])
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 196] = this.address
            mem[(6 * ceil32(return_data.size)) + 228] = -1
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997, 0, 160, address(this.address), -1, ('cd', 68).length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) >> 32 <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) >> 32 + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) >> 32 + 96] > test266151307():
                revert with 0, 65
            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) >> 32 + 96]) + 1 < 0:
                revert with 0, 65
            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) >> 32 + 96]) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (1000 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) >> 32 + 32 <= return_data.size
        else:
            require (997 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (997 * 9970 * cd[4] / 10000 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) / (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000)) + (997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) >= ext_call.return_data[0]
            require ((997 * (99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (997 * 9970 * cd[4] / 10000 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9) / (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9) + (9970 * cd[4] / 10000)) + (997 * ((99999 * t) - (996990030 * cd[4]) / 2 * 10^9 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (99999 * t) - (996990030 * cd[4]) / 2 * 10^9)) - ext_call.return_data[0] >= cd[100]
            mem[(4 * ceil32(return_data.size)) + 100] = stor2
            mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 132] = 0
            mem[(6 * ceil32(return_data.size)) + 164] = 160
            mem[(6 * ceil32(return_data.size)) + 260] = ('cd', 68).length
            idx = 0
            s = (6 * ceil32(return_data.size)) + 292
            t = cd[68] + 36
            while idx < ('cd', 68).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 196] = this.address
            mem[(6 * ceil32(return_data.size)) + 228] = -1
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), -1, ('cd', 68).length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                revert with 0, 65
            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
                revert with 0, 65
            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
}



}
