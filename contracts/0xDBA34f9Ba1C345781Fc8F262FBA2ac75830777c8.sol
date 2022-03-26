contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function executeWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!o'
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a33a22e6(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!o'
    require ext_code.size(arg2)
    call arg2.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_5bf1b075(?) {
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
    if stor0 != msg.sender:
        revert with 0, '!o'
    idx = 0
    s = arg3
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg1.length
        _1014 = mem[(32 * idx) + 128]
        require idx + 1 < arg1.length
        _1018 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 
                        32,
                        37,
                        0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 265 len 27]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if 997 * s / 997 != s:
                revert with 0, 'ds-math-mul-overflow'
            if address(_1014) == address(_1014):
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
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if 997 * s / 997 != s:
                revert with 0, 'ds-math-mul-overflow'
            if address(_1014) == address(_1018):
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
    require 0 < arg1.length
    require 0 < arg2.length
    _1019 = mem[(32 * arg1.length) + 160]
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * arg1.length) + 172 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = arg3
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(_1019), arg3
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = arg3
    while idx < arg2.length:
        require idx < mem[96]
        _2015 = mem[(32 * idx) + 128]
        require idx + 1 < mem[96]
        _2017 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
        else:
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                else:
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[96]
                    _2030 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _2034 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    else:
                        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            else:
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if address(_2030) == address(_2030):
                                        if 997 * s / 997 != s:
                                            revert with 0, 'ds-math-mul-overflow'
                                        else:
                                            if not Mask(112, 0, ext_call.return_data[32]):
                                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                        revert with 0, 'ds-math-add-overflow'
                                                    else:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                        require idx < mem[96]
                                                        if mem[(32 * idx) + 140 len 20] == address(_2015):
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2232 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2344 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2345 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2345 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2345 + 36] = 0
                                                                mem[_2345 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2345 + 100] = address(_2232)
                                                                mem[_2345 + 132] = 128
                                                                mem[_2345 + 164] = mem[_2345]
                                                                t = 0
                                                                while t < mem[_2345]:
                                                                    mem[_2345 + t + 196] = mem[_2345 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2345] % 32:
                                                                    require ext_code.size(address(_2344))
                                                                    call address(_2344).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2232), 128, mem[_2345 + 164 len mem[_2345] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2345]) + _2345 + 196] = mem[floor32(mem[_2345]) + _2345 + -(mem[_2345] % 32) + 228 len mem[_2345] % 32]
                                                                    require ext_code.size(address(_2344))
                                                                    call address(_2344).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2232), 128, mem[_2345], mem[_2345 + 196 len floor32(mem[_2345]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2281 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2282 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2282 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2282 + 36] = 0
                                                                mem[_2282 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2282 + 100] = this.address
                                                                mem[_2282 + 132] = 128
                                                                mem[_2282 + 164] = mem[_2282]
                                                                t = 0
                                                                while t < mem[_2282]:
                                                                    mem[_2282 + t + 196] = mem[_2282 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2282] % 32:
                                                                    require ext_code.size(address(_2281))
                                                                    call address(_2281).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2282 + 164 len mem[_2282] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2282]) + _2282 + 196] = mem[floor32(mem[_2282]) + _2282 + -(mem[_2282] % 32) + 228 len mem[_2282] % 32]
                                                                    require ext_code.size(address(_2281))
                                                                    call address(_2281).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2282], mem[_2282 + 196 len floor32(mem[_2282]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2234 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2349 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2350 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2350 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2350 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2350 + 68] = 0
                                                                mem[_2350 + 100] = address(_2234)
                                                                mem[_2350 + 132] = 128
                                                                mem[_2350 + 164] = mem[_2350]
                                                                t = 0
                                                                while t < mem[_2350]:
                                                                    mem[_2350 + t + 196] = mem[_2350 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2350] % 32:
                                                                    require ext_code.size(address(_2349))
                                                                    call address(_2349).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2234), 128, mem[_2350 + 164 len mem[_2350] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2350]) + _2350 + 196] = mem[floor32(mem[_2350]) + _2350 + -(mem[_2350] % 32) + 228 len mem[_2350] % 32]
                                                                    require ext_code.size(address(_2349))
                                                                    call address(_2349).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2234), 128, mem[_2350], mem[_2350 + 196 len floor32(mem[_2350]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2284 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2285 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2285 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2285 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2285 + 68] = 0
                                                                mem[_2285 + 100] = this.address
                                                                mem[_2285 + 132] = 128
                                                                mem[_2285 + 164] = mem[_2285]
                                                                t = 0
                                                                while t < mem[_2285]:
                                                                    mem[_2285 + t + 196] = mem[_2285 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2285] % 32:
                                                                    require ext_code.size(address(_2284))
                                                                    call address(_2284).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2285 + 164 len mem[_2285] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2285]) + _2285 + 196] = mem[floor32(mem[_2285]) + _2285 + -(mem[_2285] % 32) + 228 len mem[_2285] % 32]
                                                                    require ext_code.size(address(_2284))
                                                                    call address(_2284).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2285], mem[_2285 + 196 len floor32(mem[_2285]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                            else:
                                                require Mask(112, 0, ext_call.return_data[32])
                                                if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    else:
                                                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                            revert with 0, 'ds-math-add-overflow'
                                                        else:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                            require idx < mem[96]
                                                            if mem[(32 * idx) + 140 len 20] == address(_2015):
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2354 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2554 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2555 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2555 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2555 + 36] = 0
                                                                    mem[_2555 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2555 + 100] = address(_2354)
                                                                    mem[_2555 + 132] = 128
                                                                    mem[_2555 + 164] = mem[_2555]
                                                                    t = 0
                                                                    while t < mem[_2555]:
                                                                        mem[_2555 + t + 196] = mem[_2555 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2555] % 32:
                                                                        require ext_code.size(address(_2554))
                                                                        call address(_2554).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2354), 128, mem[_2555 + 164 len mem[_2555] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2555]) + _2555 + 196] = mem[floor32(mem[_2555]) + _2555 + -(mem[_2555] % 32) + 228 len mem[_2555] % 32]
                                                                        require ext_code.size(address(_2554))
                                                                        call address(_2554).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2354), 128, mem[_2555], mem[_2555 + 196 len floor32(mem[_2555]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2463 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2464 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2464 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2464 + 36] = 0
                                                                    mem[_2464 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2464 + 100] = this.address
                                                                    mem[_2464 + 132] = 128
                                                                    mem[_2464 + 164] = mem[_2464]
                                                                    t = 0
                                                                    while t < mem[_2464]:
                                                                        mem[_2464 + t + 196] = mem[_2464 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2464] % 32:
                                                                        require ext_code.size(address(_2463))
                                                                        call address(_2463).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2464 + 164 len mem[_2464] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2464]) + _2464 + 196] = mem[floor32(mem[_2464]) + _2464 + -(mem[_2464] % 32) + 228 len mem[_2464] % 32]
                                                                        require ext_code.size(address(_2463))
                                                                        call address(_2463).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2464], mem[_2464 + 196 len floor32(mem[_2464]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2356 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2559 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2560 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2560 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2560 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2560 + 68] = 0
                                                                    mem[_2560 + 100] = address(_2356)
                                                                    mem[_2560 + 132] = 128
                                                                    mem[_2560 + 164] = mem[_2560]
                                                                    t = 0
                                                                    while t < mem[_2560]:
                                                                        mem[_2560 + t + 196] = mem[_2560 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2560] % 32:
                                                                        require ext_code.size(address(_2559))
                                                                        call address(_2559).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2356), 128, mem[_2560 + 164 len mem[_2560] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2560]) + _2560 + 196] = mem[floor32(mem[_2560]) + _2560 + -(mem[_2560] % 32) + 228 len mem[_2560] % 32]
                                                                        require ext_code.size(address(_2559))
                                                                        call address(_2559).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2356), 128, mem[_2560], mem[_2560 + 196 len floor32(mem[_2560]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2466 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2467 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2467 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2467 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2467 + 68] = 0
                                                                    mem[_2467 + 100] = this.address
                                                                    mem[_2467 + 132] = 128
                                                                    mem[_2467 + 164] = mem[_2467]
                                                                    t = 0
                                                                    while t < mem[_2467]:
                                                                        mem[_2467 + t + 196] = mem[_2467 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2467] % 32:
                                                                        require ext_code.size(address(_2466))
                                                                        call address(_2466).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2467 + 164 len mem[_2467] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2467]) + _2467 + 196] = mem[floor32(mem[_2467]) + _2467 + -(mem[_2467] % 32) + 228 len mem[_2467] % 32]
                                                                        require ext_code.size(address(_2466))
                                                                        call address(_2466).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2467], mem[_2467 + 196 len floor32(mem[_2467]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                    else:
                                        if 997 * s / 997 != s:
                                            revert with 0, 'ds-math-mul-overflow'
                                        else:
                                            if not Mask(112, 0, ext_call.return_data[0]):
                                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                        revert with 0, 'ds-math-add-overflow'
                                                    else:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                        require idx < mem[96]
                                                        if mem[(32 * idx) + 140 len 20] == address(_2015):
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2238 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2358 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2359 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2359 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2359 + 36] = 0
                                                                mem[_2359 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2359 + 100] = address(_2238)
                                                                mem[_2359 + 132] = 128
                                                                mem[_2359 + 164] = mem[_2359]
                                                                t = 0
                                                                while t < mem[_2359]:
                                                                    mem[_2359 + t + 196] = mem[_2359 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2359] % 32:
                                                                    require ext_code.size(address(_2358))
                                                                    call address(_2358).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2238), 128, mem[_2359 + 164 len mem[_2359] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2359]) + _2359 + 196] = mem[floor32(mem[_2359]) + _2359 + -(mem[_2359] % 32) + 228 len mem[_2359] % 32]
                                                                    require ext_code.size(address(_2358))
                                                                    call address(_2358).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2238), 128, mem[_2359], mem[_2359 + 196 len floor32(mem[_2359]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2289 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2290 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2290 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2290 + 36] = 0
                                                                mem[_2290 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2290 + 100] = this.address
                                                                mem[_2290 + 132] = 128
                                                                mem[_2290 + 164] = mem[_2290]
                                                                t = 0
                                                                while t < mem[_2290]:
                                                                    mem[_2290 + t + 196] = mem[_2290 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2290] % 32:
                                                                    require ext_code.size(address(_2289))
                                                                    call address(_2289).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2290 + 164 len mem[_2290] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2290]) + _2290 + 196] = mem[floor32(mem[_2290]) + _2290 + -(mem[_2290] % 32) + 228 len mem[_2290] % 32]
                                                                    require ext_code.size(address(_2289))
                                                                    call address(_2289).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2290], mem[_2290 + 196 len floor32(mem[_2290]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2240 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2363 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2364 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2364 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2364 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2364 + 68] = 0
                                                                mem[_2364 + 100] = address(_2240)
                                                                mem[_2364 + 132] = 128
                                                                mem[_2364 + 164] = mem[_2364]
                                                                t = 0
                                                                while t < mem[_2364]:
                                                                    mem[_2364 + t + 196] = mem[_2364 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2364] % 32:
                                                                    require ext_code.size(address(_2363))
                                                                    call address(_2363).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2240), 128, mem[_2364 + 164 len mem[_2364] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2364]) + _2364 + 196] = mem[floor32(mem[_2364]) + _2364 + -(mem[_2364] % 32) + 228 len mem[_2364] % 32]
                                                                    require ext_code.size(address(_2363))
                                                                    call address(_2363).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2240), 128, mem[_2364], mem[_2364 + 196 len floor32(mem[_2364]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2292 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2293 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2293 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2293 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2293 + 68] = 0
                                                                mem[_2293 + 100] = this.address
                                                                mem[_2293 + 132] = 128
                                                                mem[_2293 + 164] = mem[_2293]
                                                                t = 0
                                                                while t < mem[_2293]:
                                                                    mem[_2293 + t + 196] = mem[_2293 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2293] % 32:
                                                                    require ext_code.size(address(_2292))
                                                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2293 + 164 len mem[_2293] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2293]) + _2293 + 196] = mem[floor32(mem[_2293]) + _2293 + -(mem[_2293] % 32) + 228 len mem[_2293] % 32]
                                                                    require ext_code.size(address(_2292))
                                                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2293], mem[_2293 + 196 len floor32(mem[_2293]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                            else:
                                                require Mask(112, 0, ext_call.return_data[0])
                                                if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    else:
                                                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                            revert with 0, 'ds-math-add-overflow'
                                                        else:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                            require idx < mem[96]
                                                            if mem[(32 * idx) + 140 len 20] == address(_2015):
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2368 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2566 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2567 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2567 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2567 + 36] = 0
                                                                    mem[_2567 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2567 + 100] = address(_2368)
                                                                    mem[_2567 + 132] = 128
                                                                    mem[_2567 + 164] = mem[_2567]
                                                                    t = 0
                                                                    while t < mem[_2567]:
                                                                        mem[_2567 + t + 196] = mem[_2567 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2567] % 32:
                                                                        require ext_code.size(address(_2566))
                                                                        call address(_2566).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2368), 128, mem[_2567 + 164 len mem[_2567] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2567]) + _2567 + 196] = mem[floor32(mem[_2567]) + _2567 + -(mem[_2567] % 32) + 228 len mem[_2567] % 32]
                                                                        require ext_code.size(address(_2566))
                                                                        call address(_2566).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2368), 128, mem[_2567], mem[_2567 + 196 len floor32(mem[_2567]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2475 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2476 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2476 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2476 + 36] = 0
                                                                    mem[_2476 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2476 + 100] = this.address
                                                                    mem[_2476 + 132] = 128
                                                                    mem[_2476 + 164] = mem[_2476]
                                                                    t = 0
                                                                    while t < mem[_2476]:
                                                                        mem[_2476 + t + 196] = mem[_2476 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2476] % 32:
                                                                        require ext_code.size(address(_2475))
                                                                        call address(_2475).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2476 + 164 len mem[_2476] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2476]) + _2476 + 196] = mem[floor32(mem[_2476]) + _2476 + -(mem[_2476] % 32) + 228 len mem[_2476] % 32]
                                                                        require ext_code.size(address(_2475))
                                                                        call address(_2475).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2476], mem[_2476 + 196 len floor32(mem[_2476]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2370 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2571 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2572 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2572 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2572 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2572 + 68] = 0
                                                                    mem[_2572 + 100] = address(_2370)
                                                                    mem[_2572 + 132] = 128
                                                                    mem[_2572 + 164] = mem[_2572]
                                                                    t = 0
                                                                    while t < mem[_2572]:
                                                                        mem[_2572 + t + 196] = mem[_2572 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2572] % 32:
                                                                        require ext_code.size(address(_2571))
                                                                        call address(_2571).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2370), 128, mem[_2572 + 164 len mem[_2572] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2572]) + _2572 + 196] = mem[floor32(mem[_2572]) + _2572 + -(mem[_2572] % 32) + 228 len mem[_2572] % 32]
                                                                        require ext_code.size(address(_2571))
                                                                        call address(_2571).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2370), 128, mem[_2572], mem[_2572 + 196 len floor32(mem[_2572]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2478 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2479 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2479 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2479 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2479 + 68] = 0
                                                                    mem[_2479 + 100] = this.address
                                                                    mem[_2479 + 132] = 128
                                                                    mem[_2479 + 164] = mem[_2479]
                                                                    t = 0
                                                                    while t < mem[_2479]:
                                                                        mem[_2479 + t + 196] = mem[_2479 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2479] % 32:
                                                                        require ext_code.size(address(_2478))
                                                                        call address(_2478).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2479 + 164 len mem[_2479] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2479]) + _2479 + 196] = mem[floor32(mem[_2479]) + _2479 + -(mem[_2479] % 32) + 228 len mem[_2479] % 32]
                                                                        require ext_code.size(address(_2478))
                                                                        call address(_2478).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2479], mem[_2479 + 196 len floor32(mem[_2479]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                        else:
                            if not mem[(32 * idx + 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            else:
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if address(_2030) == address(_2034):
                                        if 997 * s / 997 != s:
                                            revert with 0, 'ds-math-mul-overflow'
                                        else:
                                            if not Mask(112, 0, ext_call.return_data[32]):
                                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                        revert with 0, 'ds-math-add-overflow'
                                                    else:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                        require idx < mem[96]
                                                        if mem[(32 * idx) + 140 len 20] == address(_2015):
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2244 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2372 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2373 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2373 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2373 + 36] = 0
                                                                mem[_2373 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2373 + 100] = address(_2244)
                                                                mem[_2373 + 132] = 128
                                                                mem[_2373 + 164] = mem[_2373]
                                                                t = 0
                                                                while t < mem[_2373]:
                                                                    mem[_2373 + t + 196] = mem[_2373 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2373] % 32:
                                                                    require ext_code.size(address(_2372))
                                                                    call address(_2372).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2244), 128, mem[_2373 + 164 len mem[_2373] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2373]) + _2373 + 196] = mem[floor32(mem[_2373]) + _2373 + -(mem[_2373] % 32) + 228 len mem[_2373] % 32]
                                                                    require ext_code.size(address(_2372))
                                                                    call address(_2372).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2244), 128, mem[_2373], mem[_2373 + 196 len floor32(mem[_2373]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2297 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2298 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2298 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2298 + 36] = 0
                                                                mem[_2298 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2298 + 100] = this.address
                                                                mem[_2298 + 132] = 128
                                                                mem[_2298 + 164] = mem[_2298]
                                                                t = 0
                                                                while t < mem[_2298]:
                                                                    mem[_2298 + t + 196] = mem[_2298 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2298] % 32:
                                                                    require ext_code.size(address(_2297))
                                                                    call address(_2297).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2298 + 164 len mem[_2298] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2298]) + _2298 + 196] = mem[floor32(mem[_2298]) + _2298 + -(mem[_2298] % 32) + 228 len mem[_2298] % 32]
                                                                    require ext_code.size(address(_2297))
                                                                    call address(_2297).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2298], mem[_2298 + 196 len floor32(mem[_2298]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2246 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2377 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2378 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2378 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2378 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2378 + 68] = 0
                                                                mem[_2378 + 100] = address(_2246)
                                                                mem[_2378 + 132] = 128
                                                                mem[_2378 + 164] = mem[_2378]
                                                                t = 0
                                                                while t < mem[_2378]:
                                                                    mem[_2378 + t + 196] = mem[_2378 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2378] % 32:
                                                                    require ext_code.size(address(_2377))
                                                                    call address(_2377).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2246), 128, mem[_2378 + 164 len mem[_2378] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2378]) + _2378 + 196] = mem[floor32(mem[_2378]) + _2378 + -(mem[_2378] % 32) + 228 len mem[_2378] % 32]
                                                                    require ext_code.size(address(_2377))
                                                                    call address(_2377).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2246), 128, mem[_2378], mem[_2378 + 196 len floor32(mem[_2378]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2300 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2301 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2301 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2301 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2301 + 68] = 0
                                                                mem[_2301 + 100] = this.address
                                                                mem[_2301 + 132] = 128
                                                                mem[_2301 + 164] = mem[_2301]
                                                                t = 0
                                                                while t < mem[_2301]:
                                                                    mem[_2301 + t + 196] = mem[_2301 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2301] % 32:
                                                                    require ext_code.size(address(_2300))
                                                                    call address(_2300).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2301 + 164 len mem[_2301] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2301]) + _2301 + 196] = mem[floor32(mem[_2301]) + _2301 + -(mem[_2301] % 32) + 228 len mem[_2301] % 32]
                                                                    require ext_code.size(address(_2300))
                                                                    call address(_2300).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2301], mem[_2301 + 196 len floor32(mem[_2301]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                            else:
                                                require Mask(112, 0, ext_call.return_data[32])
                                                if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    else:
                                                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                            revert with 0, 'ds-math-add-overflow'
                                                        else:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                            require idx < mem[96]
                                                            if mem[(32 * idx) + 140 len 20] == address(_2015):
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2382 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2578 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2579 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2579 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2579 + 36] = 0
                                                                    mem[_2579 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2579 + 100] = address(_2382)
                                                                    mem[_2579 + 132] = 128
                                                                    mem[_2579 + 164] = mem[_2579]
                                                                    t = 0
                                                                    while t < mem[_2579]:
                                                                        mem[_2579 + t + 196] = mem[_2579 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2579] % 32:
                                                                        require ext_code.size(address(_2578))
                                                                        call address(_2578).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2382), 128, mem[_2579 + 164 len mem[_2579] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2579]) + _2579 + 196] = mem[floor32(mem[_2579]) + _2579 + -(mem[_2579] % 32) + 228 len mem[_2579] % 32]
                                                                        require ext_code.size(address(_2578))
                                                                        call address(_2578).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2382), 128, mem[_2579], mem[_2579 + 196 len floor32(mem[_2579]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2487 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2488 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2488 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2488 + 36] = 0
                                                                    mem[_2488 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2488 + 100] = this.address
                                                                    mem[_2488 + 132] = 128
                                                                    mem[_2488 + 164] = mem[_2488]
                                                                    t = 0
                                                                    while t < mem[_2488]:
                                                                        mem[_2488 + t + 196] = mem[_2488 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2488] % 32:
                                                                        require ext_code.size(address(_2487))
                                                                        call address(_2487).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2488 + 164 len mem[_2488] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2488]) + _2488 + 196] = mem[floor32(mem[_2488]) + _2488 + -(mem[_2488] % 32) + 228 len mem[_2488] % 32]
                                                                        require ext_code.size(address(_2487))
                                                                        call address(_2487).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2488], mem[_2488 + 196 len floor32(mem[_2488]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2384 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2583 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2584 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2584 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2584 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2584 + 68] = 0
                                                                    mem[_2584 + 100] = address(_2384)
                                                                    mem[_2584 + 132] = 128
                                                                    mem[_2584 + 164] = mem[_2584]
                                                                    t = 0
                                                                    while t < mem[_2584]:
                                                                        mem[_2584 + t + 196] = mem[_2584 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2584] % 32:
                                                                        require ext_code.size(address(_2583))
                                                                        call address(_2583).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2384), 128, mem[_2584 + 164 len mem[_2584] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2584]) + _2584 + 196] = mem[floor32(mem[_2584]) + _2584 + -(mem[_2584] % 32) + 228 len mem[_2584] % 32]
                                                                        require ext_code.size(address(_2583))
                                                                        call address(_2583).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2384), 128, mem[_2584], mem[_2584 + 196 len floor32(mem[_2584]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2490 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2491 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2491 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2491 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2491 + 68] = 0
                                                                    mem[_2491 + 100] = this.address
                                                                    mem[_2491 + 132] = 128
                                                                    mem[_2491 + 164] = mem[_2491]
                                                                    t = 0
                                                                    while t < mem[_2491]:
                                                                        mem[_2491 + t + 196] = mem[_2491 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2491] % 32:
                                                                        require ext_code.size(address(_2490))
                                                                        call address(_2490).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2491 + 164 len mem[_2491] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2491]) + _2491 + 196] = mem[floor32(mem[_2491]) + _2491 + -(mem[_2491] % 32) + 228 len mem[_2491] % 32]
                                                                        require ext_code.size(address(_2490))
                                                                        call address(_2490).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2491], mem[_2491 + 196 len floor32(mem[_2491]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                    else:
                                        if 997 * s / 997 != s:
                                            revert with 0, 'ds-math-mul-overflow'
                                        else:
                                            if not Mask(112, 0, ext_call.return_data[0]):
                                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                        revert with 0, 'ds-math-add-overflow'
                                                    else:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                        require idx < mem[96]
                                                        if mem[(32 * idx) + 140 len 20] == address(_2015):
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2250 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2386 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2387 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2387 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2387 + 36] = 0
                                                                mem[_2387 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2387 + 100] = address(_2250)
                                                                mem[_2387 + 132] = 128
                                                                mem[_2387 + 164] = mem[_2387]
                                                                t = 0
                                                                while t < mem[_2387]:
                                                                    mem[_2387 + t + 196] = mem[_2387 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2387] % 32:
                                                                    require ext_code.size(address(_2386))
                                                                    call address(_2386).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2250), 128, mem[_2387 + 164 len mem[_2387] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2387]) + _2387 + 196] = mem[floor32(mem[_2387]) + _2387 + -(mem[_2387] % 32) + 228 len mem[_2387] % 32]
                                                                    require ext_code.size(address(_2386))
                                                                    call address(_2386).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2250), 128, mem[_2387], mem[_2387 + 196 len floor32(mem[_2387]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2305 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2306 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2306 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2306 + 36] = 0
                                                                mem[_2306 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2306 + 100] = this.address
                                                                mem[_2306 + 132] = 128
                                                                mem[_2306 + 164] = mem[_2306]
                                                                t = 0
                                                                while t < mem[_2306]:
                                                                    mem[_2306 + t + 196] = mem[_2306 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2306] % 32:
                                                                    require ext_code.size(address(_2305))
                                                                    call address(_2305).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2306 + 164 len mem[_2306] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2306]) + _2306 + 196] = mem[floor32(mem[_2306]) + _2306 + -(mem[_2306] % 32) + 228 len mem[_2306] % 32]
                                                                    require ext_code.size(address(_2305))
                                                                    call address(_2305).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2306], mem[_2306 + 196 len floor32(mem[_2306]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2252 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2391 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2392 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2392 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2392 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2392 + 68] = 0
                                                                mem[_2392 + 100] = address(_2252)
                                                                mem[_2392 + 132] = 128
                                                                mem[_2392 + 164] = mem[_2392]
                                                                t = 0
                                                                while t < mem[_2392]:
                                                                    mem[_2392 + t + 196] = mem[_2392 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2392] % 32:
                                                                    require ext_code.size(address(_2391))
                                                                    call address(_2391).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2252), 128, mem[_2392 + 164 len mem[_2392] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2392]) + _2392 + 196] = mem[floor32(mem[_2392]) + _2392 + -(mem[_2392] % 32) + 228 len mem[_2392] % 32]
                                                                    require ext_code.size(address(_2391))
                                                                    call address(_2391).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2252), 128, mem[_2392], mem[_2392 + 196 len floor32(mem[_2392]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2308 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2309 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2309 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2309 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2309 + 68] = 0
                                                                mem[_2309 + 100] = this.address
                                                                mem[_2309 + 132] = 128
                                                                mem[_2309 + 164] = mem[_2309]
                                                                t = 0
                                                                while t < mem[_2309]:
                                                                    mem[_2309 + t + 196] = mem[_2309 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2309] % 32:
                                                                    require ext_code.size(address(_2308))
                                                                    call address(_2308).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2309 + 164 len mem[_2309] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2309]) + _2309 + 196] = mem[floor32(mem[_2309]) + _2309 + -(mem[_2309] % 32) + 228 len mem[_2309] % 32]
                                                                    require ext_code.size(address(_2308))
                                                                    call address(_2308).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2309], mem[_2309 + 196 len floor32(mem[_2309]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                            else:
                                                require Mask(112, 0, ext_call.return_data[0])
                                                if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    else:
                                                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                            revert with 0, 'ds-math-add-overflow'
                                                        else:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                            require idx < mem[96]
                                                            if mem[(32 * idx) + 140 len 20] == address(_2015):
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2396 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2590 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2591 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2591 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2591 + 36] = 0
                                                                    mem[_2591 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2591 + 100] = address(_2396)
                                                                    mem[_2591 + 132] = 128
                                                                    mem[_2591 + 164] = mem[_2591]
                                                                    t = 0
                                                                    while t < mem[_2591]:
                                                                        mem[_2591 + t + 196] = mem[_2591 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2591] % 32:
                                                                        require ext_code.size(address(_2590))
                                                                        call address(_2590).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2396), 128, mem[_2591 + 164 len mem[_2591] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2591]) + _2591 + 196] = mem[floor32(mem[_2591]) + _2591 + -(mem[_2591] % 32) + 228 len mem[_2591] % 32]
                                                                        require ext_code.size(address(_2590))
                                                                        call address(_2590).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2396), 128, mem[_2591], mem[_2591 + 196 len floor32(mem[_2591]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2499 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2500 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2500 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2500 + 36] = 0
                                                                    mem[_2500 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2500 + 100] = this.address
                                                                    mem[_2500 + 132] = 128
                                                                    mem[_2500 + 164] = mem[_2500]
                                                                    t = 0
                                                                    while t < mem[_2500]:
                                                                        mem[_2500 + t + 196] = mem[_2500 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2500] % 32:
                                                                        require ext_code.size(address(_2499))
                                                                        call address(_2499).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2500 + 164 len mem[_2500] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2500]) + _2500 + 196] = mem[floor32(mem[_2500]) + _2500 + -(mem[_2500] % 32) + 228 len mem[_2500] % 32]
                                                                        require ext_code.size(address(_2499))
                                                                        call address(_2499).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2500], mem[_2500 + 196 len floor32(mem[_2500]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2398 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2595 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2596 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2596 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2596 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2596 + 68] = 0
                                                                    mem[_2596 + 100] = address(_2398)
                                                                    mem[_2596 + 132] = 128
                                                                    mem[_2596 + 164] = mem[_2596]
                                                                    t = 0
                                                                    while t < mem[_2596]:
                                                                        mem[_2596 + t + 196] = mem[_2596 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2596] % 32:
                                                                        require ext_code.size(address(_2595))
                                                                        call address(_2595).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2398), 128, mem[_2596 + 164 len mem[_2596] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2596]) + _2596 + 196] = mem[floor32(mem[_2596]) + _2596 + -(mem[_2596] % 32) + 228 len mem[_2596] % 32]
                                                                        require ext_code.size(address(_2595))
                                                                        call address(_2595).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2398), 128, mem[_2596], mem[_2596 + 196 len floor32(mem[_2596]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2502 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2503 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2503 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2503 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2503 + 68] = 0
                                                                    mem[_2503 + 100] = this.address
                                                                    mem[_2503 + 132] = 128
                                                                    mem[_2503 + 164] = mem[_2503]
                                                                    t = 0
                                                                    while t < mem[_2503]:
                                                                        mem[_2503 + t + 196] = mem[_2503 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2503] % 32:
                                                                        require ext_code.size(address(_2502))
                                                                        call address(_2502).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2503 + 164 len mem[_2503] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2503]) + _2503 + 196] = mem[floor32(mem[_2503]) + _2503 + -(mem[_2503] % 32) + 228 len mem[_2503] % 32]
                                                                        require ext_code.size(address(_2502))
                                                                        call address(_2502).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2503], mem[_2503 + 196 len floor32(mem[_2503]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                else:
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[96]
                    _2032 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _2035 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    else:
                        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            else:
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if address(_2032) == address(_2032):
                                        if 997 * s / 997 != s:
                                            revert with 0, 'ds-math-mul-overflow'
                                        else:
                                            if not Mask(112, 0, ext_call.return_data[32]):
                                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                        revert with 0, 'ds-math-add-overflow'
                                                    else:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                        require idx < mem[96]
                                                        if mem[(32 * idx) + 140 len 20] == address(_2017):
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2256 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2400 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2401 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2401 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2401 + 36] = 0
                                                                mem[_2401 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2401 + 100] = address(_2256)
                                                                mem[_2401 + 132] = 128
                                                                mem[_2401 + 164] = mem[_2401]
                                                                t = 0
                                                                while t < mem[_2401]:
                                                                    mem[_2401 + t + 196] = mem[_2401 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2401] % 32:
                                                                    require ext_code.size(address(_2400))
                                                                    call address(_2400).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2256), 128, mem[_2401 + 164 len mem[_2401] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2401]) + _2401 + 196] = mem[floor32(mem[_2401]) + _2401 + -(mem[_2401] % 32) + 228 len mem[_2401] % 32]
                                                                    require ext_code.size(address(_2400))
                                                                    call address(_2400).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2256), 128, mem[_2401], mem[_2401 + 196 len floor32(mem[_2401]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2313 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2314 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2314 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2314 + 36] = 0
                                                                mem[_2314 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2314 + 100] = this.address
                                                                mem[_2314 + 132] = 128
                                                                mem[_2314 + 164] = mem[_2314]
                                                                t = 0
                                                                while t < mem[_2314]:
                                                                    mem[_2314 + t + 196] = mem[_2314 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2314] % 32:
                                                                    require ext_code.size(address(_2313))
                                                                    call address(_2313).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2314 + 164 len mem[_2314] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2314]) + _2314 + 196] = mem[floor32(mem[_2314]) + _2314 + -(mem[_2314] % 32) + 228 len mem[_2314] % 32]
                                                                    require ext_code.size(address(_2313))
                                                                    call address(_2313).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2314], mem[_2314 + 196 len floor32(mem[_2314]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2258 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2405 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2406 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2406 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2406 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2406 + 68] = 0
                                                                mem[_2406 + 100] = address(_2258)
                                                                mem[_2406 + 132] = 128
                                                                mem[_2406 + 164] = mem[_2406]
                                                                t = 0
                                                                while t < mem[_2406]:
                                                                    mem[_2406 + t + 196] = mem[_2406 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2406] % 32:
                                                                    require ext_code.size(address(_2405))
                                                                    call address(_2405).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2258), 128, mem[_2406 + 164 len mem[_2406] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2406]) + _2406 + 196] = mem[floor32(mem[_2406]) + _2406 + -(mem[_2406] % 32) + 228 len mem[_2406] % 32]
                                                                    require ext_code.size(address(_2405))
                                                                    call address(_2405).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2258), 128, mem[_2406], mem[_2406 + 196 len floor32(mem[_2406]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2316 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2317 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2317 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2317 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2317 + 68] = 0
                                                                mem[_2317 + 100] = this.address
                                                                mem[_2317 + 132] = 128
                                                                mem[_2317 + 164] = mem[_2317]
                                                                t = 0
                                                                while t < mem[_2317]:
                                                                    mem[_2317 + t + 196] = mem[_2317 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2317] % 32:
                                                                    require ext_code.size(address(_2316))
                                                                    call address(_2316).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2317 + 164 len mem[_2317] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2317]) + _2317 + 196] = mem[floor32(mem[_2317]) + _2317 + -(mem[_2317] % 32) + 228 len mem[_2317] % 32]
                                                                    require ext_code.size(address(_2316))
                                                                    call address(_2316).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2317], mem[_2317 + 196 len floor32(mem[_2317]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                            else:
                                                require Mask(112, 0, ext_call.return_data[32])
                                                if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    else:
                                                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                            revert with 0, 'ds-math-add-overflow'
                                                        else:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                            require idx < mem[96]
                                                            if mem[(32 * idx) + 140 len 20] == address(_2017):
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2410 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2602 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2603 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2603 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2603 + 36] = 0
                                                                    mem[_2603 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2603 + 100] = address(_2410)
                                                                    mem[_2603 + 132] = 128
                                                                    mem[_2603 + 164] = mem[_2603]
                                                                    t = 0
                                                                    while t < mem[_2603]:
                                                                        mem[_2603 + t + 196] = mem[_2603 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2603] % 32:
                                                                        require ext_code.size(address(_2602))
                                                                        call address(_2602).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2410), 128, mem[_2603 + 164 len mem[_2603] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2603]) + _2603 + 196] = mem[floor32(mem[_2603]) + _2603 + -(mem[_2603] % 32) + 228 len mem[_2603] % 32]
                                                                        require ext_code.size(address(_2602))
                                                                        call address(_2602).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2410), 128, mem[_2603], mem[_2603 + 196 len floor32(mem[_2603]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2511 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2512 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2512 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2512 + 36] = 0
                                                                    mem[_2512 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2512 + 100] = this.address
                                                                    mem[_2512 + 132] = 128
                                                                    mem[_2512 + 164] = mem[_2512]
                                                                    t = 0
                                                                    while t < mem[_2512]:
                                                                        mem[_2512 + t + 196] = mem[_2512 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2512] % 32:
                                                                        require ext_code.size(address(_2511))
                                                                        call address(_2511).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2512 + 164 len mem[_2512] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2512]) + _2512 + 196] = mem[floor32(mem[_2512]) + _2512 + -(mem[_2512] % 32) + 228 len mem[_2512] % 32]
                                                                        require ext_code.size(address(_2511))
                                                                        call address(_2511).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2512], mem[_2512 + 196 len floor32(mem[_2512]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2412 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2607 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2608 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2608 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2608 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2608 + 68] = 0
                                                                    mem[_2608 + 100] = address(_2412)
                                                                    mem[_2608 + 132] = 128
                                                                    mem[_2608 + 164] = mem[_2608]
                                                                    t = 0
                                                                    while t < mem[_2608]:
                                                                        mem[_2608 + t + 196] = mem[_2608 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2608] % 32:
                                                                        require ext_code.size(address(_2607))
                                                                        call address(_2607).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2412), 128, mem[_2608 + 164 len mem[_2608] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2608]) + _2608 + 196] = mem[floor32(mem[_2608]) + _2608 + -(mem[_2608] % 32) + 228 len mem[_2608] % 32]
                                                                        require ext_code.size(address(_2607))
                                                                        call address(_2607).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2412), 128, mem[_2608], mem[_2608 + 196 len floor32(mem[_2608]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2514 = mem[(32 * idx) + (32 * arg1.length) + 160]
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
                                                                        require ext_code.size(address(_2514))
                                                                        call address(_2514).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2515 + 164 len mem[_2515] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2515]) + _2515 + 196] = mem[floor32(mem[_2515]) + _2515 + -(mem[_2515] % 32) + 228 len mem[_2515] % 32]
                                                                        require ext_code.size(address(_2514))
                                                                        call address(_2514).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2515], mem[_2515 + 196 len floor32(mem[_2515]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                    else:
                                        if 997 * s / 997 != s:
                                            revert with 0, 'ds-math-mul-overflow'
                                        else:
                                            if not Mask(112, 0, ext_call.return_data[0]):
                                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                        revert with 0, 'ds-math-add-overflow'
                                                    else:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                        require idx < mem[96]
                                                        if mem[(32 * idx) + 140 len 20] == address(_2017):
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2262 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2414 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2415 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2415 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2415 + 36] = 0
                                                                mem[_2415 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2415 + 100] = address(_2262)
                                                                mem[_2415 + 132] = 128
                                                                mem[_2415 + 164] = mem[_2415]
                                                                t = 0
                                                                while t < mem[_2415]:
                                                                    mem[_2415 + t + 196] = mem[_2415 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2415] % 32:
                                                                    require ext_code.size(address(_2414))
                                                                    call address(_2414).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2262), 128, mem[_2415 + 164 len mem[_2415] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2415]) + _2415 + 196] = mem[floor32(mem[_2415]) + _2415 + -(mem[_2415] % 32) + 228 len mem[_2415] % 32]
                                                                    require ext_code.size(address(_2414))
                                                                    call address(_2414).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2262), 128, mem[_2415], mem[_2415 + 196 len floor32(mem[_2415]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2321 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2322 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2322 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2322 + 36] = 0
                                                                mem[_2322 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2322 + 100] = this.address
                                                                mem[_2322 + 132] = 128
                                                                mem[_2322 + 164] = mem[_2322]
                                                                t = 0
                                                                while t < mem[_2322]:
                                                                    mem[_2322 + t + 196] = mem[_2322 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2322] % 32:
                                                                    require ext_code.size(address(_2321))
                                                                    call address(_2321).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2322 + 164 len mem[_2322] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2322]) + _2322 + 196] = mem[floor32(mem[_2322]) + _2322 + -(mem[_2322] % 32) + 228 len mem[_2322] % 32]
                                                                    require ext_code.size(address(_2321))
                                                                    call address(_2321).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2322], mem[_2322 + 196 len floor32(mem[_2322]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2264 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2419 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2420 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2420 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2420 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2420 + 68] = 0
                                                                mem[_2420 + 100] = address(_2264)
                                                                mem[_2420 + 132] = 128
                                                                mem[_2420 + 164] = mem[_2420]
                                                                t = 0
                                                                while t < mem[_2420]:
                                                                    mem[_2420 + t + 196] = mem[_2420 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2420] % 32:
                                                                    require ext_code.size(address(_2419))
                                                                    call address(_2419).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2264), 128, mem[_2420 + 164 len mem[_2420] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2420]) + _2420 + 196] = mem[floor32(mem[_2420]) + _2420 + -(mem[_2420] % 32) + 228 len mem[_2420] % 32]
                                                                    require ext_code.size(address(_2419))
                                                                    call address(_2419).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2264), 128, mem[_2420], mem[_2420 + 196 len floor32(mem[_2420]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2324 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2325 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2325 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2325 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2325 + 68] = 0
                                                                mem[_2325 + 100] = this.address
                                                                mem[_2325 + 132] = 128
                                                                mem[_2325 + 164] = mem[_2325]
                                                                t = 0
                                                                while t < mem[_2325]:
                                                                    mem[_2325 + t + 196] = mem[_2325 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2325] % 32:
                                                                    require ext_code.size(address(_2324))
                                                                    call address(_2324).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2325 + 164 len mem[_2325] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2325]) + _2325 + 196] = mem[floor32(mem[_2325]) + _2325 + -(mem[_2325] % 32) + 228 len mem[_2325] % 32]
                                                                    require ext_code.size(address(_2324))
                                                                    call address(_2324).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2325], mem[_2325 + 196 len floor32(mem[_2325]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                            else:
                                                require Mask(112, 0, ext_call.return_data[0])
                                                if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    else:
                                                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                            revert with 0, 'ds-math-add-overflow'
                                                        else:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                            require idx < mem[96]
                                                            if mem[(32 * idx) + 140 len 20] == address(_2017):
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2424 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2614 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2615 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2615 + 36] = 0
                                                                    mem[_2615 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2615 + 100] = address(_2424)
                                                                    mem[_2615 + 132] = 128
                                                                    mem[_2615 + 164] = mem[_2615]
                                                                    t = 0
                                                                    while t < mem[_2615]:
                                                                        mem[_2615 + t + 196] = mem[_2615 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2615] % 32:
                                                                        require ext_code.size(address(_2614))
                                                                        call address(_2614).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2424), 128, mem[_2615 + 164 len mem[_2615] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2615]) + _2615 + 196] = mem[floor32(mem[_2615]) + _2615 + -(mem[_2615] % 32) + 228 len mem[_2615] % 32]
                                                                        require ext_code.size(address(_2614))
                                                                        call address(_2614).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2424), 128, mem[_2615], mem[_2615 + 196 len floor32(mem[_2615]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2523 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2524 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2524 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2524 + 36] = 0
                                                                    mem[_2524 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2524 + 100] = this.address
                                                                    mem[_2524 + 132] = 128
                                                                    mem[_2524 + 164] = mem[_2524]
                                                                    t = 0
                                                                    while t < mem[_2524]:
                                                                        mem[_2524 + t + 196] = mem[_2524 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2524] % 32:
                                                                        require ext_code.size(address(_2523))
                                                                        call address(_2523).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2524 + 164 len mem[_2524] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2524]) + _2524 + 196] = mem[floor32(mem[_2524]) + _2524 + -(mem[_2524] % 32) + 228 len mem[_2524] % 32]
                                                                        require ext_code.size(address(_2523))
                                                                        call address(_2523).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2524], mem[_2524 + 196 len floor32(mem[_2524]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2426 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2619 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2620 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2620 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2620 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2620 + 68] = 0
                                                                    mem[_2620 + 100] = address(_2426)
                                                                    mem[_2620 + 132] = 128
                                                                    mem[_2620 + 164] = mem[_2620]
                                                                    t = 0
                                                                    while t < mem[_2620]:
                                                                        mem[_2620 + t + 196] = mem[_2620 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2620] % 32:
                                                                        require ext_code.size(address(_2619))
                                                                        call address(_2619).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2426), 128, mem[_2620 + 164 len mem[_2620] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2620]) + _2620 + 196] = mem[floor32(mem[_2620]) + _2620 + -(mem[_2620] % 32) + 228 len mem[_2620] % 32]
                                                                        require ext_code.size(address(_2619))
                                                                        call address(_2619).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2426), 128, mem[_2620], mem[_2620 + 196 len floor32(mem[_2620]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2526 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2527 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2527 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2527 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2527 + 68] = 0
                                                                    mem[_2527 + 100] = this.address
                                                                    mem[_2527 + 132] = 128
                                                                    mem[_2527 + 164] = mem[_2527]
                                                                    t = 0
                                                                    while t < mem[_2527]:
                                                                        mem[_2527 + t + 196] = mem[_2527 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2527] % 32:
                                                                        require ext_code.size(address(_2526))
                                                                        call address(_2526).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2527 + 164 len mem[_2527] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2527]) + _2527 + 196] = mem[floor32(mem[_2527]) + _2527 + -(mem[_2527] % 32) + 228 len mem[_2527] % 32]
                                                                        require ext_code.size(address(_2526))
                                                                        call address(_2526).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2527], mem[_2527 + 196 len floor32(mem[_2527]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                        else:
                            if not mem[(32 * idx + 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            else:
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if address(_2032) == address(_2035):
                                        if 997 * s / 997 != s:
                                            revert with 0, 'ds-math-mul-overflow'
                                        else:
                                            if not Mask(112, 0, ext_call.return_data[32]):
                                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                        revert with 0, 'ds-math-add-overflow'
                                                    else:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                        require idx < mem[96]
                                                        if mem[(32 * idx) + 140 len 20] == address(_2017):
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2268 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2428 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2429 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2429 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2429 + 36] = 0
                                                                mem[_2429 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2429 + 100] = address(_2268)
                                                                mem[_2429 + 132] = 128
                                                                mem[_2429 + 164] = mem[_2429]
                                                                t = 0
                                                                while t < mem[_2429]:
                                                                    mem[_2429 + t + 196] = mem[_2429 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2429] % 32:
                                                                    require ext_code.size(address(_2428))
                                                                    call address(_2428).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2268), 128, mem[_2429 + 164 len mem[_2429] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2429]) + _2429 + 196] = mem[floor32(mem[_2429]) + _2429 + -(mem[_2429] % 32) + 228 len mem[_2429] % 32]
                                                                    require ext_code.size(address(_2428))
                                                                    call address(_2428).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2268), 128, mem[_2429], mem[_2429 + 196 len floor32(mem[_2429]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2329 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2330 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2330 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2330 + 36] = 0
                                                                mem[_2330 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2330 + 100] = this.address
                                                                mem[_2330 + 132] = 128
                                                                mem[_2330 + 164] = mem[_2330]
                                                                t = 0
                                                                while t < mem[_2330]:
                                                                    mem[_2330 + t + 196] = mem[_2330 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2330] % 32:
                                                                    require ext_code.size(address(_2329))
                                                                    call address(_2329).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2330 + 164 len mem[_2330] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2330]) + _2330 + 196] = mem[floor32(mem[_2330]) + _2330 + -(mem[_2330] % 32) + 228 len mem[_2330] % 32]
                                                                    require ext_code.size(address(_2329))
                                                                    call address(_2329).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2330], mem[_2330 + 196 len floor32(mem[_2330]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2270 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2433 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2434 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2434 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2434 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2434 + 68] = 0
                                                                mem[_2434 + 100] = address(_2270)
                                                                mem[_2434 + 132] = 128
                                                                mem[_2434 + 164] = mem[_2434]
                                                                t = 0
                                                                while t < mem[_2434]:
                                                                    mem[_2434 + t + 196] = mem[_2434 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2434] % 32:
                                                                    require ext_code.size(address(_2433))
                                                                    call address(_2433).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2270), 128, mem[_2434 + 164 len mem[_2434] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2434]) + _2434 + 196] = mem[floor32(mem[_2434]) + _2434 + -(mem[_2434] % 32) + 228 len mem[_2434] % 32]
                                                                    require ext_code.size(address(_2433))
                                                                    call address(_2433).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2270), 128, mem[_2434], mem[_2434 + 196 len floor32(mem[_2434]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2332 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2333 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2333 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2333 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2333 + 68] = 0
                                                                mem[_2333 + 100] = this.address
                                                                mem[_2333 + 132] = 128
                                                                mem[_2333 + 164] = mem[_2333]
                                                                t = 0
                                                                while t < mem[_2333]:
                                                                    mem[_2333 + t + 196] = mem[_2333 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2333] % 32:
                                                                    require ext_code.size(address(_2332))
                                                                    call address(_2332).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2333 + 164 len mem[_2333] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2333]) + _2333 + 196] = mem[floor32(mem[_2333]) + _2333 + -(mem[_2333] % 32) + 228 len mem[_2333] % 32]
                                                                    require ext_code.size(address(_2332))
                                                                    call address(_2332).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2333], mem[_2333 + 196 len floor32(mem[_2333]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                            else:
                                                require Mask(112, 0, ext_call.return_data[32])
                                                if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    else:
                                                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                            revert with 0, 'ds-math-add-overflow'
                                                        else:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                            require idx < mem[96]
                                                            if mem[(32 * idx) + 140 len 20] == address(_2017):
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2438 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2626 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2627 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2627 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2627 + 36] = 0
                                                                    mem[_2627 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2627 + 100] = address(_2438)
                                                                    mem[_2627 + 132] = 128
                                                                    mem[_2627 + 164] = mem[_2627]
                                                                    t = 0
                                                                    while t < mem[_2627]:
                                                                        mem[_2627 + t + 196] = mem[_2627 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2627] % 32:
                                                                        require ext_code.size(address(_2626))
                                                                        call address(_2626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2438), 128, mem[_2627 + 164 len mem[_2627] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2627]) + _2627 + 196] = mem[floor32(mem[_2627]) + _2627 + -(mem[_2627] % 32) + 228 len mem[_2627] % 32]
                                                                        require ext_code.size(address(_2626))
                                                                        call address(_2626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2438), 128, mem[_2627], mem[_2627 + 196 len floor32(mem[_2627]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2535 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2536 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2536 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2536 + 36] = 0
                                                                    mem[_2536 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2536 + 100] = this.address
                                                                    mem[_2536 + 132] = 128
                                                                    mem[_2536 + 164] = mem[_2536]
                                                                    t = 0
                                                                    while t < mem[_2536]:
                                                                        mem[_2536 + t + 196] = mem[_2536 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2536] % 32:
                                                                        require ext_code.size(address(_2535))
                                                                        call address(_2535).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2536 + 164 len mem[_2536] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2536]) + _2536 + 196] = mem[floor32(mem[_2536]) + _2536 + -(mem[_2536] % 32) + 228 len mem[_2536] % 32]
                                                                        require ext_code.size(address(_2535))
                                                                        call address(_2535).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2536], mem[_2536 + 196 len floor32(mem[_2536]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2440 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2631 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2632 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2632 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2632 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2632 + 68] = 0
                                                                    mem[_2632 + 100] = address(_2440)
                                                                    mem[_2632 + 132] = 128
                                                                    mem[_2632 + 164] = mem[_2632]
                                                                    t = 0
                                                                    while t < mem[_2632]:
                                                                        mem[_2632 + t + 196] = mem[_2632 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2632] % 32:
                                                                        require ext_code.size(address(_2631))
                                                                        call address(_2631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2440), 128, mem[_2632 + 164 len mem[_2632] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2632]) + _2632 + 196] = mem[floor32(mem[_2632]) + _2632 + -(mem[_2632] % 32) + 228 len mem[_2632] % 32]
                                                                        require ext_code.size(address(_2631))
                                                                        call address(_2631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2440), 128, mem[_2632], mem[_2632 + 196 len floor32(mem[_2632]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2538 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2539 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2539 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2539 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2539 + 68] = 0
                                                                    mem[_2539 + 100] = this.address
                                                                    mem[_2539 + 132] = 128
                                                                    mem[_2539 + 164] = mem[_2539]
                                                                    t = 0
                                                                    while t < mem[_2539]:
                                                                        mem[_2539 + t + 196] = mem[_2539 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2539] % 32:
                                                                        require ext_code.size(address(_2538))
                                                                        call address(_2538).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2539 + 164 len mem[_2539] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2539]) + _2539 + 196] = mem[floor32(mem[_2539]) + _2539 + -(mem[_2539] % 32) + 228 len mem[_2539] % 32]
                                                                        require ext_code.size(address(_2538))
                                                                        call address(_2538).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2539], mem[_2539 + 196 len floor32(mem[_2539]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                    else:
                                        if 997 * s / 997 != s:
                                            revert with 0, 'ds-math-mul-overflow'
                                        else:
                                            if not Mask(112, 0, ext_call.return_data[0]):
                                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                        revert with 0, 'ds-math-add-overflow'
                                                    else:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                        require idx < mem[96]
                                                        if mem[(32 * idx) + 140 len 20] == address(_2017):
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2274 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2442 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2443 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2443 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2443 + 36] = 0
                                                                mem[_2443 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2443 + 100] = address(_2274)
                                                                mem[_2443 + 132] = 128
                                                                mem[_2443 + 164] = mem[_2443]
                                                                t = 0
                                                                while t < mem[_2443]:
                                                                    mem[_2443 + t + 196] = mem[_2443 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2443] % 32:
                                                                    require ext_code.size(address(_2442))
                                                                    call address(_2442).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2274), 128, mem[_2443 + 164 len mem[_2443] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2443]) + _2443 + 196] = mem[floor32(mem[_2443]) + _2443 + -(mem[_2443] % 32) + 228 len mem[_2443] % 32]
                                                                    require ext_code.size(address(_2442))
                                                                    call address(_2442).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2274), 128, mem[_2443], mem[_2443 + 196 len floor32(mem[_2443]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2337 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2338 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2338 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2338 + 36] = 0
                                                                mem[_2338 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2338 + 100] = this.address
                                                                mem[_2338 + 132] = 128
                                                                mem[_2338 + 164] = mem[_2338]
                                                                t = 0
                                                                while t < mem[_2338]:
                                                                    mem[_2338 + t + 196] = mem[_2338 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2338] % 32:
                                                                    require ext_code.size(address(_2337))
                                                                    call address(_2337).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2338 + 164 len mem[_2338] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2338]) + _2338 + 196] = mem[floor32(mem[_2338]) + _2338 + -(mem[_2338] % 32) + 228 len mem[_2338] % 32]
                                                                    require ext_code.size(address(_2337))
                                                                    call address(_2337).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2338], mem[_2338 + 196 len floor32(mem[_2338]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                _2276 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2447 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2448 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2448 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2448 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2448 + 68] = 0
                                                                mem[_2448 + 100] = address(_2276)
                                                                mem[_2448 + 132] = 128
                                                                mem[_2448 + 164] = mem[_2448]
                                                                t = 0
                                                                while t < mem[_2448]:
                                                                    mem[_2448 + t + 196] = mem[_2448 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2448] % 32:
                                                                    require ext_code.size(address(_2447))
                                                                    call address(_2447).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2276), 128, mem[_2448 + 164 len mem[_2448] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2448]) + _2448 + 196] = mem[floor32(mem[_2448]) + _2448 + -(mem[_2448] % 32) + 228 len mem[_2448] % 32]
                                                                    require ext_code.size(address(_2447))
                                                                    call address(_2447).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2276), 128, mem[_2448], mem[_2448 + 196 len floor32(mem[_2448]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[(32 * arg1.length) + 128]
                                                                _2340 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                _2341 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2341 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2341 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2341 + 68] = 0
                                                                mem[_2341 + 100] = this.address
                                                                mem[_2341 + 132] = 128
                                                                mem[_2341 + 164] = mem[_2341]
                                                                t = 0
                                                                while t < mem[_2341]:
                                                                    mem[_2341 + t + 196] = mem[_2341 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2341] % 32:
                                                                    require ext_code.size(address(_2340))
                                                                    call address(_2340).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2341 + 164 len mem[_2341] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2341]) + _2341 + 196] = mem[floor32(mem[_2341]) + _2341 + -(mem[_2341] % 32) + 228 len mem[_2341] % 32]
                                                                    require ext_code.size(address(_2340))
                                                                    call address(_2340).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2341], mem[_2341 + 196 len floor32(mem[_2341]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                            else:
                                                require Mask(112, 0, ext_call.return_data[0])
                                                if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    else:
                                                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                            revert with 0, 'ds-math-add-overflow'
                                                        else:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                            require idx < mem[96]
                                                            if mem[(32 * idx) + 140 len 20] == address(_2017):
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2452 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2638 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2639 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2639 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2639 + 36] = 0
                                                                    mem[_2639 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2639 + 100] = address(_2452)
                                                                    mem[_2639 + 132] = 128
                                                                    mem[_2639 + 164] = mem[_2639]
                                                                    t = 0
                                                                    while t < mem[_2639]:
                                                                        mem[_2639 + t + 196] = mem[_2639 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2639] % 32:
                                                                        require ext_code.size(address(_2638))
                                                                        call address(_2638).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2452), 128, mem[_2639 + 164 len mem[_2639] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2639]) + _2639 + 196] = mem[floor32(mem[_2639]) + _2639 + -(mem[_2639] % 32) + 228 len mem[_2639] % 32]
                                                                        require ext_code.size(address(_2638))
                                                                        call address(_2638).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2452), 128, mem[_2639], mem[_2639 + 196 len floor32(mem[_2639]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2547 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2548 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2548 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2548 + 36] = 0
                                                                    mem[_2548 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2548 + 100] = this.address
                                                                    mem[_2548 + 132] = 128
                                                                    mem[_2548 + 164] = mem[_2548]
                                                                    t = 0
                                                                    while t < mem[_2548]:
                                                                        mem[_2548 + t + 196] = mem[_2548 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2548] % 32:
                                                                        require ext_code.size(address(_2547))
                                                                        call address(_2547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2548 + 164 len mem[_2548] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2548]) + _2548 + 196] = mem[floor32(mem[_2548]) + _2548 + -(mem[_2548] % 32) + 228 len mem[_2548] % 32]
                                                                        require ext_code.size(address(_2547))
                                                                        call address(_2547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2548], mem[_2548 + 196 len floor32(mem[_2548]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[(32 * arg1.length) + 128] - 1:
                                                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                                                    _2454 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2643 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2644 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2644 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2644 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2644 + 68] = 0
                                                                    mem[_2644 + 100] = address(_2454)
                                                                    mem[_2644 + 132] = 128
                                                                    mem[_2644 + 164] = mem[_2644]
                                                                    t = 0
                                                                    while t < mem[_2644]:
                                                                        mem[_2644 + t + 196] = mem[_2644 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2644] % 32:
                                                                        require ext_code.size(address(_2643))
                                                                        call address(_2643).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2454), 128, mem[_2644 + 164 len mem[_2644] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2644]) + _2644 + 196] = mem[floor32(mem[_2644]) + _2644 + -(mem[_2644] % 32) + 228 len mem[_2644] % 32]
                                                                        require ext_code.size(address(_2643))
                                                                        call address(_2643).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2454), 128, mem[_2644], mem[_2644 + 196 len floor32(mem[_2644]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[(32 * arg1.length) + 128]
                                                                    _2550 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                    _2551 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2551 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2551 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2551 + 68] = 0
                                                                    mem[_2551 + 100] = this.address
                                                                    mem[_2551 + 132] = 128
                                                                    mem[_2551 + 164] = mem[_2551]
                                                                    t = 0
                                                                    while t < mem[_2551]:
                                                                        mem[_2551 + t + 196] = mem[_2551 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2551] % 32:
                                                                        require ext_code.size(address(_2550))
                                                                        call address(_2550).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2551 + 164 len mem[_2551] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2551]) + _2551 + 196] = mem[floor32(mem[_2551]) + _2551 + -(mem[_2551] % 32) + 228 len mem[_2551] % 32]
                                                                        require ext_code.size(address(_2550))
                                                                        call address(_2550).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2551], mem[_2551 + 196 len floor32(mem[_2551]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
}



}
