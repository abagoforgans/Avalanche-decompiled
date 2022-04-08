contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function sub_a8cffd99(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    idx = 0
    s = arg1
    while idx < arg2.length:
        _31 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_31 + 32 len 64] = call.data[calldata.size len 64]
        require idx < mem[(32 * arg2.length) + 128]
        require 0 < mem[_31]
        mem[_31 + 32] = mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
        require idx + 1 < mem[(32 * arg2.length) + 128]
        require 1 < mem[_31]
        mem[_31 + 64] = mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]
        require idx < mem[96]
        _39 = mem[(32 * idx) + 128]
        mem[_31 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_31 + 100] = s
        mem[_31 + 132] = 64
        mem[_31 + 164] = mem[_31]
        t = 0
        while t < 32 * mem[_31]:
            mem[_31 + t + 196] = mem[_31 + t + 32]
            t = t + 32
            continue 
        require ext_code.size(address(_39))
        staticcall address(_39).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args s, 64, mem[_31 + 164 len (32 * mem[_31]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_31 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _31 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _56 = mem[_31 + 96 len 4], Mask(224, 32, s) >> 32
        require mem[_31 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
        require mem[_31 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
        require mem[mem[_31 + 96 len 4], Mask(224, 32, s) >> 32 + _31 + 96] <= 4294967296 and mem[_31 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[mem[_31 + 96 len 4], Mask(224, 32, s) >> 32 + _31 + 96]) + 32 <= return_data.size
        mem[_31 + ceil32(return_data.size) + 96] = mem[mem[_31 + 96 len 4], Mask(224, 32, s) >> 32 + _31 + 96]
        _59 = mem[_56 + _31 + 96]
        s = 0
        while s < 32 * _59:
            mem[_31 + ceil32(return_data.size) + s + 128] = mem[_56 + _31 + s + 128]
            s = s + 32
            continue 
        mem[64] = (32 * _59) + _31 + ceil32(return_data.size) + 128
        if 1 < mem[_31 + ceil32(return_data.size) + 96]:
            idx = idx + 1
            s = mem[_31 + ceil32(return_data.size) + 160]
            continue 
        revert
    return s
}

function sub_4217b43f(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
    if arg4.length != arg3.length + 1:
        revert with 0, 'WrongPathAndRouters'
    require 0 < arg4.length
    _8 = mem[(32 * arg3.length) + 160]
    require ext_code.size(mem[(32 * arg3.length) + 172 len 20])
    staticcall mem[(32 * arg3.length) + 172 len 20].0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'ApproveFirst'
    mem[(32 * arg3.length) + (32 * arg4.length) + 228] = arg1
    require ext_code.size(mem[(32 * arg3.length) + 172 len 20])
    call mem[(32 * arg3.length) + 172 len 20].0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 2
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 256
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 64] = call.data[calldata.size len 64]
    idx = 0
    s = _8
    s = arg1
    while idx < arg3.length:
        require idx < mem[(32 * arg3.length) + 128]
        _132 = mem[(32 * idx) + (32 * arg3.length) + 160]
        require idx < mem[96]
        _137 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_137)
        require ext_code.size(address(_132))
        staticcall address(_132).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(_137)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= s:
            require idx < mem[(32 * arg3.length) + 128]
            require 0 < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            mem[(32 * arg3.length) + (32 * arg4.length) + 192] = mem[(32 * idx) + (32 * arg3.length) + 172 len 20]
            require idx + 1 < mem[(32 * arg3.length) + 128]
            require 1 < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            mem[(32 * arg3.length) + (32 * arg4.length) + 224] = mem[(32 * idx + 1) + (32 * arg3.length) + 172 len 20]
            require idx < mem[96]
            _159 = mem[(32 * idx) + 128]
            _160 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            _162 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            t = 0
            while t < 32 * _162:
                mem[mem[64] + t + 100] = mem[(32 * arg3.length) + (32 * arg4.length) + t + 192]
                t = t + 32
                continue 
            require ext_code.size(address(_159))
            staticcall address(_159).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _162) + _160 + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _236 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _238 = mem[_236]
            require mem[_236] <= 4294967296
            require mem[_236] + 32 <= return_data.size
            require mem[mem[_236] + _236] <= 4294967296 and mem[_236] + (32 * mem[mem[_236] + _236]) + 32 <= return_data.size
            mem[_236 + ceil32(return_data.size)] = mem[mem[_236] + _236]
            _244 = mem[_238 + _236]
            t = 0
            while t < 32 * _244:
                mem[_236 + ceil32(return_data.size) + t + 32] = mem[_238 + _236 + t + 32]
                t = t + 32
                continue 
            mem[64] = (32 * _244) + _236 + ceil32(return_data.size) + 32
            require 1 < mem[_236 + ceil32(return_data.size)]
            _294 = mem[_236 + ceil32(return_data.size) + 64]
            require idx + 1 < mem[(32 * arg3.length) + 128]
            _298 = mem[(32 * idx + 1) + (32 * arg3.length) + 160]
            mem[(32 * _244) + _236 + ceil32(return_data.size) + 36] = this.address
            require ext_code.size(address(_298))
            staticcall address(_298).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * _244) + _236 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            _310 = mem[(32 * idx) + 128]
            mem[(32 * _244) + _236 + ceil32(return_data.size) + 32] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(32 * _244) + _236 + ceil32(return_data.size) + 36] = s
            mem[(32 * _244) + _236 + ceil32(return_data.size) + 68] = 99 * _294 / 100
            mem[(32 * _244) + _236 + ceil32(return_data.size) + 132] = this.address
            mem[(32 * _244) + _236 + ceil32(return_data.size) + 164] = block.timestamp + 60
            mem[(32 * _244) + _236 + ceil32(return_data.size) + 100] = 160
            mem[(32 * _244) + _236 + ceil32(return_data.size) + 196] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            _313 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            t = 0
            while t < 32 * _313:
                mem[(32 * _244) + _236 + ceil32(return_data.size) + t + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + t + 192]
                t = t + 32
                continue 
            require ext_code.size(address(_310))
            call address(_310).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args s, 99 * _294 / 100, 160, address(this.address), block.timestamp + 60, mem[(32 * _244) + _236 + ceil32(return_data.size) + 196 len (32 * _313) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx + 1 < mem[(32 * arg3.length) + 128]
            _340 = mem[(32 * idx + 1) + (32 * arg3.length) + 160]
            mem[(32 * _244) + _236 + ceil32(return_data.size) + 36] = this.address
            require ext_code.size(address(_340))
            staticcall address(_340).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * _244) + _236 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
        else:
            require idx < mem[96]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = stor0
            require ext_code.size(address(_132))
            call address(_132).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], stor0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg3.length) + 128]
            require 0 < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            mem[(32 * arg3.length) + (32 * arg4.length) + 192] = mem[(32 * idx) + (32 * arg3.length) + 172 len 20]
            require idx + 1 < mem[(32 * arg3.length) + 128]
            require 1 < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            mem[(32 * arg3.length) + (32 * arg4.length) + 224] = mem[(32 * idx + 1) + (32 * arg3.length) + 172 len 20]
            require idx < mem[96]
            _175 = mem[(32 * idx) + 128]
            _176 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            _178 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            t = 0
            while t < 32 * _178:
                mem[mem[64] + t + 100] = mem[(32 * arg3.length) + (32 * arg4.length) + t + 192]
                t = t + 32
                continue 
            require ext_code.size(address(_175))
            staticcall address(_175).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _178) + _176 + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _237 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _240 = mem[_237]
            require mem[_237] <= 4294967296
            require mem[_237] + 32 <= return_data.size
            require mem[mem[_237] + _237] <= 4294967296 and mem[_237] + (32 * mem[mem[_237] + _237]) + 32 <= return_data.size
            mem[_237 + ceil32(return_data.size)] = mem[mem[_237] + _237]
            _245 = mem[_240 + _237]
            t = 0
            while t < 32 * _245:
                mem[_237 + ceil32(return_data.size) + t + 32] = mem[_240 + _237 + t + 32]
                t = t + 32
                continue 
            mem[64] = (32 * _245) + _237 + ceil32(return_data.size) + 32
            require 1 < mem[_237 + ceil32(return_data.size)]
            _295 = mem[_237 + ceil32(return_data.size) + 64]
            require idx + 1 < mem[(32 * arg3.length) + 128]
            _301 = mem[(32 * idx + 1) + (32 * arg3.length) + 160]
            mem[(32 * _245) + _237 + ceil32(return_data.size) + 36] = this.address
            require ext_code.size(address(_301))
            staticcall address(_301).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * _245) + _237 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            _314 = mem[(32 * idx) + 128]
            mem[(32 * _245) + _237 + ceil32(return_data.size) + 32] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(32 * _245) + _237 + ceil32(return_data.size) + 36] = s
            mem[(32 * _245) + _237 + ceil32(return_data.size) + 68] = 99 * _295 / 100
            mem[(32 * _245) + _237 + ceil32(return_data.size) + 132] = this.address
            mem[(32 * _245) + _237 + ceil32(return_data.size) + 164] = block.timestamp + 60
            mem[(32 * _245) + _237 + ceil32(return_data.size) + 100] = 160
            mem[(32 * _245) + _237 + ceil32(return_data.size) + 196] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            _317 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            t = 0
            while t < 32 * _317:
                mem[(32 * _245) + _237 + ceil32(return_data.size) + t + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + t + 192]
                t = t + 32
                continue 
            require ext_code.size(address(_314))
            call address(_314).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args s, 99 * _295 / 100, 160, address(this.address), block.timestamp + 60, mem[(32 * _245) + _237 + ceil32(return_data.size) + 196 len (32 * _317) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx + 1 < mem[(32 * arg3.length) + 128]
            _343 = mem[(32 * idx + 1) + (32 * arg3.length) + 160]
            mem[(32 * _245) + _237 + ceil32(return_data.size) + 36] = this.address
            require ext_code.size(address(_343))
            staticcall address(_343).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * _245) + _237 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = _132
        s = 0
        continue 
    if s < arg2:
        revert with 0, 'ArbFailed'
    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
    require ext_code.size(mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 172 len 20])
    call mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 172 len 20].0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return s
}



}
