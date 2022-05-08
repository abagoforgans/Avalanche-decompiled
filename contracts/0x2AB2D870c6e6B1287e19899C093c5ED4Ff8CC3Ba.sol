contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;

function _fallback() payable {
    revert
}

function _withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'a'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor0.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a63f98e1(?) payable {
    if not uint8(stor0.field_160):
        staticcall 0xde9e52f1838951e4d2bb6c59723b003c353979b6.0x70a08231 with:
                gas gas_remaining wei
               args address(stor0.field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 132] = this.address
        staticcall 0xde9e52f1838951e4d2bb6c59723b003c353979b6.0xdd62ed3e with:
                gas gas_remaining wei
               args address(stor0.field_0), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'b'
        mem[(2 * ceil32(return_data.size)) + 100] = address(stor0.field_0)
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        call 0xde9e52f1838951e4d2bb6c59723b003c353979b6.0x23b872dd with:
             gas gas_remaining wei
            args address(stor0.field_0), address(this.address), ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 100] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        call 0xde9e52f1838951e4d2bb6c59723b003c353979b6.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 128] = 0xde9e52f1838951e4d2bb6c59723b003c353979b6
        mem[(6 * ceil32(return_data.size)) + 160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        if ext_call.return_data[0] and 3 * 10^12 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if block.timestamp > -2:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 228] = 3 * 10^12 * ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 260] = 160
        mem[(6 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = (6 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 292] = address(stor0.field_0)
        mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 1
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 3 * 10^12 * ext_call.return_data[0], Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(stor0.field_0), block.timestamp + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            _59 = mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
            _61 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 'NH{q', 65
            if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
            mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            require _59 + (32 * _61) + 32 <= return_data.size
            idx = (6 * ceil32(return_data.size)) + _59 + 224
            s = (7 * ceil32(return_data.size)) + 224
            while idx < (6 * ceil32(return_data.size)) + _59 + (32 * _61) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
        else:
            _60 = mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
            _62 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 'NH{q', 65
            if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
            mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            require _60 + (32 * _62) + 32 <= return_data.size
            idx = (6 * ceil32(return_data.size)) + _60 + 224
            s = (7 * ceil32(return_data.size)) + 224
            while idx < (6 * ceil32(return_data.size)) + _60 + (32 * _62) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
        Mask(96, 0, stor0.field_160) = 1
}



}
