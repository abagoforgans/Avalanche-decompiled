contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function sub_cc2fec54(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    require ext_code.size(arg2)
    call arg2.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a69ece0a(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    s = arg3
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _1012 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx + 1 < arg2.length
        _1016 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
            revert with 0, 
                        32,
                        37,
                        0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 265 len 27]
        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
            if not mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if 997 * s / 997 != s:
                revert with 0, 'ds-math-mul-overflow'
            if address(_1012) == address(_1012):
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                        idx = idx + 1
                        s = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * s)
                        continue 
                else:
                    if ext_call.return_data[50 len 14]:
                        if 997 * s * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                            idx = idx + 1
                            s = 997 * s * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * s)
                            continue 
            else:
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * s) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * s):
                        idx = idx + 1
                        s = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * s)
                        continue 
                else:
                    if ext_call.return_data[18 len 14]:
                        if 997 * s * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * s) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * s):
                            idx = idx + 1
                            s = 997 * s * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * s)
                            continue 
        else:
            if not mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if 997 * s / 997 != s:
                revert with 0, 'ds-math-mul-overflow'
            if address(_1012) == address(_1016):
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                        idx = idx + 1
                        s = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * s)
                        continue 
                else:
                    if ext_call.return_data[50 len 14]:
                        if 997 * s * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                            idx = idx + 1
                            s = 997 * s * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * s)
                            continue 
            else:
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * s) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * s):
                        idx = idx + 1
                        s = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * s)
                        continue 
                else:
                    if ext_call.return_data[18 len 14]:
                        if 997 * s * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * s) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * s):
                            idx = idx + 1
                            s = 997 * s * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * s)
                            continue 
        revert
    require s >= arg4
    require 0 < arg2.length
    _1014 = mem[(32 * arg1.length) + 160]
    require 0 < arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[140 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = arg3
    require ext_code.size(address(_1014))
    call address(_1014).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args mem[140 len 20], arg3
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = arg3
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        _2013 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx + 1 < mem[(32 * arg1.length) + 128]
        _2015 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
            revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
            if not mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            _2028 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx + 1 < mem[(32 * arg1.length) + 128]
            _2032 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                if not mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if address(_2028) == address(_2028):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2013):
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _2279 = mem[(32 * idx) + 128]
                                _2327 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2327 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2327 + 36] = 0
                                mem[_2327 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2327 + 100] = this.address
                                mem[_2327 + 132] = 128
                                mem[_2327 + 164] = mem[_2327]
                                t = 0
                                while t < mem[_2327]:
                                    mem[_2327 + t + 196] = mem[_2327 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2327] % 32:
                                    require ext_code.size(address(_2279))
                                    call address(_2279).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2327 + 164 len mem[_2327] + 32]
                                else:
                                    mem[floor32(mem[_2327]) + _2327 + 196] = mem[floor32(mem[_2327]) + _2327 + -(mem[_2327] % 32) + 228 len mem[_2327] % 32]
                                    require ext_code.size(address(_2279))
                                    call address(_2279).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2327], mem[_2327 + 196 len floor32(mem[_2327]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _2230 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _2326 = mem[(32 * idx) + 128]
                                _2390 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2390 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2390 + 36] = 0
                                mem[_2390 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2390 + 100] = address(_2230)
                                mem[_2390 + 132] = 128
                                mem[_2390 + 164] = mem[_2390]
                                t = 0
                                while t < mem[_2390]:
                                    mem[_2390 + t + 196] = mem[_2390 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2390] % 32:
                                    require ext_code.size(address(_2326))
                                    call address(_2326).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2230), 128, mem[_2390 + 164 len mem[_2390] + 32]
                                else:
                                    mem[floor32(mem[_2390]) + _2390 + 196] = mem[floor32(mem[_2390]) + _2390 + -(mem[_2390] % 32) + 228 len mem[_2390] % 32]
                                    require ext_code.size(address(_2326))
                                    call address(_2326).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2230), 128, mem[_2390], mem[_2390 + 196 len floor32(mem[_2390]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _2281 = mem[(32 * idx) + 128]
                                _2329 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2329 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2329 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2329 + 68] = 0
                                mem[_2329 + 100] = this.address
                                mem[_2329 + 132] = 128
                                mem[_2329 + 164] = mem[_2329]
                                t = 0
                                while t < mem[_2329]:
                                    mem[_2329 + t + 196] = mem[_2329 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2329] % 32:
                                    require ext_code.size(address(_2281))
                                    call address(_2281).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2329 + 164 len mem[_2329] + 32]
                                else:
                                    mem[floor32(mem[_2329]) + _2329 + 196] = mem[floor32(mem[_2329]) + _2329 + -(mem[_2329] % 32) + 228 len mem[_2329] % 32]
                                    require ext_code.size(address(_2281))
                                    call address(_2281).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2329], mem[_2329 + 196 len floor32(mem[_2329]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _2232 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _2328 = mem[(32 * idx) + 128]
                                _2394 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2394 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2394 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2394 + 68] = 0
                                mem[_2394 + 100] = address(_2232)
                                mem[_2394 + 132] = 128
                                mem[_2394 + 164] = mem[_2394]
                                t = 0
                                while t < mem[_2394]:
                                    mem[_2394 + t + 196] = mem[_2394 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2394] % 32:
                                    require ext_code.size(address(_2328))
                                    call address(_2328).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2232), 128, mem[_2394 + 164 len mem[_2394] + 32]
                                else:
                                    mem[floor32(mem[_2394]) + _2394 + 196] = mem[floor32(mem[_2394]) + _2394 + -(mem[_2394] % 32) + 228 len mem[_2394] % 32]
                                    require ext_code.size(address(_2328))
                                    call address(_2328).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2232), 128, mem[_2394], mem[_2394 + 196 len floor32(mem[_2394]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        continue 
                    require Mask(112, 0, ext_call.return_data[32])
                    if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2013):
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2399 = mem[(32 * idx) + 128]
                            _2493 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2493 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2493 + 36] = 0
                            mem[_2493 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2493 + 100] = this.address
                            mem[_2493 + 132] = 128
                            mem[_2493 + 164] = mem[_2493]
                            t = 0
                            while t < mem[_2493]:
                                mem[_2493 + t + 196] = mem[_2493 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2493] % 32:
                                require ext_code.size(address(_2399))
                                call address(_2399).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2493 + 164 len mem[_2493] + 32]
                            else:
                                mem[floor32(mem[_2493]) + _2493 + 196] = mem[floor32(mem[_2493]) + _2493 + -(mem[_2493] % 32) + 228 len mem[_2493] % 32]
                                require ext_code.size(address(_2399))
                                call address(_2399).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2493], mem[_2493 + 196 len floor32(mem[_2493]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2330 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2492 = mem[(32 * idx) + 128]
                            _2568 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2568 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2568 + 36] = 0
                            mem[_2568 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2568 + 100] = address(_2330)
                            mem[_2568 + 132] = 128
                            mem[_2568 + 164] = mem[_2568]
                            t = 0
                            while t < mem[_2568]:
                                mem[_2568 + t + 196] = mem[_2568 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2568] % 32:
                                require ext_code.size(address(_2492))
                                call address(_2492).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2330), 128, mem[_2568 + 164 len mem[_2568] + 32]
                            else:
                                mem[floor32(mem[_2568]) + _2568 + 196] = mem[floor32(mem[_2568]) + _2568 + -(mem[_2568] % 32) + 228 len mem[_2568] % 32]
                                require ext_code.size(address(_2492))
                                call address(_2492).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2330), 128, mem[_2568], mem[_2568 + 196 len floor32(mem[_2568]) + 32]
                    else:
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2401 = mem[(32 * idx) + 128]
                            _2495 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2495 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2495 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2495 + 68] = 0
                            mem[_2495 + 100] = this.address
                            mem[_2495 + 132] = 128
                            mem[_2495 + 164] = mem[_2495]
                            t = 0
                            while t < mem[_2495]:
                                mem[_2495 + t + 196] = mem[_2495 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2495] % 32:
                                require ext_code.size(address(_2401))
                                call address(_2401).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2495 + 164 len mem[_2495] + 32]
                            else:
                                mem[floor32(mem[_2495]) + _2495 + 196] = mem[floor32(mem[_2495]) + _2495 + -(mem[_2495] % 32) + 228 len mem[_2495] % 32]
                                require ext_code.size(address(_2401))
                                call address(_2401).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2495], mem[_2495 + 196 len floor32(mem[_2495]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2332 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2494 = mem[(32 * idx) + 128]
                            _2572 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2572 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2572 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2572 + 68] = 0
                            mem[_2572 + 100] = address(_2332)
                            mem[_2572 + 132] = 128
                            mem[_2572 + 164] = mem[_2572]
                            t = 0
                            while t < mem[_2572]:
                                mem[_2572 + t + 196] = mem[_2572 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2572] % 32:
                                require ext_code.size(address(_2494))
                                call address(_2494).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2332), 128, mem[_2572 + 164 len mem[_2572] + 32]
                            else:
                                mem[floor32(mem[_2572]) + _2572 + 196] = mem[floor32(mem[_2572]) + _2572 + -(mem[_2572] % 32) + 228 len mem[_2572] % 32]
                                require ext_code.size(address(_2494))
                                call address(_2494).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2332), 128, mem[_2572], mem[_2572 + 196 len floor32(mem[_2572]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    continue 
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2013):
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2285 = mem[(32 * idx) + 128]
                            _2335 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2335 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2335 + 36] = 0
                            mem[_2335 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2335 + 100] = this.address
                            mem[_2335 + 132] = 128
                            mem[_2335 + 164] = mem[_2335]
                            t = 0
                            while t < mem[_2335]:
                                mem[_2335 + t + 196] = mem[_2335 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2335] % 32:
                                require ext_code.size(address(_2285))
                                call address(_2285).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2335 + 164 len mem[_2335] + 32]
                            else:
                                mem[floor32(mem[_2335]) + _2335 + 196] = mem[floor32(mem[_2335]) + _2335 + -(mem[_2335] % 32) + 228 len mem[_2335] % 32]
                                require ext_code.size(address(_2285))
                                call address(_2285).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2335], mem[_2335 + 196 len floor32(mem[_2335]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2236 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2334 = mem[(32 * idx) + 128]
                            _2402 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2402 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2402 + 36] = 0
                            mem[_2402 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2402 + 100] = address(_2236)
                            mem[_2402 + 132] = 128
                            mem[_2402 + 164] = mem[_2402]
                            t = 0
                            while t < mem[_2402]:
                                mem[_2402 + t + 196] = mem[_2402 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2402] % 32:
                                require ext_code.size(address(_2334))
                                call address(_2334).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2236), 128, mem[_2402 + 164 len mem[_2402] + 32]
                            else:
                                mem[floor32(mem[_2402]) + _2402 + 196] = mem[floor32(mem[_2402]) + _2402 + -(mem[_2402] % 32) + 228 len mem[_2402] % 32]
                                require ext_code.size(address(_2334))
                                call address(_2334).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2236), 128, mem[_2402], mem[_2402 + 196 len floor32(mem[_2402]) + 32]
                    else:
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2287 = mem[(32 * idx) + 128]
                            _2337 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2337 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2337 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2337 + 68] = 0
                            mem[_2337 + 100] = this.address
                            mem[_2337 + 132] = 128
                            mem[_2337 + 164] = mem[_2337]
                            t = 0
                            while t < mem[_2337]:
                                mem[_2337 + t + 196] = mem[_2337 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2337] % 32:
                                require ext_code.size(address(_2287))
                                call address(_2287).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2337 + 164 len mem[_2337] + 32]
                            else:
                                mem[floor32(mem[_2337]) + _2337 + 196] = mem[floor32(mem[_2337]) + _2337 + -(mem[_2337] % 32) + 228 len mem[_2337] % 32]
                                require ext_code.size(address(_2287))
                                call address(_2287).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2337], mem[_2337 + 196 len floor32(mem[_2337]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2238 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2336 = mem[(32 * idx) + 128]
                            _2406 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2406 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2406 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2406 + 68] = 0
                            mem[_2406 + 100] = address(_2238)
                            mem[_2406 + 132] = 128
                            mem[_2406 + 164] = mem[_2406]
                            t = 0
                            while t < mem[_2406]:
                                mem[_2406 + t + 196] = mem[_2406 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2406] % 32:
                                require ext_code.size(address(_2336))
                                call address(_2336).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2238), 128, mem[_2406 + 164 len mem[_2406] + 32]
                            else:
                                mem[floor32(mem[_2406]) + _2406 + 196] = mem[floor32(mem[_2406]) + _2406 + -(mem[_2406] % 32) + 228 len mem[_2406] % 32]
                                require ext_code.size(address(_2336))
                                call address(_2336).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2238), 128, mem[_2406], mem[_2406 + 196 len floor32(mem[_2406]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    continue 
                require Mask(112, 0, ext_call.return_data[0])
                if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2013):
                    if idx >= mem[96] - 1:
                        require idx < mem[96]
                        _2411 = mem[(32 * idx) + 128]
                        _2503 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2503 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2503 + 36] = 0
                        mem[_2503 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2503 + 100] = this.address
                        mem[_2503 + 132] = 128
                        mem[_2503 + 164] = mem[_2503]
                        t = 0
                        while t < mem[_2503]:
                            mem[_2503 + t + 196] = mem[_2503 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2503] % 32:
                            require ext_code.size(address(_2411))
                            call address(_2411).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2503 + 164 len mem[_2503] + 32]
                        else:
                            mem[floor32(mem[_2503]) + _2503 + 196] = mem[floor32(mem[_2503]) + _2503 + -(mem[_2503] % 32) + 228 len mem[_2503] % 32]
                            require ext_code.size(address(_2411))
                            call address(_2411).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2503], mem[_2503 + 196 len floor32(mem[_2503]) + 32]
                    else:
                        require idx + 1 < mem[96]
                        _2338 = mem[(32 * idx + 1) + 128]
                        require idx < mem[96]
                        _2502 = mem[(32 * idx) + 128]
                        _2578 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2578 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2578 + 36] = 0
                        mem[_2578 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2578 + 100] = address(_2338)
                        mem[_2578 + 132] = 128
                        mem[_2578 + 164] = mem[_2578]
                        t = 0
                        while t < mem[_2578]:
                            mem[_2578 + t + 196] = mem[_2578 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2578] % 32:
                            require ext_code.size(address(_2502))
                            call address(_2502).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2338), 128, mem[_2578 + 164 len mem[_2578] + 32]
                        else:
                            mem[floor32(mem[_2578]) + _2578 + 196] = mem[floor32(mem[_2578]) + _2578 + -(mem[_2578] % 32) + 228 len mem[_2578] % 32]
                            require ext_code.size(address(_2502))
                            call address(_2502).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2338), 128, mem[_2578], mem[_2578 + 196 len floor32(mem[_2578]) + 32]
                else:
                    if idx >= mem[96] - 1:
                        require idx < mem[96]
                        _2413 = mem[(32 * idx) + 128]
                        _2505 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2505 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2505 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2505 + 68] = 0
                        mem[_2505 + 100] = this.address
                        mem[_2505 + 132] = 128
                        mem[_2505 + 164] = mem[_2505]
                        t = 0
                        while t < mem[_2505]:
                            mem[_2505 + t + 196] = mem[_2505 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2505] % 32:
                            require ext_code.size(address(_2413))
                            call address(_2413).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2505 + 164 len mem[_2505] + 32]
                        else:
                            mem[floor32(mem[_2505]) + _2505 + 196] = mem[floor32(mem[_2505]) + _2505 + -(mem[_2505] % 32) + 228 len mem[_2505] % 32]
                            require ext_code.size(address(_2413))
                            call address(_2413).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2505], mem[_2505 + 196 len floor32(mem[_2505]) + 32]
                    else:
                        require idx + 1 < mem[96]
                        _2340 = mem[(32 * idx + 1) + 128]
                        require idx < mem[96]
                        _2504 = mem[(32 * idx) + 128]
                        _2582 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2582 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2582 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2582 + 68] = 0
                        mem[_2582 + 100] = address(_2340)
                        mem[_2582 + 132] = 128
                        mem[_2582 + 164] = mem[_2582]
                        t = 0
                        while t < mem[_2582]:
                            mem[_2582 + t + 196] = mem[_2582 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2582] % 32:
                            require ext_code.size(address(_2504))
                            call address(_2504).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2340), 128, mem[_2582 + 164 len mem[_2582] + 32]
                        else:
                            mem[floor32(mem[_2582]) + _2582 + 196] = mem[floor32(mem[_2582]) + _2582 + -(mem[_2582] % 32) + 228 len mem[_2582] % 32]
                            require ext_code.size(address(_2504))
                            call address(_2504).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2340), 128, mem[_2582], mem[_2582 + 196 len floor32(mem[_2582]) + 32]
            else:
                if not mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if address(_2028) == address(_2032):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2013):
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _2291 = mem[(32 * idx) + 128]
                                _2343 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2343 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2343 + 36] = 0
                                mem[_2343 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2343 + 100] = this.address
                                mem[_2343 + 132] = 128
                                mem[_2343 + 164] = mem[_2343]
                                t = 0
                                while t < mem[_2343]:
                                    mem[_2343 + t + 196] = mem[_2343 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2343] % 32:
                                    require ext_code.size(address(_2291))
                                    call address(_2291).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2343 + 164 len mem[_2343] + 32]
                                else:
                                    mem[floor32(mem[_2343]) + _2343 + 196] = mem[floor32(mem[_2343]) + _2343 + -(mem[_2343] % 32) + 228 len mem[_2343] % 32]
                                    require ext_code.size(address(_2291))
                                    call address(_2291).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2343], mem[_2343 + 196 len floor32(mem[_2343]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _2242 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _2342 = mem[(32 * idx) + 128]
                                _2414 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2414 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2414 + 36] = 0
                                mem[_2414 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2414 + 100] = address(_2242)
                                mem[_2414 + 132] = 128
                                mem[_2414 + 164] = mem[_2414]
                                t = 0
                                while t < mem[_2414]:
                                    mem[_2414 + t + 196] = mem[_2414 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2414] % 32:
                                    require ext_code.size(address(_2342))
                                    call address(_2342).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2242), 128, mem[_2414 + 164 len mem[_2414] + 32]
                                else:
                                    mem[floor32(mem[_2414]) + _2414 + 196] = mem[floor32(mem[_2414]) + _2414 + -(mem[_2414] % 32) + 228 len mem[_2414] % 32]
                                    require ext_code.size(address(_2342))
                                    call address(_2342).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2242), 128, mem[_2414], mem[_2414 + 196 len floor32(mem[_2414]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _2293 = mem[(32 * idx) + 128]
                                _2345 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2345 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2345 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2345 + 68] = 0
                                mem[_2345 + 100] = this.address
                                mem[_2345 + 132] = 128
                                mem[_2345 + 164] = mem[_2345]
                                t = 0
                                while t < mem[_2345]:
                                    mem[_2345 + t + 196] = mem[_2345 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2345] % 32:
                                    require ext_code.size(address(_2293))
                                    call address(_2293).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2345 + 164 len mem[_2345] + 32]
                                else:
                                    mem[floor32(mem[_2345]) + _2345 + 196] = mem[floor32(mem[_2345]) + _2345 + -(mem[_2345] % 32) + 228 len mem[_2345] % 32]
                                    require ext_code.size(address(_2293))
                                    call address(_2293).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2345], mem[_2345 + 196 len floor32(mem[_2345]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _2244 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _2344 = mem[(32 * idx) + 128]
                                _2418 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2418 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2418 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2418 + 68] = 0
                                mem[_2418 + 100] = address(_2244)
                                mem[_2418 + 132] = 128
                                mem[_2418 + 164] = mem[_2418]
                                t = 0
                                while t < mem[_2418]:
                                    mem[_2418 + t + 196] = mem[_2418 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2418] % 32:
                                    require ext_code.size(address(_2344))
                                    call address(_2344).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2244), 128, mem[_2418 + 164 len mem[_2418] + 32]
                                else:
                                    mem[floor32(mem[_2418]) + _2418 + 196] = mem[floor32(mem[_2418]) + _2418 + -(mem[_2418] % 32) + 228 len mem[_2418] % 32]
                                    require ext_code.size(address(_2344))
                                    call address(_2344).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2244), 128, mem[_2418], mem[_2418 + 196 len floor32(mem[_2418]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        continue 
                    require Mask(112, 0, ext_call.return_data[32])
                    if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2013):
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2423 = mem[(32 * idx) + 128]
                            _2513 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2513 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2513 + 36] = 0
                            mem[_2513 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2513 + 100] = this.address
                            mem[_2513 + 132] = 128
                            mem[_2513 + 164] = mem[_2513]
                            t = 0
                            while t < mem[_2513]:
                                mem[_2513 + t + 196] = mem[_2513 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2513] % 32:
                                require ext_code.size(address(_2423))
                                call address(_2423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2513 + 164 len mem[_2513] + 32]
                            else:
                                mem[floor32(mem[_2513]) + _2513 + 196] = mem[floor32(mem[_2513]) + _2513 + -(mem[_2513] % 32) + 228 len mem[_2513] % 32]
                                require ext_code.size(address(_2423))
                                call address(_2423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2513], mem[_2513 + 196 len floor32(mem[_2513]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2346 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2512 = mem[(32 * idx) + 128]
                            _2588 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2588 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2588 + 36] = 0
                            mem[_2588 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2588 + 100] = address(_2346)
                            mem[_2588 + 132] = 128
                            mem[_2588 + 164] = mem[_2588]
                            t = 0
                            while t < mem[_2588]:
                                mem[_2588 + t + 196] = mem[_2588 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2588] % 32:
                                require ext_code.size(address(_2512))
                                call address(_2512).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2346), 128, mem[_2588 + 164 len mem[_2588] + 32]
                            else:
                                mem[floor32(mem[_2588]) + _2588 + 196] = mem[floor32(mem[_2588]) + _2588 + -(mem[_2588] % 32) + 228 len mem[_2588] % 32]
                                require ext_code.size(address(_2512))
                                call address(_2512).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2346), 128, mem[_2588], mem[_2588 + 196 len floor32(mem[_2588]) + 32]
                    else:
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2425 = mem[(32 * idx) + 128]
                            _2515 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2515 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2515 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2515 + 68] = 0
                            mem[_2515 + 100] = this.address
                            mem[_2515 + 132] = 128
                            mem[_2515 + 164] = mem[_2515]
                            t = 0
                            while t < mem[_2515]:
                                mem[_2515 + t + 196] = mem[_2515 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2515] % 32:
                                require ext_code.size(address(_2425))
                                call address(_2425).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2515 + 164 len mem[_2515] + 32]
                            else:
                                mem[floor32(mem[_2515]) + _2515 + 196] = mem[floor32(mem[_2515]) + _2515 + -(mem[_2515] % 32) + 228 len mem[_2515] % 32]
                                require ext_code.size(address(_2425))
                                call address(_2425).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2515], mem[_2515 + 196 len floor32(mem[_2515]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2348 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2514 = mem[(32 * idx) + 128]
                            _2592 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2592 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2592 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2592 + 68] = 0
                            mem[_2592 + 100] = address(_2348)
                            mem[_2592 + 132] = 128
                            mem[_2592 + 164] = mem[_2592]
                            t = 0
                            while t < mem[_2592]:
                                mem[_2592 + t + 196] = mem[_2592 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2592] % 32:
                                require ext_code.size(address(_2514))
                                call address(_2514).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2348), 128, mem[_2592 + 164 len mem[_2592] + 32]
                            else:
                                mem[floor32(mem[_2592]) + _2592 + 196] = mem[floor32(mem[_2592]) + _2592 + -(mem[_2592] % 32) + 228 len mem[_2592] % 32]
                                require ext_code.size(address(_2514))
                                call address(_2514).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2348), 128, mem[_2592], mem[_2592 + 196 len floor32(mem[_2592]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    continue 
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2013):
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2297 = mem[(32 * idx) + 128]
                            _2351 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2351 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2351 + 36] = 0
                            mem[_2351 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2351 + 100] = this.address
                            mem[_2351 + 132] = 128
                            mem[_2351 + 164] = mem[_2351]
                            t = 0
                            while t < mem[_2351]:
                                mem[_2351 + t + 196] = mem[_2351 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2351] % 32:
                                require ext_code.size(address(_2297))
                                call address(_2297).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2351 + 164 len mem[_2351] + 32]
                            else:
                                mem[floor32(mem[_2351]) + _2351 + 196] = mem[floor32(mem[_2351]) + _2351 + -(mem[_2351] % 32) + 228 len mem[_2351] % 32]
                                require ext_code.size(address(_2297))
                                call address(_2297).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2351], mem[_2351 + 196 len floor32(mem[_2351]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2248 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2350 = mem[(32 * idx) + 128]
                            _2426 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2426 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2426 + 36] = 0
                            mem[_2426 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2426 + 100] = address(_2248)
                            mem[_2426 + 132] = 128
                            mem[_2426 + 164] = mem[_2426]
                            t = 0
                            while t < mem[_2426]:
                                mem[_2426 + t + 196] = mem[_2426 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2426] % 32:
                                require ext_code.size(address(_2350))
                                call address(_2350).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2248), 128, mem[_2426 + 164 len mem[_2426] + 32]
                            else:
                                mem[floor32(mem[_2426]) + _2426 + 196] = mem[floor32(mem[_2426]) + _2426 + -(mem[_2426] % 32) + 228 len mem[_2426] % 32]
                                require ext_code.size(address(_2350))
                                call address(_2350).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2248), 128, mem[_2426], mem[_2426 + 196 len floor32(mem[_2426]) + 32]
                    else:
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2299 = mem[(32 * idx) + 128]
                            _2353 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2353 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2353 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2353 + 68] = 0
                            mem[_2353 + 100] = this.address
                            mem[_2353 + 132] = 128
                            mem[_2353 + 164] = mem[_2353]
                            t = 0
                            while t < mem[_2353]:
                                mem[_2353 + t + 196] = mem[_2353 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2353] % 32:
                                require ext_code.size(address(_2299))
                                call address(_2299).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2353 + 164 len mem[_2353] + 32]
                            else:
                                mem[floor32(mem[_2353]) + _2353 + 196] = mem[floor32(mem[_2353]) + _2353 + -(mem[_2353] % 32) + 228 len mem[_2353] % 32]
                                require ext_code.size(address(_2299))
                                call address(_2299).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2353], mem[_2353 + 196 len floor32(mem[_2353]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2250 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2352 = mem[(32 * idx) + 128]
                            _2430 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2430 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2430 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2430 + 68] = 0
                            mem[_2430 + 100] = address(_2250)
                            mem[_2430 + 132] = 128
                            mem[_2430 + 164] = mem[_2430]
                            t = 0
                            while t < mem[_2430]:
                                mem[_2430 + t + 196] = mem[_2430 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2430] % 32:
                                require ext_code.size(address(_2352))
                                call address(_2352).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2250), 128, mem[_2430 + 164 len mem[_2430] + 32]
                            else:
                                mem[floor32(mem[_2430]) + _2430 + 196] = mem[floor32(mem[_2430]) + _2430 + -(mem[_2430] % 32) + 228 len mem[_2430] % 32]
                                require ext_code.size(address(_2352))
                                call address(_2352).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2250), 128, mem[_2430], mem[_2430 + 196 len floor32(mem[_2430]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    continue 
                require Mask(112, 0, ext_call.return_data[0])
                if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2013):
                    if idx >= mem[96] - 1:
                        require idx < mem[96]
                        _2435 = mem[(32 * idx) + 128]
                        _2523 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2523 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2523 + 36] = 0
                        mem[_2523 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2523 + 100] = this.address
                        mem[_2523 + 132] = 128
                        mem[_2523 + 164] = mem[_2523]
                        t = 0
                        while t < mem[_2523]:
                            mem[_2523 + t + 196] = mem[_2523 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2523] % 32:
                            require ext_code.size(address(_2435))
                            call address(_2435).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2523 + 164 len mem[_2523] + 32]
                        else:
                            mem[floor32(mem[_2523]) + _2523 + 196] = mem[floor32(mem[_2523]) + _2523 + -(mem[_2523] % 32) + 228 len mem[_2523] % 32]
                            require ext_code.size(address(_2435))
                            call address(_2435).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2523], mem[_2523 + 196 len floor32(mem[_2523]) + 32]
                    else:
                        require idx + 1 < mem[96]
                        _2354 = mem[(32 * idx + 1) + 128]
                        require idx < mem[96]
                        _2522 = mem[(32 * idx) + 128]
                        _2598 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2598 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2598 + 36] = 0
                        mem[_2598 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2598 + 100] = address(_2354)
                        mem[_2598 + 132] = 128
                        mem[_2598 + 164] = mem[_2598]
                        t = 0
                        while t < mem[_2598]:
                            mem[_2598 + t + 196] = mem[_2598 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2598] % 32:
                            require ext_code.size(address(_2522))
                            call address(_2522).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2354), 128, mem[_2598 + 164 len mem[_2598] + 32]
                        else:
                            mem[floor32(mem[_2598]) + _2598 + 196] = mem[floor32(mem[_2598]) + _2598 + -(mem[_2598] % 32) + 228 len mem[_2598] % 32]
                            require ext_code.size(address(_2522))
                            call address(_2522).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2354), 128, mem[_2598], mem[_2598 + 196 len floor32(mem[_2598]) + 32]
                else:
                    if idx >= mem[96] - 1:
                        require idx < mem[96]
                        _2437 = mem[(32 * idx) + 128]
                        _2525 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2525 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2525 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2525 + 68] = 0
                        mem[_2525 + 100] = this.address
                        mem[_2525 + 132] = 128
                        mem[_2525 + 164] = mem[_2525]
                        t = 0
                        while t < mem[_2525]:
                            mem[_2525 + t + 196] = mem[_2525 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2525] % 32:
                            require ext_code.size(address(_2437))
                            call address(_2437).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2525 + 164 len mem[_2525] + 32]
                        else:
                            mem[floor32(mem[_2525]) + _2525 + 196] = mem[floor32(mem[_2525]) + _2525 + -(mem[_2525] % 32) + 228 len mem[_2525] % 32]
                            require ext_code.size(address(_2437))
                            call address(_2437).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2525], mem[_2525 + 196 len floor32(mem[_2525]) + 32]
                    else:
                        require idx + 1 < mem[96]
                        _2356 = mem[(32 * idx + 1) + 128]
                        require idx < mem[96]
                        _2524 = mem[(32 * idx) + 128]
                        _2602 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2602 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2602 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2602 + 68] = 0
                        mem[_2602 + 100] = address(_2356)
                        mem[_2602 + 132] = 128
                        mem[_2602 + 164] = mem[_2602]
                        t = 0
                        while t < mem[_2602]:
                            mem[_2602 + t + 196] = mem[_2602 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2602] % 32:
                            require ext_code.size(address(_2524))
                            call address(_2524).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2356), 128, mem[_2602 + 164 len mem[_2602] + 32]
                        else:
                            mem[floor32(mem[_2602]) + _2602 + 196] = mem[floor32(mem[_2602]) + _2602 + -(mem[_2602] % 32) + 228 len mem[_2602] % 32]
                            require ext_code.size(address(_2524))
                            call address(_2524).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2356), 128, mem[_2602], mem[_2602 + 196 len floor32(mem[_2602]) + 32]
        else:
            if not mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            _2030 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx + 1 < mem[(32 * arg1.length) + 128]
            _2033 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                if not mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if address(_2030) == address(_2030):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2015):
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _2303 = mem[(32 * idx) + 128]
                                _2359 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2359 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2359 + 36] = 0
                                mem[_2359 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2359 + 100] = this.address
                                mem[_2359 + 132] = 128
                                mem[_2359 + 164] = mem[_2359]
                                t = 0
                                while t < mem[_2359]:
                                    mem[_2359 + t + 196] = mem[_2359 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2359] % 32:
                                    require ext_code.size(address(_2303))
                                    call address(_2303).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2359 + 164 len mem[_2359] + 32]
                                else:
                                    mem[floor32(mem[_2359]) + _2359 + 196] = mem[floor32(mem[_2359]) + _2359 + -(mem[_2359] % 32) + 228 len mem[_2359] % 32]
                                    require ext_code.size(address(_2303))
                                    call address(_2303).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2359], mem[_2359 + 196 len floor32(mem[_2359]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _2254 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _2358 = mem[(32 * idx) + 128]
                                _2438 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2438 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2438 + 36] = 0
                                mem[_2438 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2438 + 100] = address(_2254)
                                mem[_2438 + 132] = 128
                                mem[_2438 + 164] = mem[_2438]
                                t = 0
                                while t < mem[_2438]:
                                    mem[_2438 + t + 196] = mem[_2438 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2438] % 32:
                                    require ext_code.size(address(_2358))
                                    call address(_2358).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2254), 128, mem[_2438 + 164 len mem[_2438] + 32]
                                else:
                                    mem[floor32(mem[_2438]) + _2438 + 196] = mem[floor32(mem[_2438]) + _2438 + -(mem[_2438] % 32) + 228 len mem[_2438] % 32]
                                    require ext_code.size(address(_2358))
                                    call address(_2358).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2254), 128, mem[_2438], mem[_2438 + 196 len floor32(mem[_2438]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _2305 = mem[(32 * idx) + 128]
                                _2361 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2361 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2361 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2361 + 68] = 0
                                mem[_2361 + 100] = this.address
                                mem[_2361 + 132] = 128
                                mem[_2361 + 164] = mem[_2361]
                                t = 0
                                while t < mem[_2361]:
                                    mem[_2361 + t + 196] = mem[_2361 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2361] % 32:
                                    require ext_code.size(address(_2305))
                                    call address(_2305).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2361 + 164 len mem[_2361] + 32]
                                else:
                                    mem[floor32(mem[_2361]) + _2361 + 196] = mem[floor32(mem[_2361]) + _2361 + -(mem[_2361] % 32) + 228 len mem[_2361] % 32]
                                    require ext_code.size(address(_2305))
                                    call address(_2305).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2361], mem[_2361 + 196 len floor32(mem[_2361]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _2256 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _2360 = mem[(32 * idx) + 128]
                                _2442 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2442 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2442 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2442 + 68] = 0
                                mem[_2442 + 100] = address(_2256)
                                mem[_2442 + 132] = 128
                                mem[_2442 + 164] = mem[_2442]
                                t = 0
                                while t < mem[_2442]:
                                    mem[_2442 + t + 196] = mem[_2442 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2442] % 32:
                                    require ext_code.size(address(_2360))
                                    call address(_2360).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2256), 128, mem[_2442 + 164 len mem[_2442] + 32]
                                else:
                                    mem[floor32(mem[_2442]) + _2442 + 196] = mem[floor32(mem[_2442]) + _2442 + -(mem[_2442] % 32) + 228 len mem[_2442] % 32]
                                    require ext_code.size(address(_2360))
                                    call address(_2360).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2256), 128, mem[_2442], mem[_2442 + 196 len floor32(mem[_2442]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        continue 
                    require Mask(112, 0, ext_call.return_data[32])
                    if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2015):
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2447 = mem[(32 * idx) + 128]
                            _2533 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2533 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2533 + 36] = 0
                            mem[_2533 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2533 + 100] = this.address
                            mem[_2533 + 132] = 128
                            mem[_2533 + 164] = mem[_2533]
                            t = 0
                            while t < mem[_2533]:
                                mem[_2533 + t + 196] = mem[_2533 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2533] % 32:
                                require ext_code.size(address(_2447))
                                call address(_2447).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2533 + 164 len mem[_2533] + 32]
                            else:
                                mem[floor32(mem[_2533]) + _2533 + 196] = mem[floor32(mem[_2533]) + _2533 + -(mem[_2533] % 32) + 228 len mem[_2533] % 32]
                                require ext_code.size(address(_2447))
                                call address(_2447).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2533], mem[_2533 + 196 len floor32(mem[_2533]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2362 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2532 = mem[(32 * idx) + 128]
                            _2608 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2608 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2608 + 36] = 0
                            mem[_2608 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2608 + 100] = address(_2362)
                            mem[_2608 + 132] = 128
                            mem[_2608 + 164] = mem[_2608]
                            t = 0
                            while t < mem[_2608]:
                                mem[_2608 + t + 196] = mem[_2608 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2608] % 32:
                                require ext_code.size(address(_2532))
                                call address(_2532).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2362), 128, mem[_2608 + 164 len mem[_2608] + 32]
                            else:
                                mem[floor32(mem[_2608]) + _2608 + 196] = mem[floor32(mem[_2608]) + _2608 + -(mem[_2608] % 32) + 228 len mem[_2608] % 32]
                                require ext_code.size(address(_2532))
                                call address(_2532).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2362), 128, mem[_2608], mem[_2608 + 196 len floor32(mem[_2608]) + 32]
                    else:
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2449 = mem[(32 * idx) + 128]
                            _2535 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2535 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2535 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2535 + 68] = 0
                            mem[_2535 + 100] = this.address
                            mem[_2535 + 132] = 128
                            mem[_2535 + 164] = mem[_2535]
                            t = 0
                            while t < mem[_2535]:
                                mem[_2535 + t + 196] = mem[_2535 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2535] % 32:
                                require ext_code.size(address(_2449))
                                call address(_2449).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2535 + 164 len mem[_2535] + 32]
                            else:
                                mem[floor32(mem[_2535]) + _2535 + 196] = mem[floor32(mem[_2535]) + _2535 + -(mem[_2535] % 32) + 228 len mem[_2535] % 32]
                                require ext_code.size(address(_2449))
                                call address(_2449).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2535], mem[_2535 + 196 len floor32(mem[_2535]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2364 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2534 = mem[(32 * idx) + 128]
                            _2612 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2612 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2612 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2612 + 68] = 0
                            mem[_2612 + 100] = address(_2364)
                            mem[_2612 + 132] = 128
                            mem[_2612 + 164] = mem[_2612]
                            t = 0
                            while t < mem[_2612]:
                                mem[_2612 + t + 196] = mem[_2612 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2612] % 32:
                                require ext_code.size(address(_2534))
                                call address(_2534).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2364), 128, mem[_2612 + 164 len mem[_2612] + 32]
                            else:
                                mem[floor32(mem[_2612]) + _2612 + 196] = mem[floor32(mem[_2612]) + _2612 + -(mem[_2612] % 32) + 228 len mem[_2612] % 32]
                                require ext_code.size(address(_2534))
                                call address(_2534).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2364), 128, mem[_2612], mem[_2612 + 196 len floor32(mem[_2612]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    continue 
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2015):
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2309 = mem[(32 * idx) + 128]
                            _2367 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2367 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2367 + 36] = 0
                            mem[_2367 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2367 + 100] = this.address
                            mem[_2367 + 132] = 128
                            mem[_2367 + 164] = mem[_2367]
                            t = 0
                            while t < mem[_2367]:
                                mem[_2367 + t + 196] = mem[_2367 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2367] % 32:
                                require ext_code.size(address(_2309))
                                call address(_2309).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2367 + 164 len mem[_2367] + 32]
                            else:
                                mem[floor32(mem[_2367]) + _2367 + 196] = mem[floor32(mem[_2367]) + _2367 + -(mem[_2367] % 32) + 228 len mem[_2367] % 32]
                                require ext_code.size(address(_2309))
                                call address(_2309).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2367], mem[_2367 + 196 len floor32(mem[_2367]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2260 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2366 = mem[(32 * idx) + 128]
                            _2450 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2450 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2450 + 36] = 0
                            mem[_2450 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2450 + 100] = address(_2260)
                            mem[_2450 + 132] = 128
                            mem[_2450 + 164] = mem[_2450]
                            t = 0
                            while t < mem[_2450]:
                                mem[_2450 + t + 196] = mem[_2450 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2450] % 32:
                                require ext_code.size(address(_2366))
                                call address(_2366).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2260), 128, mem[_2450 + 164 len mem[_2450] + 32]
                            else:
                                mem[floor32(mem[_2450]) + _2450 + 196] = mem[floor32(mem[_2450]) + _2450 + -(mem[_2450] % 32) + 228 len mem[_2450] % 32]
                                require ext_code.size(address(_2366))
                                call address(_2366).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2260), 128, mem[_2450], mem[_2450 + 196 len floor32(mem[_2450]) + 32]
                    else:
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2311 = mem[(32 * idx) + 128]
                            _2369 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2369 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2369 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2369 + 68] = 0
                            mem[_2369 + 100] = this.address
                            mem[_2369 + 132] = 128
                            mem[_2369 + 164] = mem[_2369]
                            t = 0
                            while t < mem[_2369]:
                                mem[_2369 + t + 196] = mem[_2369 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2369] % 32:
                                require ext_code.size(address(_2311))
                                call address(_2311).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2369 + 164 len mem[_2369] + 32]
                            else:
                                mem[floor32(mem[_2369]) + _2369 + 196] = mem[floor32(mem[_2369]) + _2369 + -(mem[_2369] % 32) + 228 len mem[_2369] % 32]
                                require ext_code.size(address(_2311))
                                call address(_2311).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2369], mem[_2369 + 196 len floor32(mem[_2369]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2262 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2368 = mem[(32 * idx) + 128]
                            _2454 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2454 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2454 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2454 + 68] = 0
                            mem[_2454 + 100] = address(_2262)
                            mem[_2454 + 132] = 128
                            mem[_2454 + 164] = mem[_2454]
                            t = 0
                            while t < mem[_2454]:
                                mem[_2454 + t + 196] = mem[_2454 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2454] % 32:
                                require ext_code.size(address(_2368))
                                call address(_2368).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2262), 128, mem[_2454 + 164 len mem[_2454] + 32]
                            else:
                                mem[floor32(mem[_2454]) + _2454 + 196] = mem[floor32(mem[_2454]) + _2454 + -(mem[_2454] % 32) + 228 len mem[_2454] % 32]
                                require ext_code.size(address(_2368))
                                call address(_2368).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2262), 128, mem[_2454], mem[_2454 + 196 len floor32(mem[_2454]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    continue 
                require Mask(112, 0, ext_call.return_data[0])
                if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2015):
                    if idx >= mem[96] - 1:
                        require idx < mem[96]
                        _2459 = mem[(32 * idx) + 128]
                        _2543 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2543 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2543 + 36] = 0
                        mem[_2543 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2543 + 100] = this.address
                        mem[_2543 + 132] = 128
                        mem[_2543 + 164] = mem[_2543]
                        t = 0
                        while t < mem[_2543]:
                            mem[_2543 + t + 196] = mem[_2543 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2543] % 32:
                            require ext_code.size(address(_2459))
                            call address(_2459).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2543 + 164 len mem[_2543] + 32]
                        else:
                            mem[floor32(mem[_2543]) + _2543 + 196] = mem[floor32(mem[_2543]) + _2543 + -(mem[_2543] % 32) + 228 len mem[_2543] % 32]
                            require ext_code.size(address(_2459))
                            call address(_2459).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2543], mem[_2543 + 196 len floor32(mem[_2543]) + 32]
                    else:
                        require idx + 1 < mem[96]
                        _2370 = mem[(32 * idx + 1) + 128]
                        require idx < mem[96]
                        _2542 = mem[(32 * idx) + 128]
                        _2618 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2618 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2618 + 36] = 0
                        mem[_2618 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2618 + 100] = address(_2370)
                        mem[_2618 + 132] = 128
                        mem[_2618 + 164] = mem[_2618]
                        t = 0
                        while t < mem[_2618]:
                            mem[_2618 + t + 196] = mem[_2618 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2618] % 32:
                            require ext_code.size(address(_2542))
                            call address(_2542).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2370), 128, mem[_2618 + 164 len mem[_2618] + 32]
                        else:
                            mem[floor32(mem[_2618]) + _2618 + 196] = mem[floor32(mem[_2618]) + _2618 + -(mem[_2618] % 32) + 228 len mem[_2618] % 32]
                            require ext_code.size(address(_2542))
                            call address(_2542).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2370), 128, mem[_2618], mem[_2618 + 196 len floor32(mem[_2618]) + 32]
                else:
                    if idx >= mem[96] - 1:
                        require idx < mem[96]
                        _2461 = mem[(32 * idx) + 128]
                        _2545 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2545 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2545 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2545 + 68] = 0
                        mem[_2545 + 100] = this.address
                        mem[_2545 + 132] = 128
                        mem[_2545 + 164] = mem[_2545]
                        t = 0
                        while t < mem[_2545]:
                            mem[_2545 + t + 196] = mem[_2545 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2545] % 32:
                            require ext_code.size(address(_2461))
                            call address(_2461).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2545 + 164 len mem[_2545] + 32]
                        else:
                            mem[floor32(mem[_2545]) + _2545 + 196] = mem[floor32(mem[_2545]) + _2545 + -(mem[_2545] % 32) + 228 len mem[_2545] % 32]
                            require ext_code.size(address(_2461))
                            call address(_2461).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2545], mem[_2545 + 196 len floor32(mem[_2545]) + 32]
                    else:
                        require idx + 1 < mem[96]
                        _2372 = mem[(32 * idx + 1) + 128]
                        require idx < mem[96]
                        _2544 = mem[(32 * idx) + 128]
                        _2622 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2622 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2622 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2622 + 68] = 0
                        mem[_2622 + 100] = address(_2372)
                        mem[_2622 + 132] = 128
                        mem[_2622 + 164] = mem[_2622]
                        t = 0
                        while t < mem[_2622]:
                            mem[_2622 + t + 196] = mem[_2622 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2622] % 32:
                            require ext_code.size(address(_2544))
                            call address(_2544).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2372), 128, mem[_2622 + 164 len mem[_2622] + 32]
                        else:
                            mem[floor32(mem[_2622]) + _2622 + 196] = mem[floor32(mem[_2622]) + _2622 + -(mem[_2622] % 32) + 228 len mem[_2622] % 32]
                            require ext_code.size(address(_2544))
                            call address(_2544).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2372), 128, mem[_2622], mem[_2622 + 196 len floor32(mem[_2622]) + 32]
            else:
                if not mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if address(_2030) == address(_2033):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2015):
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _2315 = mem[(32 * idx) + 128]
                                _2375 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2375 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2375 + 36] = 0
                                mem[_2375 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2375 + 100] = this.address
                                mem[_2375 + 132] = 128
                                mem[_2375 + 164] = mem[_2375]
                                t = 0
                                while t < mem[_2375]:
                                    mem[_2375 + t + 196] = mem[_2375 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2375] % 32:
                                    require ext_code.size(address(_2315))
                                    call address(_2315).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2375 + 164 len mem[_2375] + 32]
                                else:
                                    mem[floor32(mem[_2375]) + _2375 + 196] = mem[floor32(mem[_2375]) + _2375 + -(mem[_2375] % 32) + 228 len mem[_2375] % 32]
                                    require ext_code.size(address(_2315))
                                    call address(_2315).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2375], mem[_2375 + 196 len floor32(mem[_2375]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _2266 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _2374 = mem[(32 * idx) + 128]
                                _2462 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2462 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2462 + 36] = 0
                                mem[_2462 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2462 + 100] = address(_2266)
                                mem[_2462 + 132] = 128
                                mem[_2462 + 164] = mem[_2462]
                                t = 0
                                while t < mem[_2462]:
                                    mem[_2462 + t + 196] = mem[_2462 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2462] % 32:
                                    require ext_code.size(address(_2374))
                                    call address(_2374).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2266), 128, mem[_2462 + 164 len mem[_2462] + 32]
                                else:
                                    mem[floor32(mem[_2462]) + _2462 + 196] = mem[floor32(mem[_2462]) + _2462 + -(mem[_2462] % 32) + 228 len mem[_2462] % 32]
                                    require ext_code.size(address(_2374))
                                    call address(_2374).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2266), 128, mem[_2462], mem[_2462 + 196 len floor32(mem[_2462]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _2317 = mem[(32 * idx) + 128]
                                _2377 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2377 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2377 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2377 + 68] = 0
                                mem[_2377 + 100] = this.address
                                mem[_2377 + 132] = 128
                                mem[_2377 + 164] = mem[_2377]
                                t = 0
                                while t < mem[_2377]:
                                    mem[_2377 + t + 196] = mem[_2377 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2377] % 32:
                                    require ext_code.size(address(_2317))
                                    call address(_2317).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2377 + 164 len mem[_2377] + 32]
                                else:
                                    mem[floor32(mem[_2377]) + _2377 + 196] = mem[floor32(mem[_2377]) + _2377 + -(mem[_2377] % 32) + 228 len mem[_2377] % 32]
                                    require ext_code.size(address(_2317))
                                    call address(_2317).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2377], mem[_2377 + 196 len floor32(mem[_2377]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _2268 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _2376 = mem[(32 * idx) + 128]
                                _2466 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2466 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2466 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_2466 + 68] = 0
                                mem[_2466 + 100] = address(_2268)
                                mem[_2466 + 132] = 128
                                mem[_2466 + 164] = mem[_2466]
                                t = 0
                                while t < mem[_2466]:
                                    mem[_2466 + t + 196] = mem[_2466 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_2466] % 32:
                                    require ext_code.size(address(_2376))
                                    call address(_2376).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2268), 128, mem[_2466 + 164 len mem[_2466] + 32]
                                else:
                                    mem[floor32(mem[_2466]) + _2466 + 196] = mem[floor32(mem[_2466]) + _2466 + -(mem[_2466] % 32) + 228 len mem[_2466] % 32]
                                    require ext_code.size(address(_2376))
                                    call address(_2376).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2268), 128, mem[_2466], mem[_2466 + 196 len floor32(mem[_2466]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        continue 
                    require Mask(112, 0, ext_call.return_data[32])
                    if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2015):
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2471 = mem[(32 * idx) + 128]
                            _2553 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2553 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2553 + 36] = 0
                            mem[_2553 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2553 + 100] = this.address
                            mem[_2553 + 132] = 128
                            mem[_2553 + 164] = mem[_2553]
                            t = 0
                            while t < mem[_2553]:
                                mem[_2553 + t + 196] = mem[_2553 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2553] % 32:
                                require ext_code.size(address(_2471))
                                call address(_2471).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2553 + 164 len mem[_2553] + 32]
                            else:
                                mem[floor32(mem[_2553]) + _2553 + 196] = mem[floor32(mem[_2553]) + _2553 + -(mem[_2553] % 32) + 228 len mem[_2553] % 32]
                                require ext_code.size(address(_2471))
                                call address(_2471).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2553], mem[_2553 + 196 len floor32(mem[_2553]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2378 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2552 = mem[(32 * idx) + 128]
                            _2628 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2628 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2628 + 36] = 0
                            mem[_2628 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2628 + 100] = address(_2378)
                            mem[_2628 + 132] = 128
                            mem[_2628 + 164] = mem[_2628]
                            t = 0
                            while t < mem[_2628]:
                                mem[_2628 + t + 196] = mem[_2628 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2628] % 32:
                                require ext_code.size(address(_2552))
                                call address(_2552).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2378), 128, mem[_2628 + 164 len mem[_2628] + 32]
                            else:
                                mem[floor32(mem[_2628]) + _2628 + 196] = mem[floor32(mem[_2628]) + _2628 + -(mem[_2628] % 32) + 228 len mem[_2628] % 32]
                                require ext_code.size(address(_2552))
                                call address(_2552).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2378), 128, mem[_2628], mem[_2628 + 196 len floor32(mem[_2628]) + 32]
                    else:
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2473 = mem[(32 * idx) + 128]
                            _2555 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2555 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2555 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2555 + 68] = 0
                            mem[_2555 + 100] = this.address
                            mem[_2555 + 132] = 128
                            mem[_2555 + 164] = mem[_2555]
                            t = 0
                            while t < mem[_2555]:
                                mem[_2555 + t + 196] = mem[_2555 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2555] % 32:
                                require ext_code.size(address(_2473))
                                call address(_2473).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2555 + 164 len mem[_2555] + 32]
                            else:
                                mem[floor32(mem[_2555]) + _2555 + 196] = mem[floor32(mem[_2555]) + _2555 + -(mem[_2555] % 32) + 228 len mem[_2555] % 32]
                                require ext_code.size(address(_2473))
                                call address(_2473).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2555], mem[_2555 + 196 len floor32(mem[_2555]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2380 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2554 = mem[(32 * idx) + 128]
                            _2632 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2632 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2632 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2632 + 68] = 0
                            mem[_2632 + 100] = address(_2380)
                            mem[_2632 + 132] = 128
                            mem[_2632 + 164] = mem[_2632]
                            t = 0
                            while t < mem[_2632]:
                                mem[_2632 + t + 196] = mem[_2632 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2632] % 32:
                                require ext_code.size(address(_2554))
                                call address(_2554).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2380), 128, mem[_2632 + 164 len mem[_2632] + 32]
                            else:
                                mem[floor32(mem[_2632]) + _2632 + 196] = mem[floor32(mem[_2632]) + _2632 + -(mem[_2632] % 32) + 228 len mem[_2632] % 32]
                                require ext_code.size(address(_2554))
                                call address(_2554).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2380), 128, mem[_2632], mem[_2632 + 196 len floor32(mem[_2632]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    continue 
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2015):
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2321 = mem[(32 * idx) + 128]
                            _2383 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2383 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2383 + 36] = 0
                            mem[_2383 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2383 + 100] = this.address
                            mem[_2383 + 132] = 128
                            mem[_2383 + 164] = mem[_2383]
                            t = 0
                            while t < mem[_2383]:
                                mem[_2383 + t + 196] = mem[_2383 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2383] % 32:
                                require ext_code.size(address(_2321))
                                call address(_2321).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2383 + 164 len mem[_2383] + 32]
                            else:
                                mem[floor32(mem[_2383]) + _2383 + 196] = mem[floor32(mem[_2383]) + _2383 + -(mem[_2383] % 32) + 228 len mem[_2383] % 32]
                                require ext_code.size(address(_2321))
                                call address(_2321).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2383], mem[_2383 + 196 len floor32(mem[_2383]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2272 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2382 = mem[(32 * idx) + 128]
                            _2474 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2474 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2474 + 36] = 0
                            mem[_2474 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2474 + 100] = address(_2272)
                            mem[_2474 + 132] = 128
                            mem[_2474 + 164] = mem[_2474]
                            t = 0
                            while t < mem[_2474]:
                                mem[_2474 + t + 196] = mem[_2474 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2474] % 32:
                                require ext_code.size(address(_2382))
                                call address(_2382).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2272), 128, mem[_2474 + 164 len mem[_2474] + 32]
                            else:
                                mem[floor32(mem[_2474]) + _2474 + 196] = mem[floor32(mem[_2474]) + _2474 + -(mem[_2474] % 32) + 228 len mem[_2474] % 32]
                                require ext_code.size(address(_2382))
                                call address(_2382).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2272), 128, mem[_2474], mem[_2474 + 196 len floor32(mem[_2474]) + 32]
                    else:
                        if idx >= mem[96] - 1:
                            require idx < mem[96]
                            _2323 = mem[(32 * idx) + 128]
                            _2385 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2385 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2385 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2385 + 68] = 0
                            mem[_2385 + 100] = this.address
                            mem[_2385 + 132] = 128
                            mem[_2385 + 164] = mem[_2385]
                            t = 0
                            while t < mem[_2385]:
                                mem[_2385 + t + 196] = mem[_2385 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2385] % 32:
                                require ext_code.size(address(_2323))
                                call address(_2323).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2385 + 164 len mem[_2385] + 32]
                            else:
                                mem[floor32(mem[_2385]) + _2385 + 196] = mem[floor32(mem[_2385]) + _2385 + -(mem[_2385] % 32) + 228 len mem[_2385] % 32]
                                require ext_code.size(address(_2323))
                                call address(_2323).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2385], mem[_2385 + 196 len floor32(mem[_2385]) + 32]
                        else:
                            require idx + 1 < mem[96]
                            _2274 = mem[(32 * idx + 1) + 128]
                            require idx < mem[96]
                            _2384 = mem[(32 * idx) + 128]
                            _2478 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2478 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2478 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_2478 + 68] = 0
                            mem[_2478 + 100] = address(_2274)
                            mem[_2478 + 132] = 128
                            mem[_2478 + 164] = mem[_2478]
                            t = 0
                            while t < mem[_2478]:
                                mem[_2478 + t + 196] = mem[_2478 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2478] % 32:
                                require ext_code.size(address(_2384))
                                call address(_2384).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2274), 128, mem[_2478 + 164 len mem[_2478] + 32]
                            else:
                                mem[floor32(mem[_2478]) + _2478 + 196] = mem[floor32(mem[_2478]) + _2478 + -(mem[_2478] % 32) + 228 len mem[_2478] % 32]
                                require ext_code.size(address(_2384))
                                call address(_2384).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2274), 128, mem[_2478], mem[_2478 + 196 len floor32(mem[_2478]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    continue 
                require Mask(112, 0, ext_call.return_data[0])
                if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2015):
                    if idx >= mem[96] - 1:
                        require idx < mem[96]
                        _2483 = mem[(32 * idx) + 128]
                        _2563 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2563 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2563 + 36] = 0
                        mem[_2563 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2563 + 100] = this.address
                        mem[_2563 + 132] = 128
                        mem[_2563 + 164] = mem[_2563]
                        t = 0
                        while t < mem[_2563]:
                            mem[_2563 + t + 196] = mem[_2563 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2563] % 32:
                            require ext_code.size(address(_2483))
                            call address(_2483).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2563 + 164 len mem[_2563] + 32]
                        else:
                            mem[floor32(mem[_2563]) + _2563 + 196] = mem[floor32(mem[_2563]) + _2563 + -(mem[_2563] % 32) + 228 len mem[_2563] % 32]
                            require ext_code.size(address(_2483))
                            call address(_2483).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2563], mem[_2563 + 196 len floor32(mem[_2563]) + 32]
                    else:
                        require idx + 1 < mem[96]
                        _2386 = mem[(32 * idx + 1) + 128]
                        require idx < mem[96]
                        _2562 = mem[(32 * idx) + 128]
                        _2638 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2638 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2638 + 36] = 0
                        mem[_2638 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2638 + 100] = address(_2386)
                        mem[_2638 + 132] = 128
                        mem[_2638 + 164] = mem[_2638]
                        t = 0
                        while t < mem[_2638]:
                            mem[_2638 + t + 196] = mem[_2638 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2638] % 32:
                            require ext_code.size(address(_2562))
                            call address(_2562).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2386), 128, mem[_2638 + 164 len mem[_2638] + 32]
                        else:
                            mem[floor32(mem[_2638]) + _2638 + 196] = mem[floor32(mem[_2638]) + _2638 + -(mem[_2638] % 32) + 228 len mem[_2638] % 32]
                            require ext_code.size(address(_2562))
                            call address(_2562).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2386), 128, mem[_2638], mem[_2638 + 196 len floor32(mem[_2638]) + 32]
                else:
                    if idx >= mem[96] - 1:
                        require idx < mem[96]
                        _2485 = mem[(32 * idx) + 128]
                        _2565 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2565 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2565 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2565 + 68] = 0
                        mem[_2565 + 100] = this.address
                        mem[_2565 + 132] = 128
                        mem[_2565 + 164] = mem[_2565]
                        t = 0
                        while t < mem[_2565]:
                            mem[_2565 + t + 196] = mem[_2565 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2565] % 32:
                            require ext_code.size(address(_2485))
                            call address(_2485).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2565 + 164 len mem[_2565] + 32]
                        else:
                            mem[floor32(mem[_2565]) + _2565 + 196] = mem[floor32(mem[_2565]) + _2565 + -(mem[_2565] % 32) + 228 len mem[_2565] % 32]
                            require ext_code.size(address(_2485))
                            call address(_2485).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2565], mem[_2565 + 196 len floor32(mem[_2565]) + 32]
                    else:
                        require idx + 1 < mem[96]
                        _2388 = mem[(32 * idx + 1) + 128]
                        require idx < mem[96]
                        _2564 = mem[(32 * idx) + 128]
                        _2642 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2642 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2642 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2642 + 68] = 0
                        mem[_2642 + 100] = address(_2388)
                        mem[_2642 + 132] = 128
                        mem[_2642 + 164] = mem[_2642]
                        t = 0
                        while t < mem[_2642]:
                            mem[_2642 + t + 196] = mem[_2642 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2642] % 32:
                            require ext_code.size(address(_2564))
                            call address(_2564).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2388), 128, mem[_2642 + 164 len mem[_2642] + 32]
                        else:
                            mem[floor32(mem[_2642]) + _2642 + 196] = mem[floor32(mem[_2642]) + _2642 + -(mem[_2642] % 32) + 228 len mem[_2642] % 32]
                            require ext_code.size(address(_2564))
                            call address(_2564).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2388), 128, mem[_2642], mem[_2642 + 196 len floor32(mem[_2642]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        continue 
    require msg.sender == stor0
}



}
