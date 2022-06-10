contract main {




// =====================  Runtime code  =====================


address sub_0385ebfeAddress;
address joeRouterAddress;
address sub_90f12382Address;
address sub_3ba130d6Address;
address WAVAXAddress;
address TOKENAddress;
array of address sub_6a0341b8;
array of address sub_17f4e6a5;

function sub_0385ebfe(?) payable {
    return sub_0385ebfeAddress
}

function sub_17f4e6a5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_17f4e6a5.length
    return sub_17f4e6a5[arg1]
}

function sub_3ba130d6(?) payable {
    return sub_3ba130d6Address
}

function joeRouter() payable {
    return joeRouterAddress
}

function sub_6a0341b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_6a0341b8.length
    return sub_6a0341b8[arg1].field_0
}

function WAVAX() payable {
    return WAVAXAddress
}

function TOKEN() payable {
    return TOKENAddress
}

function sub_90f12382(?) payable {
    return sub_90f12382Address
}

function _fallback() payable {
    revert
}

function sub_2c1c7d9f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_ccaf0c30(?) payable {
    if 0 >= sub_6a0341b8.length:
        revert with 'NH{q', 50
    require ext_code.size(address(sub_6a0341b8.field_0))
    staticcall address(sub_6a0341b8.field_0).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= sub_6a0341b8.length:
        revert with 'NH{q', 50
    require ext_code.size(address(sub_6a0341b8.field_0))
    staticcall address(sub_6a0341b8.field_0).balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 1 >= sub_6a0341b8.length:
        revert with 'NH{q', 50
    require ext_code.size(address(sub_6a0341b8.field_256))
    staticcall address(sub_6a0341b8.field_256).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 1 >= sub_6a0341b8.length:
        revert with 'NH{q', 50
    require ext_code.size(address(sub_6a0341b8.field_256))
    staticcall address(sub_6a0341b8.field_256).balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0
}

function sub_90966c9e(?) payable {
    require ext_code.size(WAVAXAddress)
    call WAVAXAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xd00ae08403b9bbb9124bb305c09058e32c39a48c)
    staticcall 0xd00ae08403b9bbb9124bb305c09058e32c39a48c.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(WAVAXAddress)
    call WAVAXAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(TOKENAddress)
    call TOKENAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xd00ae08403b9bbb9124bb305c09058e32c39a48c)
    staticcall 0xd00ae08403b9bbb9124bb305c09058e32c39a48c.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(TOKENAddress)
    call TOKENAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_88dd2b28(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == uint8(arg6)
    require arg7 == uint8(arg7)
    mem[100] = address(arg4)
    mem[132] = arg1
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = address(arg2)
    mem[ceil32(return_data.size) + 160] = address(arg3)
    if uint8(arg6):
        if uint8(arg6) != 1:
            if 1 >= ext_call.return_data[0]:
                revert with 'NH{q', 50
            mem[ceil32(return_data.size) + 196] = address(arg5)
            mem[ceil32(return_data.size) + 228] = uint32(arg1), mem[164 len 28]
            require ext_code.size(address(arg3))
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg5), uint32(arg1), mem[164 len 28]
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 128] = address(arg3)
            mem[ceil32(return_data.size) + 160] = address(arg2)
            if not uint8(arg7):
                if 1 >= ext_call.return_data[0]:
                    revert with 'NH{q', 50
                mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = uint32(arg1), mem[164 len 28]
                mem[(2 * ceil32(return_data.size)) + 228] = 0
                mem[(2 * ceil32(return_data.size)) + 260] = 160
                mem[(2 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = ceil32(return_data.size) + 128
                t = (2 * ceil32(return_data.size)) + 388
                while idx < mem[ceil32(return_data.size) + 96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                mem[(2 * ceil32(return_data.size)) + 324] = -1
                require ext_code.size(sub_0385ebfeAddress)
                call sub_0385ebfeAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args uint32(arg1), mem[164 len 28], 0, 160, address(this.address), -1, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _127 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _131 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 + 192]
                require _127 + (32 * _131) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _127 + 224
                t = (4 * ceil32(return_data.size)) + 224
                while idx < _131:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _257 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = ext_call.return_data[0]
                mem[mem[64] + 96 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
                mem[mem[64] + 32] = (32 * ext_call.return_data[0]) + 96
                mem[_257 + (32 * ext_call.return_data[0]) + 96] = _131
                mem[_257 + (32 * ext_call.return_data[0]) + 128 len 32 * _131] = mem[(4 * ceil32(return_data.size)) + 224 len 32 * _131]
                return memory
                  from mem[64]
                   len _257 + (32 * ext_call.return_data[0]) + (32 * _131) + -mem[64] + 128
            if uint8(arg7) != 1:
                mem[(2 * ceil32(return_data.size)) + 192] = 64
                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 288 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 288] = ext_call.return_data[0]
                return Array(len=ext_call.return_data[0], data=mem[(2 * ceil32(return_data.size)) + 288 len (64 * ext_call.return_data[0]) + 32]), 
                       (32 * ext_call.return_data[0]) + 96
            if 1 >= ext_call.return_data[0]:
                revert with 'NH{q', 50
            mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = uint32(arg1), mem[164 len 28]
            mem[(2 * ceil32(return_data.size)) + 228] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = (2 * ceil32(return_data.size)) + 388
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = -1
            require ext_code.size(joeRouterAddress)
            call joeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args uint32(arg1), mem[164 len 28], 0, 160, address(this.address), -1, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _126 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _130 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, uint32(arg1), mem[164 len 28]) >> 32 + 192]
            require _126 + (32 * _130) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _126 + 224
            t = (4 * ceil32(return_data.size)) + 224
            while idx < _130:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _261 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
            mem[mem[64] + 32] = (32 * ext_call.return_data[0]) + 96
            mem[_261 + (32 * ext_call.return_data[0]) + 96] = _130
            mem[_261 + (32 * ext_call.return_data[0]) + 128 len 32 * _130] = mem[(4 * ceil32(return_data.size)) + 224 len 32 * _130]
            return memory
              from mem[64]
               len _261 + (32 * ext_call.return_data[0]) + (32 * _130) + -mem[64] + 128
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg1
        mem[ceil32(return_data.size) + 228] = 0
        mem[ceil32(return_data.size) + 260] = 160
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = -1
        require ext_code.size(joeRouterAddress)
        call joeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, address(this.address), -1, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _128 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _132 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require _128 + (32 * _132) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _128 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _132:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _132:
            revert with 'NH{q', 50
        _262 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = address(arg5)
        mem[mem[64] + 36] = _262
        require ext_code.size(address(arg3))
        call address(arg3).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg5), _262
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _273 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_273] == bool(mem[_273])
        if 0 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[ceil32(return_data.size) + 128] = address(arg3)
        if 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[ceil32(return_data.size) + 160] = address(arg2)
        if not uint8(arg7):
            if 1 >= _132:
                revert with 'NH{q', 50
            _290 = mem[(2 * ceil32(return_data.size)) + 256]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _290
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _303 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 196
            while idx < _303:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = -1
            require ext_code.size(sub_0385ebfeAddress)
            call sub_0385ebfeAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _290, 0, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _303) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _389 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _393 = mem[_389]
            require mem[_389] <= test266151307()
            require _389 + mem[_389] + 31 < _389 + return_data.size
            _397 = mem[_389 + mem[_389]]
            if mem[_389 + mem[_389]] > test266151307():
                revert with 'NH{q', 65
            if _389 + ceil32(return_data.size) + floor32(mem[_389 + mem[_389]]) + 1 > test266151307() or floor32(mem[_389 + mem[_389]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _389 + ceil32(return_data.size) + floor32(mem[_389 + mem[_389]]) + 1
            mem[_389 + ceil32(return_data.size)] = _397
            require _393 + (32 * _397) + 32 <= return_data.size
            idx = 0
            s = _389 + _393 + 32
            t = _389 + ceil32(return_data.size) + 32
            while idx < _397:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _444 = mem[64]
            mem[mem[64]] = 64
            _448 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 96 len 32 * _448] = mem[(2 * ceil32(return_data.size)) + 224 len 32 * _448]
            mem[mem[64] + 32] = (32 * _448) + 96
            mem[_444 + (32 * _448) + 96] = _397
            mem[_444 + (32 * _448) + 128 len 32 * _397] = mem[_389 + ceil32(return_data.size) + 32 len 32 * _397]
            return memory
              from mem[64]
               len _444 + (32 * _448) + (32 * _397) + -mem[64] + 128
        if uint8(arg7) != 1:
            _297 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = _132
            mem[mem[64] + 96 len 32 * _132] = mem[(2 * ceil32(return_data.size)) + 224 len 32 * _132]
            mem[mem[64] + 32] = (32 * _132) + 96
            mem[_297 + (32 * _132) + 96] = ext_call.return_data[0]
            mem[_297 + (32 * _132) + 128 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
            var218001 = ext_call.return_data[0]
            var218002 = (32 * ext_call.return_data[0]) + 128
            var218007 = _297 + (32 * _132) + (32 * ext_call.return_data[0]) + 128
            return memory
              from mem[64]
               len _297 + (32 * _132) + (32 * ext_call.return_data[0]) + -mem[64] + 128
        if 1 >= _132:
            revert with 'NH{q', 50
        _294 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _294
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _305 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _305:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = -1
        require ext_code.size(joeRouterAddress)
        call joeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _294, 0, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _305) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _388 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _392 = mem[_388]
        require mem[_388] <= test266151307()
        require _388 + mem[_388] + 31 < _388 + return_data.size
        _396 = mem[_388 + mem[_388]]
        if mem[_388 + mem[_388]] > test266151307():
            revert with 'NH{q', 65
        if _388 + ceil32(return_data.size) + floor32(mem[_388 + mem[_388]]) + 1 > test266151307() or floor32(mem[_388 + mem[_388]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _388 + ceil32(return_data.size) + floor32(mem[_388 + mem[_388]]) + 1
        mem[_388 + ceil32(return_data.size)] = _396
        require _392 + (32 * _396) + 32 <= return_data.size
        idx = 0
        s = _388 + _392 + 32
        t = _388 + ceil32(return_data.size) + 32
        while idx < _396:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _446 = mem[64]
        mem[mem[64]] = 64
        _450 = mem[(2 * ceil32(return_data.size)) + 192]
        mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 192]
        mem[mem[64] + 96 len 32 * _450] = mem[(2 * ceil32(return_data.size)) + 224 len 32 * _450]
        mem[mem[64] + 32] = (32 * _450) + 96
        mem[_446 + (32 * _450) + 96] = _396
        mem[_446 + (32 * _450) + 128 len 32 * _396] = mem[_388 + ceil32(return_data.size) + 32 len 32 * _396]
        return memory
          from mem[64]
           len _446 + (32 * _450) + (32 * _396) + -mem[64] + 128
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = -1
    require ext_code.size(sub_0385ebfeAddress)
    call sub_0385ebfeAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), -1, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _129 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _133 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require _129 + (32 * _133) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _129 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _133:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _133:
        revert with 'NH{q', 50
    _259 = mem[(2 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 4] = address(arg5)
    mem[mem[64] + 36] = _259
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), _259
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _272 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_272] == bool(mem[_272])
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + 128] = address(arg3)
    if 1 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + 160] = address(arg2)
    if not uint8(arg7):
        if 1 >= _133:
            revert with 'NH{q', 50
        _287 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _287
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _302 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _302:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = -1
        require ext_code.size(sub_0385ebfeAddress)
        call sub_0385ebfeAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _287, 0, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _302) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _391 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _395 = mem[_391]
        require mem[_391] <= test266151307()
        require _391 + mem[_391] + 31 < _391 + return_data.size
        _399 = mem[_391 + mem[_391]]
        if mem[_391 + mem[_391]] > test266151307():
            revert with 'NH{q', 65
        if _391 + ceil32(return_data.size) + floor32(mem[_391 + mem[_391]]) + 1 > test266151307() or floor32(mem[_391 + mem[_391]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _391 + ceil32(return_data.size) + floor32(mem[_391 + mem[_391]]) + 1
        mem[_391 + ceil32(return_data.size)] = _399
        require _395 + (32 * _399) + 32 <= return_data.size
        idx = 0
        s = _391 + _395 + 32
        t = _391 + ceil32(return_data.size) + 32
        while idx < _399:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _445 = mem[64]
        mem[mem[64]] = 64
        _449 = mem[(2 * ceil32(return_data.size)) + 192]
        mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 192]
        mem[mem[64] + 96 len 32 * _449] = mem[(2 * ceil32(return_data.size)) + 224 len 32 * _449]
        mem[mem[64] + 32] = (32 * _449) + 96
        mem[_445 + (32 * _449) + 96] = _399
        mem[_445 + (32 * _449) + 128 len 32 * _399] = mem[_391 + ceil32(return_data.size) + 32 len 32 * _399]
        return memory
          from mem[64]
           len _445 + (32 * _449) + (32 * _399) + -mem[64] + 128
    if uint8(arg7) != 1:
        _296 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = _133
        mem[mem[64] + 96 len 32 * _133] = mem[(2 * ceil32(return_data.size)) + 224 len 32 * _133]
        mem[mem[64] + 32] = (32 * _133) + 96
        mem[_296 + (32 * _133) + 96] = ext_call.return_data[0]
        mem[_296 + (32 * _133) + 128 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
        var216001 = ext_call.return_data[0]
        var216002 = (32 * ext_call.return_data[0]) + 128
        var216007 = _296 + (32 * _133) + (32 * ext_call.return_data[0]) + 128
        return memory
          from mem[64]
           len _296 + (32 * _133) + (32 * ext_call.return_data[0]) + -mem[64] + 128
    if 1 >= _133:
        revert with 'NH{q', 50
    _292 = mem[(2 * ceil32(return_data.size)) + 256]
    _293 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _292
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _304 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < _304:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_293 + 100] = this.address
    mem[_293 + 132] = -1
    require ext_code.size(joeRouterAddress)
    call joeRouterAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _293 + (32 * _304) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _390 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _394 = mem[_390]
    require mem[_390] <= test266151307()
    require _390 + mem[_390] + 31 < _390 + return_data.size
    _398 = mem[_390 + mem[_390]]
    if mem[_390 + mem[_390]] > test266151307():
        revert with 'NH{q', 65
    if _390 + ceil32(return_data.size) + floor32(mem[_390 + mem[_390]]) + 1 > test266151307() or floor32(mem[_390 + mem[_390]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _390 + ceil32(return_data.size) + floor32(mem[_390 + mem[_390]]) + 1
    mem[_390 + ceil32(return_data.size)] = _398
    require _394 + (32 * _398) + 32 <= return_data.size
    idx = 0
    s = _390 + _394 + 32
    t = _390 + ceil32(return_data.size) + 32
    while idx < _398:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _447 = mem[64]
    mem[mem[64]] = 64
    _451 = mem[(2 * ceil32(return_data.size)) + 192]
    mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 192]
    mem[mem[64] + 96 len 32 * _451] = mem[(2 * ceil32(return_data.size)) + 224 len 32 * _451]
    mem[mem[64] + 32] = (32 * _451) + 96
    mem[_447 + (32 * _451) + 96] = _398
    mem[_447 + (32 * _451) + 128 len 32 * _398] = mem[_390 + ceil32(return_data.size) + 32 len 32 * _398]
    return memory
      from mem[64]
       len _447 + (32 * _451) + (32 * _398) + -mem[64] + 128
}



}
