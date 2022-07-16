contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address token0Address;
address token1Address;
address stor4;

function token0() {
    return token0Address
}

function token1() {
    return token1Address
}

function sub_674ca784(?) {
    if stor4 != msg.sender:
        revert with 0, '?'
    selfdestruct(stor4)
}

function _fallback() payable {
    revert
}

function addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    return 0
}

function swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    return Array(len=1, data=1)
}

function sub_ec5c9fa5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor4 != msg.sender:
        revert with 0, '?'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        call address(arg1).0x23b872dd with:
             gas gas_remaining wei
            args stor0, stor4, ext_call.return_data[0] * arg2 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_aec3504e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor4 != msg.sender:
        revert with 0, '?'
    if 2 != msg.value:
        revert with 0, '?'
    mem[128] = call.data[calldata.size]
    token0Address = address(arg1)
    token1Address = address(arg2)
    mem[160] = 0xa827ef0800000000000000000000000000000000000000000000000000000000
    mem[164] = 0
    idx = 0
    s = 128
    t = 484
    while idx < 1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 128
    t = 548
    while idx < 1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor0)
    call stor0.0xa827ef08 with:
       value 2 wei
         gas gas_remaining wei
        args 0, 2, address(this.address), 288, 352, 0, address(this.address), address(this.address), this.address, 1, mem[484], 1, mem[548]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8ded8df7(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    if stor4 != msg.sender:
        revert with 0, '?'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 100] = stor0
        mem[ceil32(return_data.size) + 132] = this.address
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] * arg2 / 100
        require ext_code.size(address(arg1))
        call address(arg1).0x23b872dd with:
             gas gas_remaining wei
            args stor0, address(this.address), ext_call.return_data[0] * arg2 / 100
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if address(arg1) == stor1:
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(stor1)
            call stor1.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor4 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = address(arg3)
            mem[(2 * ceil32(return_data.size)) + 132] = -1
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), -1
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 160] = stor1
            mem[(4 * ceil32(return_data.size)) + 196] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 228] = 0
            mem[(6 * ceil32(return_data.size)) + 260] = 160
            mem[(6 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (6 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 292] = stor4
            mem[(6 * ceil32(return_data.size)) + 324] = 9999999999
            require ext_code.size(address(arg3))
            call address(arg3).swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, stor4, 9999999999, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _41 = mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
            _42 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 'NH{q', 65
            if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
            mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            require _41 + (32 * _42) + 32 <= return_data.size
            idx = 0
            s = (6 * ceil32(return_data.size)) + _41 + 224
            t = (7 * ceil32(return_data.size)) + 224
            while idx < _42:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
}



}
