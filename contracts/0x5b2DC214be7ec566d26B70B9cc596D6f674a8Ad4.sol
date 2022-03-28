contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor2;

function _fallback() payable {
  stop
}

function addTrader(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor2[address(arg1)] = 1
}

function getAvax(uint256 arg1) {
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
        _1013 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx + 1 < arg2.length
        _1017 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
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
            if address(_1013) == address(_1013):
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
            if address(_1013) == address(_1017):
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
    _1015 = mem[(32 * arg1.length) + 160]
    require 0 < arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[140 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = arg3
    require ext_code.size(address(_1015))
    call address(_1015).transfer(address rg1, uint256 rg2) with:
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
        _2016 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx + 1 < mem[(32 * arg1.length) + 128]
        _2018 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
            revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
        else:
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                if not mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                else:
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    _2031 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx + 1 < mem[(32 * arg1.length) + 128]
                    _2035 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    else:
                        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            else:
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if address(_2031) == address(_2031):
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
                                                        require idx < mem[(32 * arg1.length) + 128]
                                                        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2016):
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2233 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2329 = mem[(32 * idx) + 128]
                                                                _2393 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2393 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2393 + 36] = 0
                                                                mem[_2393 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2393 + 100] = address(_2233)
                                                                mem[_2393 + 132] = 128
                                                                mem[_2393 + 164] = mem[_2393]
                                                                t = 0
                                                                while t < mem[_2393]:
                                                                    mem[_2393 + t + 196] = mem[_2393 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2393] % 32:
                                                                    require ext_code.size(address(_2329))
                                                                    call address(_2329).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2233), 128, mem[_2393 + 164 len mem[_2393] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2393]) + _2393 + 196] = mem[floor32(mem[_2393]) + _2393 + -(mem[_2393] % 32) + 228 len mem[_2393] % 32]
                                                                    require ext_code.size(address(_2329))
                                                                    call address(_2329).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2233), 128, mem[_2393], mem[_2393 + 196 len floor32(mem[_2393]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2282 = mem[(32 * idx) + 128]
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
                                                                    require ext_code.size(address(_2282))
                                                                    call address(_2282).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                                                                    require ext_code.size(address(_2282))
                                                                    call address(_2282).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2330], mem[_2330 + 196 len floor32(mem[_2330]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2235 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2331 = mem[(32 * idx) + 128]
                                                                _2397 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2397 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2397 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2397 + 68] = 0
                                                                mem[_2397 + 100] = address(_2235)
                                                                mem[_2397 + 132] = 128
                                                                mem[_2397 + 164] = mem[_2397]
                                                                t = 0
                                                                while t < mem[_2397]:
                                                                    mem[_2397 + t + 196] = mem[_2397 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2397] % 32:
                                                                    require ext_code.size(address(_2331))
                                                                    call address(_2331).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2235), 128, mem[_2397 + 164 len mem[_2397] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2397]) + _2397 + 196] = mem[floor32(mem[_2397]) + _2397 + -(mem[_2397] % 32) + 228 len mem[_2397] % 32]
                                                                    require ext_code.size(address(_2331))
                                                                    call address(_2331).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2235), 128, mem[_2397], mem[_2397 + 196 len floor32(mem[_2397]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2284 = mem[(32 * idx) + 128]
                                                                _2332 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2332 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2332 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2332 + 68] = 0
                                                                mem[_2332 + 100] = this.address
                                                                mem[_2332 + 132] = 128
                                                                mem[_2332 + 164] = mem[_2332]
                                                                t = 0
                                                                while t < mem[_2332]:
                                                                    mem[_2332 + t + 196] = mem[_2332 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2332] % 32:
                                                                    require ext_code.size(address(_2284))
                                                                    call address(_2284).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2332 + 164 len mem[_2332] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2332]) + _2332 + 196] = mem[floor32(mem[_2332]) + _2332 + -(mem[_2332] % 32) + 228 len mem[_2332] % 32]
                                                                    require ext_code.size(address(_2284))
                                                                    call address(_2284).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2332], mem[_2332 + 196 len floor32(mem[_2332]) + 32]
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
                                                            require idx < mem[(32 * arg1.length) + 128]
                                                            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2016):
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2333 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2495 = mem[(32 * idx) + 128]
                                                                    _2571 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2571 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2571 + 36] = 0
                                                                    mem[_2571 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2571 + 100] = address(_2333)
                                                                    mem[_2571 + 132] = 128
                                                                    mem[_2571 + 164] = mem[_2571]
                                                                    t = 0
                                                                    while t < mem[_2571]:
                                                                        mem[_2571 + t + 196] = mem[_2571 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2571] % 32:
                                                                        require ext_code.size(address(_2495))
                                                                        call address(_2495).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2333), 128, mem[_2571 + 164 len mem[_2571] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2571]) + _2571 + 196] = mem[floor32(mem[_2571]) + _2571 + -(mem[_2571] % 32) + 228 len mem[_2571] % 32]
                                                                        require ext_code.size(address(_2495))
                                                                        call address(_2495).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2333), 128, mem[_2571], mem[_2571 + 196 len floor32(mem[_2571]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2402 = mem[(32 * idx) + 128]
                                                                    _2496 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2496 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2496 + 36] = 0
                                                                    mem[_2496 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2496 + 100] = this.address
                                                                    mem[_2496 + 132] = 128
                                                                    mem[_2496 + 164] = mem[_2496]
                                                                    t = 0
                                                                    while t < mem[_2496]:
                                                                        mem[_2496 + t + 196] = mem[_2496 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2496] % 32:
                                                                        require ext_code.size(address(_2402))
                                                                        call address(_2402).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2496 + 164 len mem[_2496] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2496]) + _2496 + 196] = mem[floor32(mem[_2496]) + _2496 + -(mem[_2496] % 32) + 228 len mem[_2496] % 32]
                                                                        require ext_code.size(address(_2402))
                                                                        call address(_2402).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2496], mem[_2496 + 196 len floor32(mem[_2496]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2335 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2497 = mem[(32 * idx) + 128]
                                                                    _2575 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2575 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2575 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2575 + 68] = 0
                                                                    mem[_2575 + 100] = address(_2335)
                                                                    mem[_2575 + 132] = 128
                                                                    mem[_2575 + 164] = mem[_2575]
                                                                    t = 0
                                                                    while t < mem[_2575]:
                                                                        mem[_2575 + t + 196] = mem[_2575 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2575] % 32:
                                                                        require ext_code.size(address(_2497))
                                                                        call address(_2497).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2335), 128, mem[_2575 + 164 len mem[_2575] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2575]) + _2575 + 196] = mem[floor32(mem[_2575]) + _2575 + -(mem[_2575] % 32) + 228 len mem[_2575] % 32]
                                                                        require ext_code.size(address(_2497))
                                                                        call address(_2497).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2335), 128, mem[_2575], mem[_2575 + 196 len floor32(mem[_2575]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2404 = mem[(32 * idx) + 128]
                                                                    _2498 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2498 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2498 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2498 + 68] = 0
                                                                    mem[_2498 + 100] = this.address
                                                                    mem[_2498 + 132] = 128
                                                                    mem[_2498 + 164] = mem[_2498]
                                                                    t = 0
                                                                    while t < mem[_2498]:
                                                                        mem[_2498 + t + 196] = mem[_2498 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2498] % 32:
                                                                        require ext_code.size(address(_2404))
                                                                        call address(_2404).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2498 + 164 len mem[_2498] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2498]) + _2498 + 196] = mem[floor32(mem[_2498]) + _2498 + -(mem[_2498] % 32) + 228 len mem[_2498] % 32]
                                                                        require ext_code.size(address(_2404))
                                                                        call address(_2404).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2498], mem[_2498 + 196 len floor32(mem[_2498]) + 32]
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
                                                        require idx < mem[(32 * arg1.length) + 128]
                                                        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2016):
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2239 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2337 = mem[(32 * idx) + 128]
                                                                _2405 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2405 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2405 + 36] = 0
                                                                mem[_2405 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2405 + 100] = address(_2239)
                                                                mem[_2405 + 132] = 128
                                                                mem[_2405 + 164] = mem[_2405]
                                                                t = 0
                                                                while t < mem[_2405]:
                                                                    mem[_2405 + t + 196] = mem[_2405 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2405] % 32:
                                                                    require ext_code.size(address(_2337))
                                                                    call address(_2337).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2239), 128, mem[_2405 + 164 len mem[_2405] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2405]) + _2405 + 196] = mem[floor32(mem[_2405]) + _2405 + -(mem[_2405] % 32) + 228 len mem[_2405] % 32]
                                                                    require ext_code.size(address(_2337))
                                                                    call address(_2337).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2239), 128, mem[_2405], mem[_2405 + 196 len floor32(mem[_2405]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2288 = mem[(32 * idx) + 128]
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
                                                                    require ext_code.size(address(_2288))
                                                                    call address(_2288).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                                                                    require ext_code.size(address(_2288))
                                                                    call address(_2288).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2338], mem[_2338 + 196 len floor32(mem[_2338]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2241 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2339 = mem[(32 * idx) + 128]
                                                                _2409 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2409 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2409 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2409 + 68] = 0
                                                                mem[_2409 + 100] = address(_2241)
                                                                mem[_2409 + 132] = 128
                                                                mem[_2409 + 164] = mem[_2409]
                                                                t = 0
                                                                while t < mem[_2409]:
                                                                    mem[_2409 + t + 196] = mem[_2409 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2409] % 32:
                                                                    require ext_code.size(address(_2339))
                                                                    call address(_2339).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2241), 128, mem[_2409 + 164 len mem[_2409] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2409]) + _2409 + 196] = mem[floor32(mem[_2409]) + _2409 + -(mem[_2409] % 32) + 228 len mem[_2409] % 32]
                                                                    require ext_code.size(address(_2339))
                                                                    call address(_2339).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2241), 128, mem[_2409], mem[_2409 + 196 len floor32(mem[_2409]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2290 = mem[(32 * idx) + 128]
                                                                _2340 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2340 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2340 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2340 + 68] = 0
                                                                mem[_2340 + 100] = this.address
                                                                mem[_2340 + 132] = 128
                                                                mem[_2340 + 164] = mem[_2340]
                                                                t = 0
                                                                while t < mem[_2340]:
                                                                    mem[_2340 + t + 196] = mem[_2340 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2340] % 32:
                                                                    require ext_code.size(address(_2290))
                                                                    call address(_2290).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2340 + 164 len mem[_2340] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2340]) + _2340 + 196] = mem[floor32(mem[_2340]) + _2340 + -(mem[_2340] % 32) + 228 len mem[_2340] % 32]
                                                                    require ext_code.size(address(_2290))
                                                                    call address(_2290).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2340], mem[_2340 + 196 len floor32(mem[_2340]) + 32]
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
                                                            require idx < mem[(32 * arg1.length) + 128]
                                                            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2016):
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2341 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2505 = mem[(32 * idx) + 128]
                                                                    _2581 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2581 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2581 + 36] = 0
                                                                    mem[_2581 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2581 + 100] = address(_2341)
                                                                    mem[_2581 + 132] = 128
                                                                    mem[_2581 + 164] = mem[_2581]
                                                                    t = 0
                                                                    while t < mem[_2581]:
                                                                        mem[_2581 + t + 196] = mem[_2581 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2581] % 32:
                                                                        require ext_code.size(address(_2505))
                                                                        call address(_2505).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2341), 128, mem[_2581 + 164 len mem[_2581] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2581]) + _2581 + 196] = mem[floor32(mem[_2581]) + _2581 + -(mem[_2581] % 32) + 228 len mem[_2581] % 32]
                                                                        require ext_code.size(address(_2505))
                                                                        call address(_2505).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2341), 128, mem[_2581], mem[_2581 + 196 len floor32(mem[_2581]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2414 = mem[(32 * idx) + 128]
                                                                    _2506 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2506 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2506 + 36] = 0
                                                                    mem[_2506 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2506 + 100] = this.address
                                                                    mem[_2506 + 132] = 128
                                                                    mem[_2506 + 164] = mem[_2506]
                                                                    t = 0
                                                                    while t < mem[_2506]:
                                                                        mem[_2506 + t + 196] = mem[_2506 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2506] % 32:
                                                                        require ext_code.size(address(_2414))
                                                                        call address(_2414).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2506 + 164 len mem[_2506] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2506]) + _2506 + 196] = mem[floor32(mem[_2506]) + _2506 + -(mem[_2506] % 32) + 228 len mem[_2506] % 32]
                                                                        require ext_code.size(address(_2414))
                                                                        call address(_2414).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2506], mem[_2506 + 196 len floor32(mem[_2506]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2343 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2507 = mem[(32 * idx) + 128]
                                                                    _2585 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2585 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2585 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2585 + 68] = 0
                                                                    mem[_2585 + 100] = address(_2343)
                                                                    mem[_2585 + 132] = 128
                                                                    mem[_2585 + 164] = mem[_2585]
                                                                    t = 0
                                                                    while t < mem[_2585]:
                                                                        mem[_2585 + t + 196] = mem[_2585 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2585] % 32:
                                                                        require ext_code.size(address(_2507))
                                                                        call address(_2507).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2343), 128, mem[_2585 + 164 len mem[_2585] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2585]) + _2585 + 196] = mem[floor32(mem[_2585]) + _2585 + -(mem[_2585] % 32) + 228 len mem[_2585] % 32]
                                                                        require ext_code.size(address(_2507))
                                                                        call address(_2507).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2343), 128, mem[_2585], mem[_2585 + 196 len floor32(mem[_2585]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2416 = mem[(32 * idx) + 128]
                                                                    _2508 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2508 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2508 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2508 + 68] = 0
                                                                    mem[_2508 + 100] = this.address
                                                                    mem[_2508 + 132] = 128
                                                                    mem[_2508 + 164] = mem[_2508]
                                                                    t = 0
                                                                    while t < mem[_2508]:
                                                                        mem[_2508 + t + 196] = mem[_2508 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2508] % 32:
                                                                        require ext_code.size(address(_2416))
                                                                        call address(_2416).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2508 + 164 len mem[_2508] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2508]) + _2508 + 196] = mem[floor32(mem[_2508]) + _2508 + -(mem[_2508] % 32) + 228 len mem[_2508] % 32]
                                                                        require ext_code.size(address(_2416))
                                                                        call address(_2416).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2508], mem[_2508 + 196 len floor32(mem[_2508]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            else:
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if address(_2031) == address(_2035):
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
                                                        require idx < mem[(32 * arg1.length) + 128]
                                                        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2016):
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2245 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2345 = mem[(32 * idx) + 128]
                                                                _2417 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2417 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2417 + 36] = 0
                                                                mem[_2417 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2417 + 100] = address(_2245)
                                                                mem[_2417 + 132] = 128
                                                                mem[_2417 + 164] = mem[_2417]
                                                                t = 0
                                                                while t < mem[_2417]:
                                                                    mem[_2417 + t + 196] = mem[_2417 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2417] % 32:
                                                                    require ext_code.size(address(_2345))
                                                                    call address(_2345).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2245), 128, mem[_2417 + 164 len mem[_2417] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2417]) + _2417 + 196] = mem[floor32(mem[_2417]) + _2417 + -(mem[_2417] % 32) + 228 len mem[_2417] % 32]
                                                                    require ext_code.size(address(_2345))
                                                                    call address(_2345).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2245), 128, mem[_2417], mem[_2417 + 196 len floor32(mem[_2417]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2294 = mem[(32 * idx) + 128]
                                                                _2346 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2346 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2346 + 36] = 0
                                                                mem[_2346 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2346 + 100] = this.address
                                                                mem[_2346 + 132] = 128
                                                                mem[_2346 + 164] = mem[_2346]
                                                                t = 0
                                                                while t < mem[_2346]:
                                                                    mem[_2346 + t + 196] = mem[_2346 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2346] % 32:
                                                                    require ext_code.size(address(_2294))
                                                                    call address(_2294).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2346 + 164 len mem[_2346] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2346]) + _2346 + 196] = mem[floor32(mem[_2346]) + _2346 + -(mem[_2346] % 32) + 228 len mem[_2346] % 32]
                                                                    require ext_code.size(address(_2294))
                                                                    call address(_2294).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2346], mem[_2346 + 196 len floor32(mem[_2346]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2247 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2347 = mem[(32 * idx) + 128]
                                                                _2421 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2421 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2421 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2421 + 68] = 0
                                                                mem[_2421 + 100] = address(_2247)
                                                                mem[_2421 + 132] = 128
                                                                mem[_2421 + 164] = mem[_2421]
                                                                t = 0
                                                                while t < mem[_2421]:
                                                                    mem[_2421 + t + 196] = mem[_2421 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2421] % 32:
                                                                    require ext_code.size(address(_2347))
                                                                    call address(_2347).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2247), 128, mem[_2421 + 164 len mem[_2421] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2421]) + _2421 + 196] = mem[floor32(mem[_2421]) + _2421 + -(mem[_2421] % 32) + 228 len mem[_2421] % 32]
                                                                    require ext_code.size(address(_2347))
                                                                    call address(_2347).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2247), 128, mem[_2421], mem[_2421 + 196 len floor32(mem[_2421]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2296 = mem[(32 * idx) + 128]
                                                                _2348 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2348 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2348 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2348 + 68] = 0
                                                                mem[_2348 + 100] = this.address
                                                                mem[_2348 + 132] = 128
                                                                mem[_2348 + 164] = mem[_2348]
                                                                t = 0
                                                                while t < mem[_2348]:
                                                                    mem[_2348 + t + 196] = mem[_2348 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2348] % 32:
                                                                    require ext_code.size(address(_2296))
                                                                    call address(_2296).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2348 + 164 len mem[_2348] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2348]) + _2348 + 196] = mem[floor32(mem[_2348]) + _2348 + -(mem[_2348] % 32) + 228 len mem[_2348] % 32]
                                                                    require ext_code.size(address(_2296))
                                                                    call address(_2296).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2348], mem[_2348 + 196 len floor32(mem[_2348]) + 32]
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
                                                            require idx < mem[(32 * arg1.length) + 128]
                                                            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2016):
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2349 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2515 = mem[(32 * idx) + 128]
                                                                    _2591 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2591 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2591 + 36] = 0
                                                                    mem[_2591 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2591 + 100] = address(_2349)
                                                                    mem[_2591 + 132] = 128
                                                                    mem[_2591 + 164] = mem[_2591]
                                                                    t = 0
                                                                    while t < mem[_2591]:
                                                                        mem[_2591 + t + 196] = mem[_2591 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2591] % 32:
                                                                        require ext_code.size(address(_2515))
                                                                        call address(_2515).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2349), 128, mem[_2591 + 164 len mem[_2591] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2591]) + _2591 + 196] = mem[floor32(mem[_2591]) + _2591 + -(mem[_2591] % 32) + 228 len mem[_2591] % 32]
                                                                        require ext_code.size(address(_2515))
                                                                        call address(_2515).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2349), 128, mem[_2591], mem[_2591 + 196 len floor32(mem[_2591]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2426 = mem[(32 * idx) + 128]
                                                                    _2516 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2516 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2516 + 36] = 0
                                                                    mem[_2516 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2516 + 100] = this.address
                                                                    mem[_2516 + 132] = 128
                                                                    mem[_2516 + 164] = mem[_2516]
                                                                    t = 0
                                                                    while t < mem[_2516]:
                                                                        mem[_2516 + t + 196] = mem[_2516 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2516] % 32:
                                                                        require ext_code.size(address(_2426))
                                                                        call address(_2426).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2516 + 164 len mem[_2516] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2516]) + _2516 + 196] = mem[floor32(mem[_2516]) + _2516 + -(mem[_2516] % 32) + 228 len mem[_2516] % 32]
                                                                        require ext_code.size(address(_2426))
                                                                        call address(_2426).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2516], mem[_2516 + 196 len floor32(mem[_2516]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2351 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2517 = mem[(32 * idx) + 128]
                                                                    _2595 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2595 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2595 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2595 + 68] = 0
                                                                    mem[_2595 + 100] = address(_2351)
                                                                    mem[_2595 + 132] = 128
                                                                    mem[_2595 + 164] = mem[_2595]
                                                                    t = 0
                                                                    while t < mem[_2595]:
                                                                        mem[_2595 + t + 196] = mem[_2595 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2595] % 32:
                                                                        require ext_code.size(address(_2517))
                                                                        call address(_2517).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2351), 128, mem[_2595 + 164 len mem[_2595] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2595]) + _2595 + 196] = mem[floor32(mem[_2595]) + _2595 + -(mem[_2595] % 32) + 228 len mem[_2595] % 32]
                                                                        require ext_code.size(address(_2517))
                                                                        call address(_2517).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2351), 128, mem[_2595], mem[_2595 + 196 len floor32(mem[_2595]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2428 = mem[(32 * idx) + 128]
                                                                    _2518 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2518 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2518 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2518 + 68] = 0
                                                                    mem[_2518 + 100] = this.address
                                                                    mem[_2518 + 132] = 128
                                                                    mem[_2518 + 164] = mem[_2518]
                                                                    t = 0
                                                                    while t < mem[_2518]:
                                                                        mem[_2518 + t + 196] = mem[_2518 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2518] % 32:
                                                                        require ext_code.size(address(_2428))
                                                                        call address(_2428).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2518 + 164 len mem[_2518] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2518]) + _2518 + 196] = mem[floor32(mem[_2518]) + _2518 + -(mem[_2518] % 32) + 228 len mem[_2518] % 32]
                                                                        require ext_code.size(address(_2428))
                                                                        call address(_2428).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2518], mem[_2518 + 196 len floor32(mem[_2518]) + 32]
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
                                                        require idx < mem[(32 * arg1.length) + 128]
                                                        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2016):
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2251 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2353 = mem[(32 * idx) + 128]
                                                                _2429 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2429 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2429 + 36] = 0
                                                                mem[_2429 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2429 + 100] = address(_2251)
                                                                mem[_2429 + 132] = 128
                                                                mem[_2429 + 164] = mem[_2429]
                                                                t = 0
                                                                while t < mem[_2429]:
                                                                    mem[_2429 + t + 196] = mem[_2429 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2429] % 32:
                                                                    require ext_code.size(address(_2353))
                                                                    call address(_2353).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2251), 128, mem[_2429 + 164 len mem[_2429] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2429]) + _2429 + 196] = mem[floor32(mem[_2429]) + _2429 + -(mem[_2429] % 32) + 228 len mem[_2429] % 32]
                                                                    require ext_code.size(address(_2353))
                                                                    call address(_2353).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2251), 128, mem[_2429], mem[_2429 + 196 len floor32(mem[_2429]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2300 = mem[(32 * idx) + 128]
                                                                _2354 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2354 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2354 + 36] = 0
                                                                mem[_2354 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2354 + 100] = this.address
                                                                mem[_2354 + 132] = 128
                                                                mem[_2354 + 164] = mem[_2354]
                                                                t = 0
                                                                while t < mem[_2354]:
                                                                    mem[_2354 + t + 196] = mem[_2354 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2354] % 32:
                                                                    require ext_code.size(address(_2300))
                                                                    call address(_2300).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2354 + 164 len mem[_2354] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2354]) + _2354 + 196] = mem[floor32(mem[_2354]) + _2354 + -(mem[_2354] % 32) + 228 len mem[_2354] % 32]
                                                                    require ext_code.size(address(_2300))
                                                                    call address(_2300).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2354], mem[_2354 + 196 len floor32(mem[_2354]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2253 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2355 = mem[(32 * idx) + 128]
                                                                _2433 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2433 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2433 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2433 + 68] = 0
                                                                mem[_2433 + 100] = address(_2253)
                                                                mem[_2433 + 132] = 128
                                                                mem[_2433 + 164] = mem[_2433]
                                                                t = 0
                                                                while t < mem[_2433]:
                                                                    mem[_2433 + t + 196] = mem[_2433 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2433] % 32:
                                                                    require ext_code.size(address(_2355))
                                                                    call address(_2355).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2253), 128, mem[_2433 + 164 len mem[_2433] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2433]) + _2433 + 196] = mem[floor32(mem[_2433]) + _2433 + -(mem[_2433] % 32) + 228 len mem[_2433] % 32]
                                                                    require ext_code.size(address(_2355))
                                                                    call address(_2355).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2253), 128, mem[_2433], mem[_2433 + 196 len floor32(mem[_2433]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2302 = mem[(32 * idx) + 128]
                                                                _2356 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2356 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2356 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2356 + 68] = 0
                                                                mem[_2356 + 100] = this.address
                                                                mem[_2356 + 132] = 128
                                                                mem[_2356 + 164] = mem[_2356]
                                                                t = 0
                                                                while t < mem[_2356]:
                                                                    mem[_2356 + t + 196] = mem[_2356 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2356] % 32:
                                                                    require ext_code.size(address(_2302))
                                                                    call address(_2302).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2356 + 164 len mem[_2356] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2356]) + _2356 + 196] = mem[floor32(mem[_2356]) + _2356 + -(mem[_2356] % 32) + 228 len mem[_2356] % 32]
                                                                    require ext_code.size(address(_2302))
                                                                    call address(_2302).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2356], mem[_2356 + 196 len floor32(mem[_2356]) + 32]
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
                                                            require idx < mem[(32 * arg1.length) + 128]
                                                            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2016):
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2357 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2525 = mem[(32 * idx) + 128]
                                                                    _2601 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2601 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2601 + 36] = 0
                                                                    mem[_2601 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2601 + 100] = address(_2357)
                                                                    mem[_2601 + 132] = 128
                                                                    mem[_2601 + 164] = mem[_2601]
                                                                    t = 0
                                                                    while t < mem[_2601]:
                                                                        mem[_2601 + t + 196] = mem[_2601 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2601] % 32:
                                                                        require ext_code.size(address(_2525))
                                                                        call address(_2525).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2357), 128, mem[_2601 + 164 len mem[_2601] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2601]) + _2601 + 196] = mem[floor32(mem[_2601]) + _2601 + -(mem[_2601] % 32) + 228 len mem[_2601] % 32]
                                                                        require ext_code.size(address(_2525))
                                                                        call address(_2525).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2357), 128, mem[_2601], mem[_2601 + 196 len floor32(mem[_2601]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2438 = mem[(32 * idx) + 128]
                                                                    _2526 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2526 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2526 + 36] = 0
                                                                    mem[_2526 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2526 + 100] = this.address
                                                                    mem[_2526 + 132] = 128
                                                                    mem[_2526 + 164] = mem[_2526]
                                                                    t = 0
                                                                    while t < mem[_2526]:
                                                                        mem[_2526 + t + 196] = mem[_2526 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2526] % 32:
                                                                        require ext_code.size(address(_2438))
                                                                        call address(_2438).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2526 + 164 len mem[_2526] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2526]) + _2526 + 196] = mem[floor32(mem[_2526]) + _2526 + -(mem[_2526] % 32) + 228 len mem[_2526] % 32]
                                                                        require ext_code.size(address(_2438))
                                                                        call address(_2438).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2526], mem[_2526 + 196 len floor32(mem[_2526]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2359 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2527 = mem[(32 * idx) + 128]
                                                                    _2605 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2605 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2605 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2605 + 68] = 0
                                                                    mem[_2605 + 100] = address(_2359)
                                                                    mem[_2605 + 132] = 128
                                                                    mem[_2605 + 164] = mem[_2605]
                                                                    t = 0
                                                                    while t < mem[_2605]:
                                                                        mem[_2605 + t + 196] = mem[_2605 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2605] % 32:
                                                                        require ext_code.size(address(_2527))
                                                                        call address(_2527).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2359), 128, mem[_2605 + 164 len mem[_2605] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2605]) + _2605 + 196] = mem[floor32(mem[_2605]) + _2605 + -(mem[_2605] % 32) + 228 len mem[_2605] % 32]
                                                                        require ext_code.size(address(_2527))
                                                                        call address(_2527).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2359), 128, mem[_2605], mem[_2605 + 196 len floor32(mem[_2605]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2440 = mem[(32 * idx) + 128]
                                                                    _2528 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2528 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2528 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2528 + 68] = 0
                                                                    mem[_2528 + 100] = this.address
                                                                    mem[_2528 + 132] = 128
                                                                    mem[_2528 + 164] = mem[_2528]
                                                                    t = 0
                                                                    while t < mem[_2528]:
                                                                        mem[_2528 + t + 196] = mem[_2528 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2528] % 32:
                                                                        require ext_code.size(address(_2440))
                                                                        call address(_2440).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2528 + 164 len mem[_2528] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2528]) + _2528 + 196] = mem[floor32(mem[_2528]) + _2528 + -(mem[_2528] % 32) + 228 len mem[_2528] % 32]
                                                                        require ext_code.size(address(_2440))
                                                                        call address(_2440).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2528], mem[_2528 + 196 len floor32(mem[_2528]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
            else:
                if not mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                else:
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    _2033 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx + 1 < mem[(32 * arg1.length) + 128]
                    _2036 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    else:
                        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            else:
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if address(_2033) == address(_2033):
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
                                                        require idx < mem[(32 * arg1.length) + 128]
                                                        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2018):
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2257 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2361 = mem[(32 * idx) + 128]
                                                                _2441 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2441 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2441 + 36] = 0
                                                                mem[_2441 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2441 + 100] = address(_2257)
                                                                mem[_2441 + 132] = 128
                                                                mem[_2441 + 164] = mem[_2441]
                                                                t = 0
                                                                while t < mem[_2441]:
                                                                    mem[_2441 + t + 196] = mem[_2441 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2441] % 32:
                                                                    require ext_code.size(address(_2361))
                                                                    call address(_2361).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2257), 128, mem[_2441 + 164 len mem[_2441] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2441]) + _2441 + 196] = mem[floor32(mem[_2441]) + _2441 + -(mem[_2441] % 32) + 228 len mem[_2441] % 32]
                                                                    require ext_code.size(address(_2361))
                                                                    call address(_2361).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2257), 128, mem[_2441], mem[_2441 + 196 len floor32(mem[_2441]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2306 = mem[(32 * idx) + 128]
                                                                _2362 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2362 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2362 + 36] = 0
                                                                mem[_2362 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2362 + 100] = this.address
                                                                mem[_2362 + 132] = 128
                                                                mem[_2362 + 164] = mem[_2362]
                                                                t = 0
                                                                while t < mem[_2362]:
                                                                    mem[_2362 + t + 196] = mem[_2362 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2362] % 32:
                                                                    require ext_code.size(address(_2306))
                                                                    call address(_2306).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2362 + 164 len mem[_2362] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2362]) + _2362 + 196] = mem[floor32(mem[_2362]) + _2362 + -(mem[_2362] % 32) + 228 len mem[_2362] % 32]
                                                                    require ext_code.size(address(_2306))
                                                                    call address(_2306).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2362], mem[_2362 + 196 len floor32(mem[_2362]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2259 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2363 = mem[(32 * idx) + 128]
                                                                _2445 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2445 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2445 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2445 + 68] = 0
                                                                mem[_2445 + 100] = address(_2259)
                                                                mem[_2445 + 132] = 128
                                                                mem[_2445 + 164] = mem[_2445]
                                                                t = 0
                                                                while t < mem[_2445]:
                                                                    mem[_2445 + t + 196] = mem[_2445 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2445] % 32:
                                                                    require ext_code.size(address(_2363))
                                                                    call address(_2363).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2259), 128, mem[_2445 + 164 len mem[_2445] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2445]) + _2445 + 196] = mem[floor32(mem[_2445]) + _2445 + -(mem[_2445] % 32) + 228 len mem[_2445] % 32]
                                                                    require ext_code.size(address(_2363))
                                                                    call address(_2363).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2259), 128, mem[_2445], mem[_2445 + 196 len floor32(mem[_2445]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2308 = mem[(32 * idx) + 128]
                                                                _2364 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2364 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2364 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2364 + 68] = 0
                                                                mem[_2364 + 100] = this.address
                                                                mem[_2364 + 132] = 128
                                                                mem[_2364 + 164] = mem[_2364]
                                                                t = 0
                                                                while t < mem[_2364]:
                                                                    mem[_2364 + t + 196] = mem[_2364 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2364] % 32:
                                                                    require ext_code.size(address(_2308))
                                                                    call address(_2308).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2364 + 164 len mem[_2364] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2364]) + _2364 + 196] = mem[floor32(mem[_2364]) + _2364 + -(mem[_2364] % 32) + 228 len mem[_2364] % 32]
                                                                    require ext_code.size(address(_2308))
                                                                    call address(_2308).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2364], mem[_2364 + 196 len floor32(mem[_2364]) + 32]
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
                                                            require idx < mem[(32 * arg1.length) + 128]
                                                            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2018):
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2365 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2535 = mem[(32 * idx) + 128]
                                                                    _2611 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2611 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2611 + 36] = 0
                                                                    mem[_2611 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2611 + 100] = address(_2365)
                                                                    mem[_2611 + 132] = 128
                                                                    mem[_2611 + 164] = mem[_2611]
                                                                    t = 0
                                                                    while t < mem[_2611]:
                                                                        mem[_2611 + t + 196] = mem[_2611 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2611] % 32:
                                                                        require ext_code.size(address(_2535))
                                                                        call address(_2535).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2365), 128, mem[_2611 + 164 len mem[_2611] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2611]) + _2611 + 196] = mem[floor32(mem[_2611]) + _2611 + -(mem[_2611] % 32) + 228 len mem[_2611] % 32]
                                                                        require ext_code.size(address(_2535))
                                                                        call address(_2535).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2365), 128, mem[_2611], mem[_2611 + 196 len floor32(mem[_2611]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2450 = mem[(32 * idx) + 128]
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
                                                                        require ext_code.size(address(_2450))
                                                                        call address(_2450).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                                                                        require ext_code.size(address(_2450))
                                                                        call address(_2450).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2536], mem[_2536 + 196 len floor32(mem[_2536]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2367 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2537 = mem[(32 * idx) + 128]
                                                                    _2615 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2615 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2615 + 68] = 0
                                                                    mem[_2615 + 100] = address(_2367)
                                                                    mem[_2615 + 132] = 128
                                                                    mem[_2615 + 164] = mem[_2615]
                                                                    t = 0
                                                                    while t < mem[_2615]:
                                                                        mem[_2615 + t + 196] = mem[_2615 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2615] % 32:
                                                                        require ext_code.size(address(_2537))
                                                                        call address(_2537).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2367), 128, mem[_2615 + 164 len mem[_2615] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2615]) + _2615 + 196] = mem[floor32(mem[_2615]) + _2615 + -(mem[_2615] % 32) + 228 len mem[_2615] % 32]
                                                                        require ext_code.size(address(_2537))
                                                                        call address(_2537).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2367), 128, mem[_2615], mem[_2615 + 196 len floor32(mem[_2615]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2452 = mem[(32 * idx) + 128]
                                                                    _2538 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2538 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2538 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2538 + 68] = 0
                                                                    mem[_2538 + 100] = this.address
                                                                    mem[_2538 + 132] = 128
                                                                    mem[_2538 + 164] = mem[_2538]
                                                                    t = 0
                                                                    while t < mem[_2538]:
                                                                        mem[_2538 + t + 196] = mem[_2538 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2538] % 32:
                                                                        require ext_code.size(address(_2452))
                                                                        call address(_2452).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2538 + 164 len mem[_2538] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2538]) + _2538 + 196] = mem[floor32(mem[_2538]) + _2538 + -(mem[_2538] % 32) + 228 len mem[_2538] % 32]
                                                                        require ext_code.size(address(_2452))
                                                                        call address(_2452).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2538], mem[_2538 + 196 len floor32(mem[_2538]) + 32]
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
                                                        require idx < mem[(32 * arg1.length) + 128]
                                                        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2018):
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2263 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2369 = mem[(32 * idx) + 128]
                                                                _2453 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2453 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2453 + 36] = 0
                                                                mem[_2453 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2453 + 100] = address(_2263)
                                                                mem[_2453 + 132] = 128
                                                                mem[_2453 + 164] = mem[_2453]
                                                                t = 0
                                                                while t < mem[_2453]:
                                                                    mem[_2453 + t + 196] = mem[_2453 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2453] % 32:
                                                                    require ext_code.size(address(_2369))
                                                                    call address(_2369).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2263), 128, mem[_2453 + 164 len mem[_2453] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2453]) + _2453 + 196] = mem[floor32(mem[_2453]) + _2453 + -(mem[_2453] % 32) + 228 len mem[_2453] % 32]
                                                                    require ext_code.size(address(_2369))
                                                                    call address(_2369).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2263), 128, mem[_2453], mem[_2453 + 196 len floor32(mem[_2453]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2312 = mem[(32 * idx) + 128]
                                                                _2370 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2370 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2370 + 36] = 0
                                                                mem[_2370 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2370 + 100] = this.address
                                                                mem[_2370 + 132] = 128
                                                                mem[_2370 + 164] = mem[_2370]
                                                                t = 0
                                                                while t < mem[_2370]:
                                                                    mem[_2370 + t + 196] = mem[_2370 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2370] % 32:
                                                                    require ext_code.size(address(_2312))
                                                                    call address(_2312).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2370 + 164 len mem[_2370] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2370]) + _2370 + 196] = mem[floor32(mem[_2370]) + _2370 + -(mem[_2370] % 32) + 228 len mem[_2370] % 32]
                                                                    require ext_code.size(address(_2312))
                                                                    call address(_2312).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2370], mem[_2370 + 196 len floor32(mem[_2370]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2265 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2371 = mem[(32 * idx) + 128]
                                                                _2457 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2457 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2457 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2457 + 68] = 0
                                                                mem[_2457 + 100] = address(_2265)
                                                                mem[_2457 + 132] = 128
                                                                mem[_2457 + 164] = mem[_2457]
                                                                t = 0
                                                                while t < mem[_2457]:
                                                                    mem[_2457 + t + 196] = mem[_2457 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2457] % 32:
                                                                    require ext_code.size(address(_2371))
                                                                    call address(_2371).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2265), 128, mem[_2457 + 164 len mem[_2457] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2457]) + _2457 + 196] = mem[floor32(mem[_2457]) + _2457 + -(mem[_2457] % 32) + 228 len mem[_2457] % 32]
                                                                    require ext_code.size(address(_2371))
                                                                    call address(_2371).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2265), 128, mem[_2457], mem[_2457 + 196 len floor32(mem[_2457]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2314 = mem[(32 * idx) + 128]
                                                                _2372 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2372 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2372 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2372 + 68] = 0
                                                                mem[_2372 + 100] = this.address
                                                                mem[_2372 + 132] = 128
                                                                mem[_2372 + 164] = mem[_2372]
                                                                t = 0
                                                                while t < mem[_2372]:
                                                                    mem[_2372 + t + 196] = mem[_2372 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2372] % 32:
                                                                    require ext_code.size(address(_2314))
                                                                    call address(_2314).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2372 + 164 len mem[_2372] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2372]) + _2372 + 196] = mem[floor32(mem[_2372]) + _2372 + -(mem[_2372] % 32) + 228 len mem[_2372] % 32]
                                                                    require ext_code.size(address(_2314))
                                                                    call address(_2314).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2372], mem[_2372 + 196 len floor32(mem[_2372]) + 32]
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
                                                            require idx < mem[(32 * arg1.length) + 128]
                                                            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2018):
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2373 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2545 = mem[(32 * idx) + 128]
                                                                    _2621 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2621 + 36] = 0
                                                                    mem[_2621 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2621 + 100] = address(_2373)
                                                                    mem[_2621 + 132] = 128
                                                                    mem[_2621 + 164] = mem[_2621]
                                                                    t = 0
                                                                    while t < mem[_2621]:
                                                                        mem[_2621 + t + 196] = mem[_2621 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2621] % 32:
                                                                        require ext_code.size(address(_2545))
                                                                        call address(_2545).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2373), 128, mem[_2621 + 164 len mem[_2621] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2621]) + _2621 + 196] = mem[floor32(mem[_2621]) + _2621 + -(mem[_2621] % 32) + 228 len mem[_2621] % 32]
                                                                        require ext_code.size(address(_2545))
                                                                        call address(_2545).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2373), 128, mem[_2621], mem[_2621 + 196 len floor32(mem[_2621]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2462 = mem[(32 * idx) + 128]
                                                                    _2546 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2546 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2546 + 36] = 0
                                                                    mem[_2546 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2546 + 100] = this.address
                                                                    mem[_2546 + 132] = 128
                                                                    mem[_2546 + 164] = mem[_2546]
                                                                    t = 0
                                                                    while t < mem[_2546]:
                                                                        mem[_2546 + t + 196] = mem[_2546 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2546] % 32:
                                                                        require ext_code.size(address(_2462))
                                                                        call address(_2462).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2546 + 164 len mem[_2546] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2546]) + _2546 + 196] = mem[floor32(mem[_2546]) + _2546 + -(mem[_2546] % 32) + 228 len mem[_2546] % 32]
                                                                        require ext_code.size(address(_2462))
                                                                        call address(_2462).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2546], mem[_2546 + 196 len floor32(mem[_2546]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2375 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2547 = mem[(32 * idx) + 128]
                                                                    _2625 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2625 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2625 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2625 + 68] = 0
                                                                    mem[_2625 + 100] = address(_2375)
                                                                    mem[_2625 + 132] = 128
                                                                    mem[_2625 + 164] = mem[_2625]
                                                                    t = 0
                                                                    while t < mem[_2625]:
                                                                        mem[_2625 + t + 196] = mem[_2625 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2625] % 32:
                                                                        require ext_code.size(address(_2547))
                                                                        call address(_2547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2375), 128, mem[_2625 + 164 len mem[_2625] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2625]) + _2625 + 196] = mem[floor32(mem[_2625]) + _2625 + -(mem[_2625] % 32) + 228 len mem[_2625] % 32]
                                                                        require ext_code.size(address(_2547))
                                                                        call address(_2547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2375), 128, mem[_2625], mem[_2625 + 196 len floor32(mem[_2625]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2464 = mem[(32 * idx) + 128]
                                                                    _2548 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2548 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2548 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2548 + 68] = 0
                                                                    mem[_2548 + 100] = this.address
                                                                    mem[_2548 + 132] = 128
                                                                    mem[_2548 + 164] = mem[_2548]
                                                                    t = 0
                                                                    while t < mem[_2548]:
                                                                        mem[_2548 + t + 196] = mem[_2548 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2548] % 32:
                                                                        require ext_code.size(address(_2464))
                                                                        call address(_2464).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2548 + 164 len mem[_2548] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2548]) + _2548 + 196] = mem[floor32(mem[_2548]) + _2548 + -(mem[_2548] % 32) + 228 len mem[_2548] % 32]
                                                                        require ext_code.size(address(_2464))
                                                                        call address(_2464).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2548], mem[_2548 + 196 len floor32(mem[_2548]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            else:
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if address(_2033) == address(_2036):
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
                                                        require idx < mem[(32 * arg1.length) + 128]
                                                        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2018):
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2269 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2377 = mem[(32 * idx) + 128]
                                                                _2465 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2465 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2465 + 36] = 0
                                                                mem[_2465 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2465 + 100] = address(_2269)
                                                                mem[_2465 + 132] = 128
                                                                mem[_2465 + 164] = mem[_2465]
                                                                t = 0
                                                                while t < mem[_2465]:
                                                                    mem[_2465 + t + 196] = mem[_2465 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2465] % 32:
                                                                    require ext_code.size(address(_2377))
                                                                    call address(_2377).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2269), 128, mem[_2465 + 164 len mem[_2465] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2465]) + _2465 + 196] = mem[floor32(mem[_2465]) + _2465 + -(mem[_2465] % 32) + 228 len mem[_2465] % 32]
                                                                    require ext_code.size(address(_2377))
                                                                    call address(_2377).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2269), 128, mem[_2465], mem[_2465 + 196 len floor32(mem[_2465]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2318 = mem[(32 * idx) + 128]
                                                                _2378 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2378 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2378 + 36] = 0
                                                                mem[_2378 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2378 + 100] = this.address
                                                                mem[_2378 + 132] = 128
                                                                mem[_2378 + 164] = mem[_2378]
                                                                t = 0
                                                                while t < mem[_2378]:
                                                                    mem[_2378 + t + 196] = mem[_2378 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2378] % 32:
                                                                    require ext_code.size(address(_2318))
                                                                    call address(_2318).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2378 + 164 len mem[_2378] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2378]) + _2378 + 196] = mem[floor32(mem[_2378]) + _2378 + -(mem[_2378] % 32) + 228 len mem[_2378] % 32]
                                                                    require ext_code.size(address(_2318))
                                                                    call address(_2318).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2378], mem[_2378 + 196 len floor32(mem[_2378]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2271 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2379 = mem[(32 * idx) + 128]
                                                                _2469 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2469 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2469 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2469 + 68] = 0
                                                                mem[_2469 + 100] = address(_2271)
                                                                mem[_2469 + 132] = 128
                                                                mem[_2469 + 164] = mem[_2469]
                                                                t = 0
                                                                while t < mem[_2469]:
                                                                    mem[_2469 + t + 196] = mem[_2469 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2469] % 32:
                                                                    require ext_code.size(address(_2379))
                                                                    call address(_2379).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2271), 128, mem[_2469 + 164 len mem[_2469] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2469]) + _2469 + 196] = mem[floor32(mem[_2469]) + _2469 + -(mem[_2469] % 32) + 228 len mem[_2469] % 32]
                                                                    require ext_code.size(address(_2379))
                                                                    call address(_2379).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2271), 128, mem[_2469], mem[_2469 + 196 len floor32(mem[_2469]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2320 = mem[(32 * idx) + 128]
                                                                _2380 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2380 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2380 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                mem[_2380 + 68] = 0
                                                                mem[_2380 + 100] = this.address
                                                                mem[_2380 + 132] = 128
                                                                mem[_2380 + 164] = mem[_2380]
                                                                t = 0
                                                                while t < mem[_2380]:
                                                                    mem[_2380 + t + 196] = mem[_2380 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2380] % 32:
                                                                    require ext_code.size(address(_2320))
                                                                    call address(_2320).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2380 + 164 len mem[_2380] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2380]) + _2380 + 196] = mem[floor32(mem[_2380]) + _2380 + -(mem[_2380] % 32) + 228 len mem[_2380] % 32]
                                                                    require ext_code.size(address(_2320))
                                                                    call address(_2320).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2380], mem[_2380 + 196 len floor32(mem[_2380]) + 32]
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
                                                            require idx < mem[(32 * arg1.length) + 128]
                                                            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2018):
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2381 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2555 = mem[(32 * idx) + 128]
                                                                    _2631 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2631 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2631 + 36] = 0
                                                                    mem[_2631 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2631 + 100] = address(_2381)
                                                                    mem[_2631 + 132] = 128
                                                                    mem[_2631 + 164] = mem[_2631]
                                                                    t = 0
                                                                    while t < mem[_2631]:
                                                                        mem[_2631 + t + 196] = mem[_2631 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2631] % 32:
                                                                        require ext_code.size(address(_2555))
                                                                        call address(_2555).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2381), 128, mem[_2631 + 164 len mem[_2631] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2631]) + _2631 + 196] = mem[floor32(mem[_2631]) + _2631 + -(mem[_2631] % 32) + 228 len mem[_2631] % 32]
                                                                        require ext_code.size(address(_2555))
                                                                        call address(_2555).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2381), 128, mem[_2631], mem[_2631 + 196 len floor32(mem[_2631]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2474 = mem[(32 * idx) + 128]
                                                                    _2556 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2556 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2556 + 36] = 0
                                                                    mem[_2556 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2556 + 100] = this.address
                                                                    mem[_2556 + 132] = 128
                                                                    mem[_2556 + 164] = mem[_2556]
                                                                    t = 0
                                                                    while t < mem[_2556]:
                                                                        mem[_2556 + t + 196] = mem[_2556 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2556] % 32:
                                                                        require ext_code.size(address(_2474))
                                                                        call address(_2474).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2556 + 164 len mem[_2556] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2556]) + _2556 + 196] = mem[floor32(mem[_2556]) + _2556 + -(mem[_2556] % 32) + 228 len mem[_2556] % 32]
                                                                        require ext_code.size(address(_2474))
                                                                        call address(_2474).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2556], mem[_2556 + 196 len floor32(mem[_2556]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2383 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2557 = mem[(32 * idx) + 128]
                                                                    _2635 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2635 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2635 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2635 + 68] = 0
                                                                    mem[_2635 + 100] = address(_2383)
                                                                    mem[_2635 + 132] = 128
                                                                    mem[_2635 + 164] = mem[_2635]
                                                                    t = 0
                                                                    while t < mem[_2635]:
                                                                        mem[_2635 + t + 196] = mem[_2635 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2635] % 32:
                                                                        require ext_code.size(address(_2557))
                                                                        call address(_2557).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2383), 128, mem[_2635 + 164 len mem[_2635] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2635]) + _2635 + 196] = mem[floor32(mem[_2635]) + _2635 + -(mem[_2635] % 32) + 228 len mem[_2635] % 32]
                                                                        require ext_code.size(address(_2557))
                                                                        call address(_2557).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2383), 128, mem[_2635], mem[_2635 + 196 len floor32(mem[_2635]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2476 = mem[(32 * idx) + 128]
                                                                    _2558 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2558 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2558 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                    mem[_2558 + 68] = 0
                                                                    mem[_2558 + 100] = this.address
                                                                    mem[_2558 + 132] = 128
                                                                    mem[_2558 + 164] = mem[_2558]
                                                                    t = 0
                                                                    while t < mem[_2558]:
                                                                        mem[_2558 + t + 196] = mem[_2558 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2558] % 32:
                                                                        require ext_code.size(address(_2476))
                                                                        call address(_2476).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2558 + 164 len mem[_2558] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2558]) + _2558 + 196] = mem[floor32(mem[_2558]) + _2558 + -(mem[_2558] % 32) + 228 len mem[_2558] % 32]
                                                                        require ext_code.size(address(_2476))
                                                                        call address(_2476).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2558], mem[_2558 + 196 len floor32(mem[_2558]) + 32]
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
                                                        require idx < mem[(32 * arg1.length) + 128]
                                                        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2018):
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2275 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2385 = mem[(32 * idx) + 128]
                                                                _2477 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2477 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2477 + 36] = 0
                                                                mem[_2477 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2477 + 100] = address(_2275)
                                                                mem[_2477 + 132] = 128
                                                                mem[_2477 + 164] = mem[_2477]
                                                                t = 0
                                                                while t < mem[_2477]:
                                                                    mem[_2477 + t + 196] = mem[_2477 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2477] % 32:
                                                                    require ext_code.size(address(_2385))
                                                                    call address(_2385).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2275), 128, mem[_2477 + 164 len mem[_2477] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2477]) + _2477 + 196] = mem[floor32(mem[_2477]) + _2477 + -(mem[_2477] % 32) + 228 len mem[_2477] % 32]
                                                                    require ext_code.size(address(_2385))
                                                                    call address(_2385).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2275), 128, mem[_2477], mem[_2477 + 196 len floor32(mem[_2477]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2324 = mem[(32 * idx) + 128]
                                                                _2386 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2386 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2386 + 36] = 0
                                                                mem[_2386 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2386 + 100] = this.address
                                                                mem[_2386 + 132] = 128
                                                                mem[_2386 + 164] = mem[_2386]
                                                                t = 0
                                                                while t < mem[_2386]:
                                                                    mem[_2386 + t + 196] = mem[_2386 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2386] % 32:
                                                                    require ext_code.size(address(_2324))
                                                                    call address(_2324).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2386 + 164 len mem[_2386] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2386]) + _2386 + 196] = mem[floor32(mem[_2386]) + _2386 + -(mem[_2386] % 32) + 228 len mem[_2386] % 32]
                                                                    require ext_code.size(address(_2324))
                                                                    call address(_2324).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2386], mem[_2386 + 196 len floor32(mem[_2386]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                        else:
                                                            if idx < mem[96] - 1:
                                                                require idx + 1 < mem[96]
                                                                _2277 = mem[(32 * idx + 1) + 128]
                                                                require idx < mem[96]
                                                                _2387 = mem[(32 * idx) + 128]
                                                                _2481 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2481 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2481 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2481 + 68] = 0
                                                                mem[_2481 + 100] = address(_2277)
                                                                mem[_2481 + 132] = 128
                                                                mem[_2481 + 164] = mem[_2481]
                                                                t = 0
                                                                while t < mem[_2481]:
                                                                    mem[_2481 + t + 196] = mem[_2481 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2481] % 32:
                                                                    require ext_code.size(address(_2387))
                                                                    call address(_2387).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2277), 128, mem[_2481 + 164 len mem[_2481] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2481]) + _2481 + 196] = mem[floor32(mem[_2481]) + _2481 + -(mem[_2481] % 32) + 228 len mem[_2481] % 32]
                                                                    require ext_code.size(address(_2387))
                                                                    call address(_2387).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2277), 128, mem[_2481], mem[_2481 + 196 len floor32(mem[_2481]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                            else:
                                                                require idx < mem[96]
                                                                _2326 = mem[(32 * idx) + 128]
                                                                _2388 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_2388 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2388 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                mem[_2388 + 68] = 0
                                                                mem[_2388 + 100] = this.address
                                                                mem[_2388 + 132] = 128
                                                                mem[_2388 + 164] = mem[_2388]
                                                                t = 0
                                                                while t < mem[_2388]:
                                                                    mem[_2388 + t + 196] = mem[_2388 + t + 32]
                                                                    t = t + 32
                                                                    continue 
                                                                if not mem[_2388] % 32:
                                                                    require ext_code.size(address(_2326))
                                                                    call address(_2326).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2388 + 164 len mem[_2388] + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        idx = idx + 1
                                                                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                        continue 
                                                                else:
                                                                    mem[floor32(mem[_2388]) + _2388 + 196] = mem[floor32(mem[_2388]) + _2388 + -(mem[_2388] % 32) + 228 len mem[_2388] % 32]
                                                                    require ext_code.size(address(_2326))
                                                                    call address(_2326).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2388], mem[_2388 + 196 len floor32(mem[_2388]) + 32]
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
                                                            require idx < mem[(32 * arg1.length) + 128]
                                                            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == address(_2018):
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2389 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2565 = mem[(32 * idx) + 128]
                                                                    _2641 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2641 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2641 + 36] = 0
                                                                    mem[_2641 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2641 + 100] = address(_2389)
                                                                    mem[_2641 + 132] = 128
                                                                    mem[_2641 + 164] = mem[_2641]
                                                                    t = 0
                                                                    while t < mem[_2641]:
                                                                        mem[_2641 + t + 196] = mem[_2641 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2641] % 32:
                                                                        require ext_code.size(address(_2565))
                                                                        call address(_2565).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2389), 128, mem[_2641 + 164 len mem[_2641] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2641]) + _2641 + 196] = mem[floor32(mem[_2641]) + _2641 + -(mem[_2641] % 32) + 228 len mem[_2641] % 32]
                                                                        require ext_code.size(address(_2565))
                                                                        call address(_2565).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2389), 128, mem[_2641], mem[_2641 + 196 len floor32(mem[_2641]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2486 = mem[(32 * idx) + 128]
                                                                    _2566 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2566 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2566 + 36] = 0
                                                                    mem[_2566 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2566 + 100] = this.address
                                                                    mem[_2566 + 132] = 128
                                                                    mem[_2566 + 164] = mem[_2566]
                                                                    t = 0
                                                                    while t < mem[_2566]:
                                                                        mem[_2566 + t + 196] = mem[_2566 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2566] % 32:
                                                                        require ext_code.size(address(_2486))
                                                                        call address(_2486).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2566 + 164 len mem[_2566] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2566]) + _2566 + 196] = mem[floor32(mem[_2566]) + _2566 + -(mem[_2566] % 32) + 228 len mem[_2566] % 32]
                                                                        require ext_code.size(address(_2486))
                                                                        call address(_2486).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2566], mem[_2566 + 196 len floor32(mem[_2566]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                            else:
                                                                if idx < mem[96] - 1:
                                                                    require idx + 1 < mem[96]
                                                                    _2391 = mem[(32 * idx + 1) + 128]
                                                                    require idx < mem[96]
                                                                    _2567 = mem[(32 * idx) + 128]
                                                                    _2645 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2645 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2645 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2645 + 68] = 0
                                                                    mem[_2645 + 100] = address(_2391)
                                                                    mem[_2645 + 132] = 128
                                                                    mem[_2645 + 164] = mem[_2645]
                                                                    t = 0
                                                                    while t < mem[_2645]:
                                                                        mem[_2645 + t + 196] = mem[_2645 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2645] % 32:
                                                                        require ext_code.size(address(_2567))
                                                                        call address(_2567).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2391), 128, mem[_2645 + 164 len mem[_2645] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2645]) + _2645 + 196] = mem[floor32(mem[_2645]) + _2645 + -(mem[_2645] % 32) + 228 len mem[_2645] % 32]
                                                                        require ext_code.size(address(_2567))
                                                                        call address(_2567).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2391), 128, mem[_2645], mem[_2645 + 196 len floor32(mem[_2645]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                else:
                                                                    require idx < mem[96]
                                                                    _2488 = mem[(32 * idx) + 128]
                                                                    _2568 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_2568 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2568 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                    mem[_2568 + 68] = 0
                                                                    mem[_2568 + 100] = this.address
                                                                    mem[_2568 + 132] = 128
                                                                    mem[_2568 + 164] = mem[_2568]
                                                                    t = 0
                                                                    while t < mem[_2568]:
                                                                        mem[_2568 + t + 196] = mem[_2568 + t + 32]
                                                                        t = t + 32
                                                                        continue 
                                                                    if not mem[_2568] % 32:
                                                                        require ext_code.size(address(_2488))
                                                                        call address(_2488).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2568 + 164 len mem[_2568] + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
                                                                    else:
                                                                        mem[floor32(mem[_2568]) + _2568 + 196] = mem[floor32(mem[_2568]) + _2568 + -(mem[_2568] % 32) + 228 len mem[_2568] % 32]
                                                                        require ext_code.size(address(_2488))
                                                                        call address(_2488).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2568], mem[_2568 + 196 len floor32(mem[_2568]) + 32]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                                                            continue 
    require stor2[address(msg.sender)]
}



}
