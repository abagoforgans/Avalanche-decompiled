contract main {




// =====================  Runtime code  =====================


#
#  - sub_62b3ccd9(?)
#
address stor0;
address stor1;

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function trade(address[] arg1, address[] arg2, uint256 arg3, uint256 arg4) {
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
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg1.length
        _3989 = mem[(32 * idx) + 128]
        require idx + 1 < arg1.length
        _3992 = mem[(32 * idx + 1) + 128]
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
            if address(_3989) == address(_3989):
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
            if address(_3989) == address(_3992):
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
    if s < arg4:
        revert with 0, 'amount_out is not big enough'
    idx = 0
    s = arg3
    while idx < arg2.length:
        require idx < mem[96]
        if mem[(32 * idx) + 140 len 20] != stor1:
            require idx < mem[96]
            _7969 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _7974 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx < mem[(32 * arg1.length) + 128]
                require idx < mem[96]
                _8005 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _8015 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(_8005) == address(_8005):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7969):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8583 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8584 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8584 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8584 + 36] = 0
                                    mem[_8584 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8584 + 100] = this.address
                                    mem[_8584 + 132] = 128
                                    mem[_8584 + 164] = mem[_8584]
                                    t = 0
                                    while t < mem[_8584]:
                                        mem[_8584 + t + 196] = mem[_8584 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8584] % 32:
                                        require ext_code.size(address(_8583))
                                        call address(_8583).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8584 + 164 len mem[_8584] + 32]
                                    else:
                                        mem[floor32(mem[_8584]) + _8584 + 196] = mem[floor32(mem[_8584]) + _8584 + -(mem[_8584] % 32) + 228 len mem[_8584] % 32]
                                        require ext_code.size(address(_8583))
                                        call address(_8583).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8584], mem[_8584 + 196 len floor32(mem[_8584]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8584 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8584 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8502 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8710 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8711 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8711 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8711 + 36] = 0
                                    mem[_8711 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8711 + 100] = address(_8502)
                                    mem[_8711 + 132] = 128
                                    mem[_8711 + 164] = mem[_8711]
                                    t = 0
                                    while t < mem[_8711]:
                                        mem[_8711 + t + 196] = mem[_8711 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8711] % 32:
                                        require ext_code.size(address(_8710))
                                        call address(_8710).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8502), 128, mem[_8711 + 164 len mem[_8711] + 32]
                                    else:
                                        mem[floor32(mem[_8711]) + _8711 + 196] = mem[floor32(mem[_8711]) + _8711 + -(mem[_8711] % 32) + 228 len mem[_8711] % 32]
                                        require ext_code.size(address(_8710))
                                        call address(_8710).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8502), 128, mem[_8711], mem[_8711 + 196 len floor32(mem[_8711]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8711 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8711 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8586 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8587 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8587 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8587 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8587 + 68] = 0
                                    mem[_8587 + 100] = this.address
                                    mem[_8587 + 132] = 128
                                    mem[_8587 + 164] = mem[_8587]
                                    t = 0
                                    while t < mem[_8587]:
                                        mem[_8587 + t + 196] = mem[_8587 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8587] % 32:
                                        require ext_code.size(address(_8586))
                                        call address(_8586).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8587 + 164 len mem[_8587] + 32]
                                    else:
                                        mem[floor32(mem[_8587]) + _8587 + 196] = mem[floor32(mem[_8587]) + _8587 + -(mem[_8587] % 32) + 228 len mem[_8587] % 32]
                                        require ext_code.size(address(_8586))
                                        call address(_8586).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8587], mem[_8587 + 196 len floor32(mem[_8587]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8587 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8587 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8504 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8715 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8716 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8716 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8716 + 68] = 0
                                    mem[_8716 + 100] = address(_8504)
                                    mem[_8716 + 132] = 128
                                    mem[_8716 + 164] = mem[_8716]
                                    t = 0
                                    while t < mem[_8716]:
                                        mem[_8716 + t + 196] = mem[_8716 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8716] % 32:
                                        require ext_code.size(address(_8715))
                                        call address(_8715).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8504), 128, mem[_8716 + 164 len mem[_8716] + 32]
                                    else:
                                        mem[floor32(mem[_8716]) + _8716 + 196] = mem[floor32(mem[_8716]) + _8716 + -(mem[_8716] % 32) + 228 len mem[_8716] % 32]
                                        require ext_code.size(address(_8715))
                                        call address(_8715).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8504), 128, mem[_8716], mem[_8716 + 196 len floor32(mem[_8716]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8716 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8716 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_7969):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8893 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8894 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8894 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8894 + 36] = 0
                                mem[_8894 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_8894 + 100] = this.address
                                mem[_8894 + 132] = 128
                                mem[_8894 + 164] = mem[_8894]
                                t = 0
                                while t < mem[_8894]:
                                    mem[_8894 + t + 196] = mem[_8894 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8894] % 32:
                                    require ext_code.size(address(_8893))
                                    call address(_8893).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8894 + 164 len mem[_8894] + 32]
                                else:
                                    mem[floor32(mem[_8894]) + _8894 + 196] = mem[floor32(mem[_8894]) + _8894 + -(mem[_8894] % 32) + 228 len mem[_8894] % 32]
                                    require ext_code.size(address(_8893))
                                    call address(_8893).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8894], mem[_8894 + 196 len floor32(mem[_8894]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8894 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8894 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8720 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9112 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9113 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9113 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9113 + 36] = 0
                                mem[_9113 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_9113 + 100] = address(_8720)
                                mem[_9113 + 132] = 128
                                mem[_9113 + 164] = mem[_9113]
                                t = 0
                                while t < mem[_9113]:
                                    mem[_9113 + t + 196] = mem[_9113 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9113] % 32:
                                    require ext_code.size(address(_9112))
                                    call address(_9112).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8720), 128, mem[_9113 + 164 len mem[_9113] + 32]
                                else:
                                    mem[floor32(mem[_9113]) + _9113 + 196] = mem[floor32(mem[_9113]) + _9113 + -(mem[_9113] % 32) + 228 len mem[_9113] % 32]
                                    require ext_code.size(address(_9112))
                                    call address(_9112).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8720), 128, mem[_9113], mem[_9113 + 196 len floor32(mem[_9113]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9113 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9113 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8896 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8897 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8897 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8897 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_8897 + 68] = 0
                                mem[_8897 + 100] = this.address
                                mem[_8897 + 132] = 128
                                mem[_8897 + 164] = mem[_8897]
                                t = 0
                                while t < mem[_8897]:
                                    mem[_8897 + t + 196] = mem[_8897 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8897] % 32:
                                    require ext_code.size(address(_8896))
                                    call address(_8896).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8897 + 164 len mem[_8897] + 32]
                                else:
                                    mem[floor32(mem[_8897]) + _8897 + 196] = mem[floor32(mem[_8897]) + _8897 + -(mem[_8897] % 32) + 228 len mem[_8897] % 32]
                                    require ext_code.size(address(_8896))
                                    call address(_8896).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8897], mem[_8897 + 196 len floor32(mem[_8897]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8897 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8897 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8722 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9117 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9118 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9118 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9118 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_9118 + 68] = 0
                                mem[_9118 + 100] = address(_8722)
                                mem[_9118 + 132] = 128
                                mem[_9118 + 164] = mem[_9118]
                                t = 0
                                while t < mem[_9118]:
                                    mem[_9118 + t + 196] = mem[_9118 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9118] % 32:
                                    require ext_code.size(address(_9117))
                                    call address(_9117).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8722), 128, mem[_9118 + 164 len mem[_9118] + 32]
                                else:
                                    mem[floor32(mem[_9118]) + _9118 + 196] = mem[floor32(mem[_9118]) + _9118 + -(mem[_9118] % 32) + 228 len mem[_9118] % 32]
                                    require ext_code.size(address(_9117))
                                    call address(_9117).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8722), 128, mem[_9118], mem[_9118 + 196 len floor32(mem[_9118]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9118 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9118 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_7969):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8591 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8592 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8592 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8592 + 36] = 0
                                mem[_8592 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8592 + 100] = this.address
                                mem[_8592 + 132] = 128
                                mem[_8592 + 164] = mem[_8592]
                                t = 0
                                while t < mem[_8592]:
                                    mem[_8592 + t + 196] = mem[_8592 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8592] % 32:
                                    require ext_code.size(address(_8591))
                                    call address(_8591).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8592 + 164 len mem[_8592] + 32]
                                else:
                                    mem[floor32(mem[_8592]) + _8592 + 196] = mem[floor32(mem[_8592]) + _8592 + -(mem[_8592] % 32) + 228 len mem[_8592] % 32]
                                    require ext_code.size(address(_8591))
                                    call address(_8591).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8592], mem[_8592 + 196 len floor32(mem[_8592]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8592 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8592 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8508 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _8724 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8725 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8725 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8725 + 36] = 0
                                mem[_8725 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8725 + 100] = address(_8508)
                                mem[_8725 + 132] = 128
                                mem[_8725 + 164] = mem[_8725]
                                t = 0
                                while t < mem[_8725]:
                                    mem[_8725 + t + 196] = mem[_8725 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8725] % 32:
                                    require ext_code.size(address(_8724))
                                    call address(_8724).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8508), 128, mem[_8725 + 164 len mem[_8725] + 32]
                                else:
                                    mem[floor32(mem[_8725]) + _8725 + 196] = mem[floor32(mem[_8725]) + _8725 + -(mem[_8725] % 32) + 228 len mem[_8725] % 32]
                                    require ext_code.size(address(_8724))
                                    call address(_8724).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8508), 128, mem[_8725], mem[_8725 + 196 len floor32(mem[_8725]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8725 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8725 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8594 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8595 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8595 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8595 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8595 + 68] = 0
                                mem[_8595 + 100] = this.address
                                mem[_8595 + 132] = 128
                                mem[_8595 + 164] = mem[_8595]
                                t = 0
                                while t < mem[_8595]:
                                    mem[_8595 + t + 196] = mem[_8595 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8595] % 32:
                                    require ext_code.size(address(_8594))
                                    call address(_8594).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8595 + 164 len mem[_8595] + 32]
                                else:
                                    mem[floor32(mem[_8595]) + _8595 + 196] = mem[floor32(mem[_8595]) + _8595 + -(mem[_8595] % 32) + 228 len mem[_8595] % 32]
                                    require ext_code.size(address(_8594))
                                    call address(_8594).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8595], mem[_8595 + 196 len floor32(mem[_8595]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8595 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8595 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8510 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _8729 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8730 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8730 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8730 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8730 + 68] = 0
                                mem[_8730 + 100] = address(_8510)
                                mem[_8730 + 132] = 128
                                mem[_8730 + 164] = mem[_8730]
                                t = 0
                                while t < mem[_8730]:
                                    mem[_8730 + t + 196] = mem[_8730 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8730] % 32:
                                    require ext_code.size(address(_8729))
                                    call address(_8729).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8510), 128, mem[_8730 + 164 len mem[_8730] + 32]
                                else:
                                    mem[floor32(mem[_8730]) + _8730 + 196] = mem[floor32(mem[_8730]) + _8730 + -(mem[_8730] % 32) + 228 len mem[_8730] % 32]
                                    require ext_code.size(address(_8729))
                                    call address(_8729).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8510), 128, mem[_8730], mem[_8730 + 196 len floor32(mem[_8730]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8730 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8730 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
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
                    require idx < mem[96]
                    if mem[(32 * idx) + 140 len 20] == address(_7969):
                        if idx >= mem[(32 * arg1.length) + 128] - 1:
                            require idx < mem[(32 * arg1.length) + 128]
                            _8905 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _8906 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_8906 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_8906 + 36] = 0
                            mem[_8906 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_8906 + 100] = this.address
                            mem[_8906 + 132] = 128
                            mem[_8906 + 164] = mem[_8906]
                            t = 0
                            while t < mem[_8906]:
                                mem[_8906 + t + 196] = mem[_8906 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_8906] % 32:
                                require ext_code.size(address(_8905))
                                call address(_8905).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8906 + 164 len mem[_8906] + 32]
                            else:
                                mem[floor32(mem[_8906]) + _8906 + 196] = mem[floor32(mem[_8906]) + _8906 + -(mem[_8906] % 32) + 228 len mem[_8906] % 32]
                                require ext_code.size(address(_8905))
                                call address(_8905).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8906], mem[_8906 + 196 len floor32(mem[_8906]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_8906 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_8906 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            _8734 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            require idx < mem[(32 * arg1.length) + 128]
                            _9124 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _9125 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_9125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_9125 + 36] = 0
                            mem[_9125 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_9125 + 100] = address(_8734)
                            mem[_9125 + 132] = 128
                            mem[_9125 + 164] = mem[_9125]
                            t = 0
                            while t < mem[_9125]:
                                mem[_9125 + t + 196] = mem[_9125 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_9125] % 32:
                                require ext_code.size(address(_9124))
                                call address(_9124).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8734), 128, mem[_9125 + 164 len mem[_9125] + 32]
                            else:
                                mem[floor32(mem[_9125]) + _9125 + 196] = mem[floor32(mem[_9125]) + _9125 + -(mem[_9125] % 32) + 228 len mem[_9125] % 32]
                                require ext_code.size(address(_9124))
                                call address(_9124).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8734), 128, mem[_9125], mem[_9125 + 196 len floor32(mem[_9125]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_9125 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_9125 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if idx >= mem[(32 * arg1.length) + 128] - 1:
                            require idx < mem[(32 * arg1.length) + 128]
                            _8908 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _8909 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_8909 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_8909 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_8909 + 68] = 0
                            mem[_8909 + 100] = this.address
                            mem[_8909 + 132] = 128
                            mem[_8909 + 164] = mem[_8909]
                            t = 0
                            while t < mem[_8909]:
                                mem[_8909 + t + 196] = mem[_8909 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_8909] % 32:
                                require ext_code.size(address(_8908))
                                call address(_8908).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8909 + 164 len mem[_8909] + 32]
                            else:
                                mem[floor32(mem[_8909]) + _8909 + 196] = mem[floor32(mem[_8909]) + _8909 + -(mem[_8909] % 32) + 228 len mem[_8909] % 32]
                                require ext_code.size(address(_8908))
                                call address(_8908).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8909], mem[_8909 + 196 len floor32(mem[_8909]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_8909 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_8909 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            _8736 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            require idx < mem[(32 * arg1.length) + 128]
                            _9129 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _9130 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_9130 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_9130 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_9130 + 68] = 0
                            mem[_9130 + 100] = address(_8736)
                            mem[_9130 + 132] = 128
                            mem[_9130 + 164] = mem[_9130]
                            t = 0
                            while t < mem[_9130]:
                                mem[_9130 + t + 196] = mem[_9130 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_9130] % 32:
                                require ext_code.size(address(_9129))
                                call address(_9129).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8736), 128, mem[_9130 + 164 len mem[_9130] + 32]
                            else:
                                mem[floor32(mem[_9130]) + _9130 + 196] = mem[floor32(mem[_9130]) + _9130 + -(mem[_9130] % 32) + 228 len mem[_9130] % 32]
                                require ext_code.size(address(_9129))
                                call address(_9129).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8736), 128, mem[_9130], mem[_9130 + 196 len floor32(mem[_9130]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_9130 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_9130 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(_8005) == address(_8015):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7969):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8599 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8600 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8600 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8600 + 36] = 0
                                    mem[_8600 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8600 + 100] = this.address
                                    mem[_8600 + 132] = 128
                                    mem[_8600 + 164] = mem[_8600]
                                    t = 0
                                    while t < mem[_8600]:
                                        mem[_8600 + t + 196] = mem[_8600 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8600] % 32:
                                        require ext_code.size(address(_8599))
                                        call address(_8599).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8600 + 164 len mem[_8600] + 32]
                                    else:
                                        mem[floor32(mem[_8600]) + _8600 + 196] = mem[floor32(mem[_8600]) + _8600 + -(mem[_8600] % 32) + 228 len mem[_8600] % 32]
                                        require ext_code.size(address(_8599))
                                        call address(_8599).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8600], mem[_8600 + 196 len floor32(mem[_8600]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8600 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8600 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8514 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8738 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8739 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8739 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8739 + 36] = 0
                                    mem[_8739 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8739 + 100] = address(_8514)
                                    mem[_8739 + 132] = 128
                                    mem[_8739 + 164] = mem[_8739]
                                    t = 0
                                    while t < mem[_8739]:
                                        mem[_8739 + t + 196] = mem[_8739 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8739] % 32:
                                        require ext_code.size(address(_8738))
                                        call address(_8738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8514), 128, mem[_8739 + 164 len mem[_8739] + 32]
                                    else:
                                        mem[floor32(mem[_8739]) + _8739 + 196] = mem[floor32(mem[_8739]) + _8739 + -(mem[_8739] % 32) + 228 len mem[_8739] % 32]
                                        require ext_code.size(address(_8738))
                                        call address(_8738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8514), 128, mem[_8739], mem[_8739 + 196 len floor32(mem[_8739]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8739 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8739 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8602 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8603 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8603 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8603 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8603 + 68] = 0
                                    mem[_8603 + 100] = this.address
                                    mem[_8603 + 132] = 128
                                    mem[_8603 + 164] = mem[_8603]
                                    t = 0
                                    while t < mem[_8603]:
                                        mem[_8603 + t + 196] = mem[_8603 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8603] % 32:
                                        require ext_code.size(address(_8602))
                                        call address(_8602).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8603 + 164 len mem[_8603] + 32]
                                    else:
                                        mem[floor32(mem[_8603]) + _8603 + 196] = mem[floor32(mem[_8603]) + _8603 + -(mem[_8603] % 32) + 228 len mem[_8603] % 32]
                                        require ext_code.size(address(_8602))
                                        call address(_8602).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8603], mem[_8603 + 196 len floor32(mem[_8603]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8603 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8603 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8516 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8743 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8744 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8744 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8744 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8744 + 68] = 0
                                    mem[_8744 + 100] = address(_8516)
                                    mem[_8744 + 132] = 128
                                    mem[_8744 + 164] = mem[_8744]
                                    t = 0
                                    while t < mem[_8744]:
                                        mem[_8744 + t + 196] = mem[_8744 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8744] % 32:
                                        require ext_code.size(address(_8743))
                                        call address(_8743).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8516), 128, mem[_8744 + 164 len mem[_8744] + 32]
                                    else:
                                        mem[floor32(mem[_8744]) + _8744 + 196] = mem[floor32(mem[_8744]) + _8744 + -(mem[_8744] % 32) + 228 len mem[_8744] % 32]
                                        require ext_code.size(address(_8743))
                                        call address(_8743).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8516), 128, mem[_8744], mem[_8744 + 196 len floor32(mem[_8744]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8744 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8744 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_7969):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8917 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8918 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8918 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8918 + 36] = 0
                                mem[_8918 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_8918 + 100] = this.address
                                mem[_8918 + 132] = 128
                                mem[_8918 + 164] = mem[_8918]
                                t = 0
                                while t < mem[_8918]:
                                    mem[_8918 + t + 196] = mem[_8918 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8918] % 32:
                                    require ext_code.size(address(_8917))
                                    call address(_8917).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8918 + 164 len mem[_8918] + 32]
                                else:
                                    mem[floor32(mem[_8918]) + _8918 + 196] = mem[floor32(mem[_8918]) + _8918 + -(mem[_8918] % 32) + 228 len mem[_8918] % 32]
                                    require ext_code.size(address(_8917))
                                    call address(_8917).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8918], mem[_8918 + 196 len floor32(mem[_8918]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8918 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8918 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8748 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9136 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9137 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9137 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9137 + 36] = 0
                                mem[_9137 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_9137 + 100] = address(_8748)
                                mem[_9137 + 132] = 128
                                mem[_9137 + 164] = mem[_9137]
                                t = 0
                                while t < mem[_9137]:
                                    mem[_9137 + t + 196] = mem[_9137 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9137] % 32:
                                    require ext_code.size(address(_9136))
                                    call address(_9136).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8748), 128, mem[_9137 + 164 len mem[_9137] + 32]
                                else:
                                    mem[floor32(mem[_9137]) + _9137 + 196] = mem[floor32(mem[_9137]) + _9137 + -(mem[_9137] % 32) + 228 len mem[_9137] % 32]
                                    require ext_code.size(address(_9136))
                                    call address(_9136).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8748), 128, mem[_9137], mem[_9137 + 196 len floor32(mem[_9137]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9137 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9137 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8920 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8921 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8921 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8921 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_8921 + 68] = 0
                                mem[_8921 + 100] = this.address
                                mem[_8921 + 132] = 128
                                mem[_8921 + 164] = mem[_8921]
                                t = 0
                                while t < mem[_8921]:
                                    mem[_8921 + t + 196] = mem[_8921 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8921] % 32:
                                    require ext_code.size(address(_8920))
                                    call address(_8920).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8921 + 164 len mem[_8921] + 32]
                                else:
                                    mem[floor32(mem[_8921]) + _8921 + 196] = mem[floor32(mem[_8921]) + _8921 + -(mem[_8921] % 32) + 228 len mem[_8921] % 32]
                                    require ext_code.size(address(_8920))
                                    call address(_8920).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8921], mem[_8921 + 196 len floor32(mem[_8921]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8921 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8921 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8750 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9141 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9142 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9142 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9142 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_9142 + 68] = 0
                                mem[_9142 + 100] = address(_8750)
                                mem[_9142 + 132] = 128
                                mem[_9142 + 164] = mem[_9142]
                                t = 0
                                while t < mem[_9142]:
                                    mem[_9142 + t + 196] = mem[_9142 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9142] % 32:
                                    require ext_code.size(address(_9141))
                                    call address(_9141).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8750), 128, mem[_9142 + 164 len mem[_9142] + 32]
                                else:
                                    mem[floor32(mem[_9142]) + _9142 + 196] = mem[floor32(mem[_9142]) + _9142 + -(mem[_9142] % 32) + 228 len mem[_9142] % 32]
                                    require ext_code.size(address(_9141))
                                    call address(_9141).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8750), 128, mem[_9142], mem[_9142 + 196 len floor32(mem[_9142]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9142 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9142 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_7969):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8607 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8608 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8608 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8608 + 36] = 0
                                mem[_8608 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8608 + 100] = this.address
                                mem[_8608 + 132] = 128
                                mem[_8608 + 164] = mem[_8608]
                                t = 0
                                while t < mem[_8608]:
                                    mem[_8608 + t + 196] = mem[_8608 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8608] % 32:
                                    require ext_code.size(address(_8607))
                                    call address(_8607).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8608 + 164 len mem[_8608] + 32]
                                else:
                                    mem[floor32(mem[_8608]) + _8608 + 196] = mem[floor32(mem[_8608]) + _8608 + -(mem[_8608] % 32) + 228 len mem[_8608] % 32]
                                    require ext_code.size(address(_8607))
                                    call address(_8607).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8608], mem[_8608 + 196 len floor32(mem[_8608]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8608 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8608 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8520 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _8752 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8753 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8753 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8753 + 36] = 0
                                mem[_8753 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8753 + 100] = address(_8520)
                                mem[_8753 + 132] = 128
                                mem[_8753 + 164] = mem[_8753]
                                t = 0
                                while t < mem[_8753]:
                                    mem[_8753 + t + 196] = mem[_8753 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8753] % 32:
                                    require ext_code.size(address(_8752))
                                    call address(_8752).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8520), 128, mem[_8753 + 164 len mem[_8753] + 32]
                                else:
                                    mem[floor32(mem[_8753]) + _8753 + 196] = mem[floor32(mem[_8753]) + _8753 + -(mem[_8753] % 32) + 228 len mem[_8753] % 32]
                                    require ext_code.size(address(_8752))
                                    call address(_8752).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8520), 128, mem[_8753], mem[_8753 + 196 len floor32(mem[_8753]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8753 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8753 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8610 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8611 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8611 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8611 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8611 + 68] = 0
                                mem[_8611 + 100] = this.address
                                mem[_8611 + 132] = 128
                                mem[_8611 + 164] = mem[_8611]
                                t = 0
                                while t < mem[_8611]:
                                    mem[_8611 + t + 196] = mem[_8611 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8611] % 32:
                                    require ext_code.size(address(_8610))
                                    call address(_8610).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8611 + 164 len mem[_8611] + 32]
                                else:
                                    mem[floor32(mem[_8611]) + _8611 + 196] = mem[floor32(mem[_8611]) + _8611 + -(mem[_8611] % 32) + 228 len mem[_8611] % 32]
                                    require ext_code.size(address(_8610))
                                    call address(_8610).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8611], mem[_8611 + 196 len floor32(mem[_8611]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8611 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8611 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8522 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _8757 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8758 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8758 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8758 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8758 + 68] = 0
                                mem[_8758 + 100] = address(_8522)
                                mem[_8758 + 132] = 128
                                mem[_8758 + 164] = mem[_8758]
                                t = 0
                                while t < mem[_8758]:
                                    mem[_8758 + t + 196] = mem[_8758 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8758] % 32:
                                    require ext_code.size(address(_8757))
                                    call address(_8757).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8522), 128, mem[_8758 + 164 len mem[_8758] + 32]
                                else:
                                    mem[floor32(mem[_8758]) + _8758 + 196] = mem[floor32(mem[_8758]) + _8758 + -(mem[_8758] % 32) + 228 len mem[_8758] % 32]
                                    require ext_code.size(address(_8757))
                                    call address(_8757).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8522), 128, mem[_8758], mem[_8758 + 196 len floor32(mem[_8758]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8758 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8758 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
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
                    require idx < mem[96]
                    if mem[(32 * idx) + 140 len 20] == address(_7969):
                        if idx >= mem[(32 * arg1.length) + 128] - 1:
                            require idx < mem[(32 * arg1.length) + 128]
                            _8929 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _8930 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_8930 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_8930 + 36] = 0
                            mem[_8930 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_8930 + 100] = this.address
                            mem[_8930 + 132] = 128
                            mem[_8930 + 164] = mem[_8930]
                            t = 0
                            while t < mem[_8930]:
                                mem[_8930 + t + 196] = mem[_8930 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_8930] % 32:
                                require ext_code.size(address(_8929))
                                call address(_8929).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8930 + 164 len mem[_8930] + 32]
                            else:
                                mem[floor32(mem[_8930]) + _8930 + 196] = mem[floor32(mem[_8930]) + _8930 + -(mem[_8930] % 32) + 228 len mem[_8930] % 32]
                                require ext_code.size(address(_8929))
                                call address(_8929).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8930], mem[_8930 + 196 len floor32(mem[_8930]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_8930 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_8930 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            _8762 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            require idx < mem[(32 * arg1.length) + 128]
                            _9148 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _9149 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_9149 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_9149 + 36] = 0
                            mem[_9149 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_9149 + 100] = address(_8762)
                            mem[_9149 + 132] = 128
                            mem[_9149 + 164] = mem[_9149]
                            t = 0
                            while t < mem[_9149]:
                                mem[_9149 + t + 196] = mem[_9149 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_9149] % 32:
                                require ext_code.size(address(_9148))
                                call address(_9148).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8762), 128, mem[_9149 + 164 len mem[_9149] + 32]
                            else:
                                mem[floor32(mem[_9149]) + _9149 + 196] = mem[floor32(mem[_9149]) + _9149 + -(mem[_9149] % 32) + 228 len mem[_9149] % 32]
                                require ext_code.size(address(_9148))
                                call address(_9148).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8762), 128, mem[_9149], mem[_9149 + 196 len floor32(mem[_9149]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_9149 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_9149 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if idx >= mem[(32 * arg1.length) + 128] - 1:
                            require idx < mem[(32 * arg1.length) + 128]
                            _8932 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _8933 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_8933 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_8933 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_8933 + 68] = 0
                            mem[_8933 + 100] = this.address
                            mem[_8933 + 132] = 128
                            mem[_8933 + 164] = mem[_8933]
                            t = 0
                            while t < mem[_8933]:
                                mem[_8933 + t + 196] = mem[_8933 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_8933] % 32:
                                require ext_code.size(address(_8932))
                                call address(_8932).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8933 + 164 len mem[_8933] + 32]
                            else:
                                mem[floor32(mem[_8933]) + _8933 + 196] = mem[floor32(mem[_8933]) + _8933 + -(mem[_8933] % 32) + 228 len mem[_8933] % 32]
                                require ext_code.size(address(_8932))
                                call address(_8932).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8933], mem[_8933 + 196 len floor32(mem[_8933]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_8933 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_8933 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            _8764 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            require idx < mem[(32 * arg1.length) + 128]
                            _9153 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _9154 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_9154 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_9154 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_9154 + 68] = 0
                            mem[_9154 + 100] = address(_8764)
                            mem[_9154 + 132] = 128
                            mem[_9154 + 164] = mem[_9154]
                            t = 0
                            while t < mem[_9154]:
                                mem[_9154 + t + 196] = mem[_9154 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_9154] % 32:
                                require ext_code.size(address(_9153))
                                call address(_9153).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8764), 128, mem[_9154 + 164 len mem[_9154] + 32]
                            else:
                                mem[floor32(mem[_9154]) + _9154 + 196] = mem[floor32(mem[_9154]) + _9154 + -(mem[_9154] % 32) + 228 len mem[_9154] % 32]
                                require ext_code.size(address(_9153))
                                call address(_9153).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8764), 128, mem[_9154], mem[_9154 + 196 len floor32(mem[_9154]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_9154 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_9154 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx < mem[(32 * arg1.length) + 128]
                require idx < mem[96]
                _8007 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _8016 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(_8007) == address(_8007):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7974):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8615 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8616 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8616 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8616 + 36] = 0
                                    mem[_8616 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8616 + 100] = this.address
                                    mem[_8616 + 132] = 128
                                    mem[_8616 + 164] = mem[_8616]
                                    t = 0
                                    while t < mem[_8616]:
                                        mem[_8616 + t + 196] = mem[_8616 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8616] % 32:
                                        require ext_code.size(address(_8615))
                                        call address(_8615).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8616 + 164 len mem[_8616] + 32]
                                    else:
                                        mem[floor32(mem[_8616]) + _8616 + 196] = mem[floor32(mem[_8616]) + _8616 + -(mem[_8616] % 32) + 228 len mem[_8616] % 32]
                                        require ext_code.size(address(_8615))
                                        call address(_8615).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8616], mem[_8616 + 196 len floor32(mem[_8616]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8616 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8616 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8526 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8766 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8767 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8767 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8767 + 36] = 0
                                    mem[_8767 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8767 + 100] = address(_8526)
                                    mem[_8767 + 132] = 128
                                    mem[_8767 + 164] = mem[_8767]
                                    t = 0
                                    while t < mem[_8767]:
                                        mem[_8767 + t + 196] = mem[_8767 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8767] % 32:
                                        require ext_code.size(address(_8766))
                                        call address(_8766).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8526), 128, mem[_8767 + 164 len mem[_8767] + 32]
                                    else:
                                        mem[floor32(mem[_8767]) + _8767 + 196] = mem[floor32(mem[_8767]) + _8767 + -(mem[_8767] % 32) + 228 len mem[_8767] % 32]
                                        require ext_code.size(address(_8766))
                                        call address(_8766).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8526), 128, mem[_8767], mem[_8767 + 196 len floor32(mem[_8767]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8767 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8767 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8618 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8619 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8619 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8619 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8619 + 68] = 0
                                    mem[_8619 + 100] = this.address
                                    mem[_8619 + 132] = 128
                                    mem[_8619 + 164] = mem[_8619]
                                    t = 0
                                    while t < mem[_8619]:
                                        mem[_8619 + t + 196] = mem[_8619 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8619] % 32:
                                        require ext_code.size(address(_8618))
                                        call address(_8618).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8619 + 164 len mem[_8619] + 32]
                                    else:
                                        mem[floor32(mem[_8619]) + _8619 + 196] = mem[floor32(mem[_8619]) + _8619 + -(mem[_8619] % 32) + 228 len mem[_8619] % 32]
                                        require ext_code.size(address(_8618))
                                        call address(_8618).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8619], mem[_8619 + 196 len floor32(mem[_8619]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8619 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8619 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8528 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8771 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8772 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8772 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8772 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8772 + 68] = 0
                                    mem[_8772 + 100] = address(_8528)
                                    mem[_8772 + 132] = 128
                                    mem[_8772 + 164] = mem[_8772]
                                    t = 0
                                    while t < mem[_8772]:
                                        mem[_8772 + t + 196] = mem[_8772 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8772] % 32:
                                        require ext_code.size(address(_8771))
                                        call address(_8771).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8528), 128, mem[_8772 + 164 len mem[_8772] + 32]
                                    else:
                                        mem[floor32(mem[_8772]) + _8772 + 196] = mem[floor32(mem[_8772]) + _8772 + -(mem[_8772] % 32) + 228 len mem[_8772] % 32]
                                        require ext_code.size(address(_8771))
                                        call address(_8771).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8528), 128, mem[_8772], mem[_8772 + 196 len floor32(mem[_8772]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8772 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8772 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_7974):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8941 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8942 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8942 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8942 + 36] = 0
                                mem[_8942 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_8942 + 100] = this.address
                                mem[_8942 + 132] = 128
                                mem[_8942 + 164] = mem[_8942]
                                t = 0
                                while t < mem[_8942]:
                                    mem[_8942 + t + 196] = mem[_8942 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8942] % 32:
                                    require ext_code.size(address(_8941))
                                    call address(_8941).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8942 + 164 len mem[_8942] + 32]
                                else:
                                    mem[floor32(mem[_8942]) + _8942 + 196] = mem[floor32(mem[_8942]) + _8942 + -(mem[_8942] % 32) + 228 len mem[_8942] % 32]
                                    require ext_code.size(address(_8941))
                                    call address(_8941).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8942], mem[_8942 + 196 len floor32(mem[_8942]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8942 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8942 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8776 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9160 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9161 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9161 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9161 + 36] = 0
                                mem[_9161 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_9161 + 100] = address(_8776)
                                mem[_9161 + 132] = 128
                                mem[_9161 + 164] = mem[_9161]
                                t = 0
                                while t < mem[_9161]:
                                    mem[_9161 + t + 196] = mem[_9161 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9161] % 32:
                                    require ext_code.size(address(_9160))
                                    call address(_9160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8776), 128, mem[_9161 + 164 len mem[_9161] + 32]
                                else:
                                    mem[floor32(mem[_9161]) + _9161 + 196] = mem[floor32(mem[_9161]) + _9161 + -(mem[_9161] % 32) + 228 len mem[_9161] % 32]
                                    require ext_code.size(address(_9160))
                                    call address(_9160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8776), 128, mem[_9161], mem[_9161 + 196 len floor32(mem[_9161]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9161 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9161 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8944 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8945 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8945 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8945 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_8945 + 68] = 0
                                mem[_8945 + 100] = this.address
                                mem[_8945 + 132] = 128
                                mem[_8945 + 164] = mem[_8945]
                                t = 0
                                while t < mem[_8945]:
                                    mem[_8945 + t + 196] = mem[_8945 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8945] % 32:
                                    require ext_code.size(address(_8944))
                                    call address(_8944).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8945 + 164 len mem[_8945] + 32]
                                else:
                                    mem[floor32(mem[_8945]) + _8945 + 196] = mem[floor32(mem[_8945]) + _8945 + -(mem[_8945] % 32) + 228 len mem[_8945] % 32]
                                    require ext_code.size(address(_8944))
                                    call address(_8944).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8945], mem[_8945 + 196 len floor32(mem[_8945]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8945 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8945 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8778 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9165 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9166 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9166 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9166 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_9166 + 68] = 0
                                mem[_9166 + 100] = address(_8778)
                                mem[_9166 + 132] = 128
                                mem[_9166 + 164] = mem[_9166]
                                t = 0
                                while t < mem[_9166]:
                                    mem[_9166 + t + 196] = mem[_9166 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9166] % 32:
                                    require ext_code.size(address(_9165))
                                    call address(_9165).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8778), 128, mem[_9166 + 164 len mem[_9166] + 32]
                                else:
                                    mem[floor32(mem[_9166]) + _9166 + 196] = mem[floor32(mem[_9166]) + _9166 + -(mem[_9166] % 32) + 228 len mem[_9166] % 32]
                                    require ext_code.size(address(_9165))
                                    call address(_9165).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8778), 128, mem[_9166], mem[_9166 + 196 len floor32(mem[_9166]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9166 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9166 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_7974):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8623 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8624 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8624 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8624 + 36] = 0
                                mem[_8624 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8624 + 100] = this.address
                                mem[_8624 + 132] = 128
                                mem[_8624 + 164] = mem[_8624]
                                t = 0
                                while t < mem[_8624]:
                                    mem[_8624 + t + 196] = mem[_8624 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8624] % 32:
                                    require ext_code.size(address(_8623))
                                    call address(_8623).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8624 + 164 len mem[_8624] + 32]
                                else:
                                    mem[floor32(mem[_8624]) + _8624 + 196] = mem[floor32(mem[_8624]) + _8624 + -(mem[_8624] % 32) + 228 len mem[_8624] % 32]
                                    require ext_code.size(address(_8623))
                                    call address(_8623).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8624], mem[_8624 + 196 len floor32(mem[_8624]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8624 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8624 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8532 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _8780 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8781 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8781 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8781 + 36] = 0
                                mem[_8781 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8781 + 100] = address(_8532)
                                mem[_8781 + 132] = 128
                                mem[_8781 + 164] = mem[_8781]
                                t = 0
                                while t < mem[_8781]:
                                    mem[_8781 + t + 196] = mem[_8781 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8781] % 32:
                                    require ext_code.size(address(_8780))
                                    call address(_8780).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8532), 128, mem[_8781 + 164 len mem[_8781] + 32]
                                else:
                                    mem[floor32(mem[_8781]) + _8781 + 196] = mem[floor32(mem[_8781]) + _8781 + -(mem[_8781] % 32) + 228 len mem[_8781] % 32]
                                    require ext_code.size(address(_8780))
                                    call address(_8780).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8532), 128, mem[_8781], mem[_8781 + 196 len floor32(mem[_8781]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8781 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8781 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8626 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8627 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8627 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8627 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8627 + 68] = 0
                                mem[_8627 + 100] = this.address
                                mem[_8627 + 132] = 128
                                mem[_8627 + 164] = mem[_8627]
                                t = 0
                                while t < mem[_8627]:
                                    mem[_8627 + t + 196] = mem[_8627 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8627] % 32:
                                    require ext_code.size(address(_8626))
                                    call address(_8626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8627 + 164 len mem[_8627] + 32]
                                else:
                                    mem[floor32(mem[_8627]) + _8627 + 196] = mem[floor32(mem[_8627]) + _8627 + -(mem[_8627] % 32) + 228 len mem[_8627] % 32]
                                    require ext_code.size(address(_8626))
                                    call address(_8626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8627], mem[_8627 + 196 len floor32(mem[_8627]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8627 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8627 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8534 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _8785 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8786 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8786 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8786 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8786 + 68] = 0
                                mem[_8786 + 100] = address(_8534)
                                mem[_8786 + 132] = 128
                                mem[_8786 + 164] = mem[_8786]
                                t = 0
                                while t < mem[_8786]:
                                    mem[_8786 + t + 196] = mem[_8786 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8786] % 32:
                                    require ext_code.size(address(_8785))
                                    call address(_8785).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8534), 128, mem[_8786 + 164 len mem[_8786] + 32]
                                else:
                                    mem[floor32(mem[_8786]) + _8786 + 196] = mem[floor32(mem[_8786]) + _8786 + -(mem[_8786] % 32) + 228 len mem[_8786] % 32]
                                    require ext_code.size(address(_8785))
                                    call address(_8785).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8534), 128, mem[_8786], mem[_8786 + 196 len floor32(mem[_8786]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8786 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8786 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
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
                    require idx < mem[96]
                    if mem[(32 * idx) + 140 len 20] == address(_7974):
                        if idx >= mem[(32 * arg1.length) + 128] - 1:
                            require idx < mem[(32 * arg1.length) + 128]
                            _8953 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _8954 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_8954 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_8954 + 36] = 0
                            mem[_8954 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_8954 + 100] = this.address
                            mem[_8954 + 132] = 128
                            mem[_8954 + 164] = mem[_8954]
                            t = 0
                            while t < mem[_8954]:
                                mem[_8954 + t + 196] = mem[_8954 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_8954] % 32:
                                require ext_code.size(address(_8953))
                                call address(_8953).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8954 + 164 len mem[_8954] + 32]
                            else:
                                mem[floor32(mem[_8954]) + _8954 + 196] = mem[floor32(mem[_8954]) + _8954 + -(mem[_8954] % 32) + 228 len mem[_8954] % 32]
                                require ext_code.size(address(_8953))
                                call address(_8953).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8954], mem[_8954 + 196 len floor32(mem[_8954]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_8954 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_8954 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            _8790 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            require idx < mem[(32 * arg1.length) + 128]
                            _9172 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _9173 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_9173 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_9173 + 36] = 0
                            mem[_9173 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_9173 + 100] = address(_8790)
                            mem[_9173 + 132] = 128
                            mem[_9173 + 164] = mem[_9173]
                            t = 0
                            while t < mem[_9173]:
                                mem[_9173 + t + 196] = mem[_9173 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_9173] % 32:
                                require ext_code.size(address(_9172))
                                call address(_9172).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8790), 128, mem[_9173 + 164 len mem[_9173] + 32]
                            else:
                                mem[floor32(mem[_9173]) + _9173 + 196] = mem[floor32(mem[_9173]) + _9173 + -(mem[_9173] % 32) + 228 len mem[_9173] % 32]
                                require ext_code.size(address(_9172))
                                call address(_9172).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8790), 128, mem[_9173], mem[_9173 + 196 len floor32(mem[_9173]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_9173 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_9173 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if idx >= mem[(32 * arg1.length) + 128] - 1:
                            require idx < mem[(32 * arg1.length) + 128]
                            _8956 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _8957 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_8957 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_8957 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_8957 + 68] = 0
                            mem[_8957 + 100] = this.address
                            mem[_8957 + 132] = 128
                            mem[_8957 + 164] = mem[_8957]
                            t = 0
                            while t < mem[_8957]:
                                mem[_8957 + t + 196] = mem[_8957 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_8957] % 32:
                                require ext_code.size(address(_8956))
                                call address(_8956).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8957 + 164 len mem[_8957] + 32]
                            else:
                                mem[floor32(mem[_8957]) + _8957 + 196] = mem[floor32(mem[_8957]) + _8957 + -(mem[_8957] % 32) + 228 len mem[_8957] % 32]
                                require ext_code.size(address(_8956))
                                call address(_8956).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8957], mem[_8957 + 196 len floor32(mem[_8957]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_8957 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_8957 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            _8792 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            require idx < mem[(32 * arg1.length) + 128]
                            _9177 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _9178 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_9178 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_9178 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_9178 + 68] = 0
                            mem[_9178 + 100] = address(_8792)
                            mem[_9178 + 132] = 128
                            mem[_9178 + 164] = mem[_9178]
                            t = 0
                            while t < mem[_9178]:
                                mem[_9178 + t + 196] = mem[_9178 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_9178] % 32:
                                require ext_code.size(address(_9177))
                                call address(_9177).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8792), 128, mem[_9178 + 164 len mem[_9178] + 32]
                            else:
                                mem[floor32(mem[_9178]) + _9178 + 196] = mem[floor32(mem[_9178]) + _9178 + -(mem[_9178] % 32) + 228 len mem[_9178] % 32]
                                require ext_code.size(address(_9177))
                                call address(_9177).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8792), 128, mem[_9178], mem[_9178 + 196 len floor32(mem[_9178]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_9178 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_9178 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(_8007) == address(_8016):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7974):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8631 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8632 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8632 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8632 + 36] = 0
                                    mem[_8632 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8632 + 100] = this.address
                                    mem[_8632 + 132] = 128
                                    mem[_8632 + 164] = mem[_8632]
                                    t = 0
                                    while t < mem[_8632]:
                                        mem[_8632 + t + 196] = mem[_8632 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8632] % 32:
                                        require ext_code.size(address(_8631))
                                        call address(_8631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8632 + 164 len mem[_8632] + 32]
                                    else:
                                        mem[floor32(mem[_8632]) + _8632 + 196] = mem[floor32(mem[_8632]) + _8632 + -(mem[_8632] % 32) + 228 len mem[_8632] % 32]
                                        require ext_code.size(address(_8631))
                                        call address(_8631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8632], mem[_8632 + 196 len floor32(mem[_8632]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8632 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8632 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8538 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8794 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8795 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8795 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8795 + 36] = 0
                                    mem[_8795 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8795 + 100] = address(_8538)
                                    mem[_8795 + 132] = 128
                                    mem[_8795 + 164] = mem[_8795]
                                    t = 0
                                    while t < mem[_8795]:
                                        mem[_8795 + t + 196] = mem[_8795 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8795] % 32:
                                        require ext_code.size(address(_8794))
                                        call address(_8794).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8538), 128, mem[_8795 + 164 len mem[_8795] + 32]
                                    else:
                                        mem[floor32(mem[_8795]) + _8795 + 196] = mem[floor32(mem[_8795]) + _8795 + -(mem[_8795] % 32) + 228 len mem[_8795] % 32]
                                        require ext_code.size(address(_8794))
                                        call address(_8794).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8538), 128, mem[_8795], mem[_8795 + 196 len floor32(mem[_8795]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8795 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8795 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8634 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8635 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8635 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8635 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8635 + 68] = 0
                                    mem[_8635 + 100] = this.address
                                    mem[_8635 + 132] = 128
                                    mem[_8635 + 164] = mem[_8635]
                                    t = 0
                                    while t < mem[_8635]:
                                        mem[_8635 + t + 196] = mem[_8635 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8635] % 32:
                                        require ext_code.size(address(_8634))
                                        call address(_8634).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8635 + 164 len mem[_8635] + 32]
                                    else:
                                        mem[floor32(mem[_8635]) + _8635 + 196] = mem[floor32(mem[_8635]) + _8635 + -(mem[_8635] % 32) + 228 len mem[_8635] % 32]
                                        require ext_code.size(address(_8634))
                                        call address(_8634).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8635], mem[_8635 + 196 len floor32(mem[_8635]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8635 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8635 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8540 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8799 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8800 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8800 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8800 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_8800 + 68] = 0
                                    mem[_8800 + 100] = address(_8540)
                                    mem[_8800 + 132] = 128
                                    mem[_8800 + 164] = mem[_8800]
                                    t = 0
                                    while t < mem[_8800]:
                                        mem[_8800 + t + 196] = mem[_8800 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8800] % 32:
                                        require ext_code.size(address(_8799))
                                        call address(_8799).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8540), 128, mem[_8800 + 164 len mem[_8800] + 32]
                                    else:
                                        mem[floor32(mem[_8800]) + _8800 + 196] = mem[floor32(mem[_8800]) + _8800 + -(mem[_8800] % 32) + 228 len mem[_8800] % 32]
                                        require ext_code.size(address(_8799))
                                        call address(_8799).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8540), 128, mem[_8800], mem[_8800 + 196 len floor32(mem[_8800]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8800 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8800 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_7974):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8965 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8966 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8966 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8966 + 36] = 0
                                mem[_8966 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_8966 + 100] = this.address
                                mem[_8966 + 132] = 128
                                mem[_8966 + 164] = mem[_8966]
                                t = 0
                                while t < mem[_8966]:
                                    mem[_8966 + t + 196] = mem[_8966 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8966] % 32:
                                    require ext_code.size(address(_8965))
                                    call address(_8965).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8966 + 164 len mem[_8966] + 32]
                                else:
                                    mem[floor32(mem[_8966]) + _8966 + 196] = mem[floor32(mem[_8966]) + _8966 + -(mem[_8966] % 32) + 228 len mem[_8966] % 32]
                                    require ext_code.size(address(_8965))
                                    call address(_8965).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8966], mem[_8966 + 196 len floor32(mem[_8966]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8966 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8966 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8804 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9184 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9185 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9185 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9185 + 36] = 0
                                mem[_9185 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_9185 + 100] = address(_8804)
                                mem[_9185 + 132] = 128
                                mem[_9185 + 164] = mem[_9185]
                                t = 0
                                while t < mem[_9185]:
                                    mem[_9185 + t + 196] = mem[_9185 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9185] % 32:
                                    require ext_code.size(address(_9184))
                                    call address(_9184).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8804), 128, mem[_9185 + 164 len mem[_9185] + 32]
                                else:
                                    mem[floor32(mem[_9185]) + _9185 + 196] = mem[floor32(mem[_9185]) + _9185 + -(mem[_9185] % 32) + 228 len mem[_9185] % 32]
                                    require ext_code.size(address(_9184))
                                    call address(_9184).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8804), 128, mem[_9185], mem[_9185 + 196 len floor32(mem[_9185]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9185 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9185 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8968 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8969 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8969 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8969 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_8969 + 68] = 0
                                mem[_8969 + 100] = this.address
                                mem[_8969 + 132] = 128
                                mem[_8969 + 164] = mem[_8969]
                                t = 0
                                while t < mem[_8969]:
                                    mem[_8969 + t + 196] = mem[_8969 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8969] % 32:
                                    require ext_code.size(address(_8968))
                                    call address(_8968).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8969 + 164 len mem[_8969] + 32]
                                else:
                                    mem[floor32(mem[_8969]) + _8969 + 196] = mem[floor32(mem[_8969]) + _8969 + -(mem[_8969] % 32) + 228 len mem[_8969] % 32]
                                    require ext_code.size(address(_8968))
                                    call address(_8968).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8969], mem[_8969 + 196 len floor32(mem[_8969]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8969 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8969 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8806 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9189 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9190 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9190 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9190 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_9190 + 68] = 0
                                mem[_9190 + 100] = address(_8806)
                                mem[_9190 + 132] = 128
                                mem[_9190 + 164] = mem[_9190]
                                t = 0
                                while t < mem[_9190]:
                                    mem[_9190 + t + 196] = mem[_9190 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9190] % 32:
                                    require ext_code.size(address(_9189))
                                    call address(_9189).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8806), 128, mem[_9190 + 164 len mem[_9190] + 32]
                                else:
                                    mem[floor32(mem[_9190]) + _9190 + 196] = mem[floor32(mem[_9190]) + _9190 + -(mem[_9190] % 32) + 228 len mem[_9190] % 32]
                                    require ext_code.size(address(_9189))
                                    call address(_9189).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8806), 128, mem[_9190], mem[_9190 + 196 len floor32(mem[_9190]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9190 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9190 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_7974):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8639 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8640 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8640 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8640 + 36] = 0
                                mem[_8640 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8640 + 100] = this.address
                                mem[_8640 + 132] = 128
                                mem[_8640 + 164] = mem[_8640]
                                t = 0
                                while t < mem[_8640]:
                                    mem[_8640 + t + 196] = mem[_8640 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8640] % 32:
                                    require ext_code.size(address(_8639))
                                    call address(_8639).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8640 + 164 len mem[_8640] + 32]
                                else:
                                    mem[floor32(mem[_8640]) + _8640 + 196] = mem[floor32(mem[_8640]) + _8640 + -(mem[_8640] % 32) + 228 len mem[_8640] % 32]
                                    require ext_code.size(address(_8639))
                                    call address(_8639).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8640], mem[_8640 + 196 len floor32(mem[_8640]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8640 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8640 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8544 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _8808 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8809 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8809 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8809 + 36] = 0
                                mem[_8809 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8809 + 100] = address(_8544)
                                mem[_8809 + 132] = 128
                                mem[_8809 + 164] = mem[_8809]
                                t = 0
                                while t < mem[_8809]:
                                    mem[_8809 + t + 196] = mem[_8809 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8809] % 32:
                                    require ext_code.size(address(_8808))
                                    call address(_8808).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8544), 128, mem[_8809 + 164 len mem[_8809] + 32]
                                else:
                                    mem[floor32(mem[_8809]) + _8809 + 196] = mem[floor32(mem[_8809]) + _8809 + -(mem[_8809] % 32) + 228 len mem[_8809] % 32]
                                    require ext_code.size(address(_8808))
                                    call address(_8808).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8544), 128, mem[_8809], mem[_8809 + 196 len floor32(mem[_8809]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8809 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8809 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _8642 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8643 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8643 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8643 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8643 + 68] = 0
                                mem[_8643 + 100] = this.address
                                mem[_8643 + 132] = 128
                                mem[_8643 + 164] = mem[_8643]
                                t = 0
                                while t < mem[_8643]:
                                    mem[_8643 + t + 196] = mem[_8643 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8643] % 32:
                                    require ext_code.size(address(_8642))
                                    call address(_8642).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8643 + 164 len mem[_8643] + 32]
                                else:
                                    mem[floor32(mem[_8643]) + _8643 + 196] = mem[floor32(mem[_8643]) + _8643 + -(mem[_8643] % 32) + 228 len mem[_8643] % 32]
                                    require ext_code.size(address(_8642))
                                    call address(_8642).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8643], mem[_8643 + 196 len floor32(mem[_8643]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8643 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8643 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _8546 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _8813 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _8814 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8814 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8814 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_8814 + 68] = 0
                                mem[_8814 + 100] = address(_8546)
                                mem[_8814 + 132] = 128
                                mem[_8814 + 164] = mem[_8814]
                                t = 0
                                while t < mem[_8814]:
                                    mem[_8814 + t + 196] = mem[_8814 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_8814] % 32:
                                    require ext_code.size(address(_8813))
                                    call address(_8813).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8546), 128, mem[_8814 + 164 len mem[_8814] + 32]
                                else:
                                    mem[floor32(mem[_8814]) + _8814 + 196] = mem[floor32(mem[_8814]) + _8814 + -(mem[_8814] % 32) + 228 len mem[_8814] % 32]
                                    require ext_code.size(address(_8813))
                                    call address(_8813).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8546), 128, mem[_8814], mem[_8814 + 196 len floor32(mem[_8814]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_8814 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_8814 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
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
                    require idx < mem[96]
                    if mem[(32 * idx) + 140 len 20] == address(_7974):
                        if idx >= mem[(32 * arg1.length) + 128] - 1:
                            require idx < mem[(32 * arg1.length) + 128]
                            _8977 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _8978 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_8978 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_8978 + 36] = 0
                            mem[_8978 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_8978 + 100] = this.address
                            mem[_8978 + 132] = 128
                            mem[_8978 + 164] = mem[_8978]
                            t = 0
                            while t < mem[_8978]:
                                mem[_8978 + t + 196] = mem[_8978 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_8978] % 32:
                                require ext_code.size(address(_8977))
                                call address(_8977).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8978 + 164 len mem[_8978] + 32]
                            else:
                                mem[floor32(mem[_8978]) + _8978 + 196] = mem[floor32(mem[_8978]) + _8978 + -(mem[_8978] % 32) + 228 len mem[_8978] % 32]
                                require ext_code.size(address(_8977))
                                call address(_8977).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8978], mem[_8978 + 196 len floor32(mem[_8978]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_8978 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_8978 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            _8818 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            require idx < mem[(32 * arg1.length) + 128]
                            _9196 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _9197 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_9197 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_9197 + 36] = 0
                            mem[_9197 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_9197 + 100] = address(_8818)
                            mem[_9197 + 132] = 128
                            mem[_9197 + 164] = mem[_9197]
                            t = 0
                            while t < mem[_9197]:
                                mem[_9197 + t + 196] = mem[_9197 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_9197] % 32:
                                require ext_code.size(address(_9196))
                                call address(_9196).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8818), 128, mem[_9197 + 164 len mem[_9197] + 32]
                            else:
                                mem[floor32(mem[_9197]) + _9197 + 196] = mem[floor32(mem[_9197]) + _9197 + -(mem[_9197] % 32) + 228 len mem[_9197] % 32]
                                require ext_code.size(address(_9196))
                                call address(_9196).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8818), 128, mem[_9197], mem[_9197 + 196 len floor32(mem[_9197]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_9197 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_9197 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if idx >= mem[(32 * arg1.length) + 128] - 1:
                            require idx < mem[(32 * arg1.length) + 128]
                            _8980 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _8981 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_8981 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_8981 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_8981 + 68] = 0
                            mem[_8981 + 100] = this.address
                            mem[_8981 + 132] = 128
                            mem[_8981 + 164] = mem[_8981]
                            t = 0
                            while t < mem[_8981]:
                                mem[_8981 + t + 196] = mem[_8981 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_8981] % 32:
                                require ext_code.size(address(_8980))
                                call address(_8980).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8981 + 164 len mem[_8981] + 32]
                            else:
                                mem[floor32(mem[_8981]) + _8981 + 196] = mem[floor32(mem[_8981]) + _8981 + -(mem[_8981] % 32) + 228 len mem[_8981] % 32]
                                require ext_code.size(address(_8980))
                                call address(_8980).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8981], mem[_8981 + 196 len floor32(mem[_8981]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_8981 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_8981 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            _8820 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            require idx < mem[(32 * arg1.length) + 128]
                            _9201 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            _9202 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_9202 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_9202 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_9202 + 68] = 0
                            mem[_9202 + 100] = address(_8820)
                            mem[_9202 + 132] = 128
                            mem[_9202 + 164] = mem[_9202]
                            t = 0
                            while t < mem[_9202]:
                                mem[_9202 + t + 196] = mem[_9202 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_9202] % 32:
                                require ext_code.size(address(_9201))
                                call address(_9201).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8820), 128, mem[_9202 + 164 len mem[_9202] + 32]
                            else:
                                mem[floor32(mem[_9202]) + _9202 + 196] = mem[floor32(mem[_9202]) + _9202 + -(mem[_9202] % 32) + 228 len mem[_9202] % 32]
                                require ext_code.size(address(_9201))
                                call address(_9201).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8820), 128, mem[_9202], mem[_9202 + 196 len floor32(mem[_9202]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx + 1 < mem[96]
                            if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_9202 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                mem[_9202 + 36] = ext_call.return_data[0]
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if idx:
                require idx < mem[96]
                _7975 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _7977 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[96]
                    _8017 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _8022 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if address(_8017) == address(_8017):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20] == address(_7975):
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _8823 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _8824 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8824 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8824 + 36] = 0
                                        mem[_8824 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_8824 + 100] = this.address
                                        mem[_8824 + 132] = 128
                                        mem[_8824 + 164] = mem[_8824]
                                        t = 0
                                        while t < mem[_8824]:
                                            mem[_8824 + t + 196] = mem[_8824 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_8824] % 32:
                                            require ext_code.size(address(_8823))
                                            call address(_8823).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8824 + 164 len mem[_8824] + 32]
                                        else:
                                            mem[floor32(mem[_8824]) + _8824 + 196] = mem[floor32(mem[_8824]) + _8824 + -(mem[_8824] % 32) + 228 len mem[_8824] % 32]
                                            require ext_code.size(address(_8823))
                                            call address(_8823).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8824], mem[_8824 + 196 len floor32(mem[_8824]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_8824 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_8824 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _8646 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _8982 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _8983 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8983 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8983 + 36] = 0
                                        mem[_8983 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_8983 + 100] = address(_8646)
                                        mem[_8983 + 132] = 128
                                        mem[_8983 + 164] = mem[_8983]
                                        t = 0
                                        while t < mem[_8983]:
                                            mem[_8983 + t + 196] = mem[_8983 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_8983] % 32:
                                            require ext_code.size(address(_8982))
                                            call address(_8982).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8646), 128, mem[_8983 + 164 len mem[_8983] + 32]
                                        else:
                                            mem[floor32(mem[_8983]) + _8983 + 196] = mem[floor32(mem[_8983]) + _8983 + -(mem[_8983] % 32) + 228 len mem[_8983] % 32]
                                            require ext_code.size(address(_8982))
                                            call address(_8982).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8646), 128, mem[_8983], mem[_8983 + 196 len floor32(mem[_8983]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_8983 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_8983 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _8826 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _8827 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8827 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8827 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_8827 + 68] = 0
                                        mem[_8827 + 100] = this.address
                                        mem[_8827 + 132] = 128
                                        mem[_8827 + 164] = mem[_8827]
                                        t = 0
                                        while t < mem[_8827]:
                                            mem[_8827 + t + 196] = mem[_8827 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_8827] % 32:
                                            require ext_code.size(address(_8826))
                                            call address(_8826).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8827 + 164 len mem[_8827] + 32]
                                        else:
                                            mem[floor32(mem[_8827]) + _8827 + 196] = mem[floor32(mem[_8827]) + _8827 + -(mem[_8827] % 32) + 228 len mem[_8827] % 32]
                                            require ext_code.size(address(_8826))
                                            call address(_8826).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8827], mem[_8827 + 196 len floor32(mem[_8827]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_8827 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_8827 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _8648 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _8987 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _8988 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8988 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8988 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_8988 + 68] = 0
                                        mem[_8988 + 100] = address(_8648)
                                        mem[_8988 + 132] = 128
                                        mem[_8988 + 164] = mem[_8988]
                                        t = 0
                                        while t < mem[_8988]:
                                            mem[_8988 + t + 196] = mem[_8988 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_8988] % 32:
                                            require ext_code.size(address(_8987))
                                            call address(_8987).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8648), 128, mem[_8988 + 164 len mem[_8988] + 32]
                                        else:
                                            mem[floor32(mem[_8988]) + _8988 + 196] = mem[floor32(mem[_8988]) + _8988 + -(mem[_8988] % 32) + 228 len mem[_8988] % 32]
                                            require ext_code.size(address(_8987))
                                            call address(_8987).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8648), 128, mem[_8988], mem[_8988 + 196 len floor32(mem[_8988]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_8988 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_8988 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7975):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9213 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9214 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9214 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9214 + 36] = 0
                                    mem[_9214 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9214 + 100] = this.address
                                    mem[_9214 + 132] = 128
                                    mem[_9214 + 164] = mem[_9214]
                                    t = 0
                                    while t < mem[_9214]:
                                        mem[_9214 + t + 196] = mem[_9214 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9214] % 32:
                                        require ext_code.size(address(_9213))
                                        call address(_9213).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_9214 + 164 len mem[_9214] + 32]
                                    else:
                                        mem[floor32(mem[_9214]) + _9214 + 196] = mem[floor32(mem[_9214]) + _9214 + -(mem[_9214] % 32) + 228 len mem[_9214] % 32]
                                        require ext_code.size(address(_9213))
                                        call address(_9213).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_9214], mem[_9214 + 196 len floor32(mem[_9214]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9214 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9214 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8992 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9408 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9409 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9409 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9409 + 36] = 0
                                    mem[_9409 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9409 + 100] = address(_8992)
                                    mem[_9409 + 132] = 128
                                    mem[_9409 + 164] = mem[_9409]
                                    t = 0
                                    while t < mem[_9409]:
                                        mem[_9409 + t + 196] = mem[_9409 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9409] % 32:
                                        require ext_code.size(address(_9408))
                                        call address(_9408).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8992), 128, mem[_9409 + 164 len mem[_9409] + 32]
                                    else:
                                        mem[floor32(mem[_9409]) + _9409 + 196] = mem[floor32(mem[_9409]) + _9409 + -(mem[_9409] % 32) + 228 len mem[_9409] % 32]
                                        require ext_code.size(address(_9408))
                                        call address(_9408).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8992), 128, mem[_9409], mem[_9409 + 196 len floor32(mem[_9409]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9409 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9409 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9216 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9217 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9217 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9217 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9217 + 68] = 0
                                    mem[_9217 + 100] = this.address
                                    mem[_9217 + 132] = 128
                                    mem[_9217 + 164] = mem[_9217]
                                    t = 0
                                    while t < mem[_9217]:
                                        mem[_9217 + t + 196] = mem[_9217 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9217] % 32:
                                        require ext_code.size(address(_9216))
                                        call address(_9216).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_9217 + 164 len mem[_9217] + 32]
                                    else:
                                        mem[floor32(mem[_9217]) + _9217 + 196] = mem[floor32(mem[_9217]) + _9217 + -(mem[_9217] % 32) + 228 len mem[_9217] % 32]
                                        require ext_code.size(address(_9216))
                                        call address(_9216).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_9217], mem[_9217 + 196 len floor32(mem[_9217]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9217 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9217 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8994 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9413 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9414 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9414 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9414 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9414 + 68] = 0
                                    mem[_9414 + 100] = address(_8994)
                                    mem[_9414 + 132] = 128
                                    mem[_9414 + 164] = mem[_9414]
                                    t = 0
                                    while t < mem[_9414]:
                                        mem[_9414 + t + 196] = mem[_9414 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9414] % 32:
                                        require ext_code.size(address(_9413))
                                        call address(_9413).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8994), 128, mem[_9414 + 164 len mem[_9414] + 32]
                                    else:
                                        mem[floor32(mem[_9414]) + _9414 + 196] = mem[floor32(mem[_9414]) + _9414 + -(mem[_9414] % 32) + 228 len mem[_9414] % 32]
                                        require ext_code.size(address(_9413))
                                        call address(_9413).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8994), 128, mem[_9414], mem[_9414 + 196 len floor32(mem[_9414]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9414 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9414 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7975):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8831 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8832 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8832 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8832 + 36] = 0
                                    mem[_8832 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_8832 + 100] = this.address
                                    mem[_8832 + 132] = 128
                                    mem[_8832 + 164] = mem[_8832]
                                    t = 0
                                    while t < mem[_8832]:
                                        mem[_8832 + t + 196] = mem[_8832 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8832] % 32:
                                        require ext_code.size(address(_8831))
                                        call address(_8831).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8832 + 164 len mem[_8832] + 32]
                                    else:
                                        mem[floor32(mem[_8832]) + _8832 + 196] = mem[floor32(mem[_8832]) + _8832 + -(mem[_8832] % 32) + 228 len mem[_8832] % 32]
                                        require ext_code.size(address(_8831))
                                        call address(_8831).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8832], mem[_8832 + 196 len floor32(mem[_8832]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8832 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8832 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8652 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8996 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8997 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8997 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8997 + 36] = 0
                                    mem[_8997 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_8997 + 100] = address(_8652)
                                    mem[_8997 + 132] = 128
                                    mem[_8997 + 164] = mem[_8997]
                                    t = 0
                                    while t < mem[_8997]:
                                        mem[_8997 + t + 196] = mem[_8997 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8997] % 32:
                                        require ext_code.size(address(_8996))
                                        call address(_8996).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8652), 128, mem[_8997 + 164 len mem[_8997] + 32]
                                    else:
                                        mem[floor32(mem[_8997]) + _8997 + 196] = mem[floor32(mem[_8997]) + _8997 + -(mem[_8997] % 32) + 228 len mem[_8997] % 32]
                                        require ext_code.size(address(_8996))
                                        call address(_8996).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8652), 128, mem[_8997], mem[_8997 + 196 len floor32(mem[_8997]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8997 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8997 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8834 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8835 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8835 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8835 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_8835 + 68] = 0
                                    mem[_8835 + 100] = this.address
                                    mem[_8835 + 132] = 128
                                    mem[_8835 + 164] = mem[_8835]
                                    t = 0
                                    while t < mem[_8835]:
                                        mem[_8835 + t + 196] = mem[_8835 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8835] % 32:
                                        require ext_code.size(address(_8834))
                                        call address(_8834).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8835 + 164 len mem[_8835] + 32]
                                    else:
                                        mem[floor32(mem[_8835]) + _8835 + 196] = mem[floor32(mem[_8835]) + _8835 + -(mem[_8835] % 32) + 228 len mem[_8835] % 32]
                                        require ext_code.size(address(_8834))
                                        call address(_8834).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8835], mem[_8835 + 196 len floor32(mem[_8835]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8835 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8835 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8654 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9001 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9002 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9002 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9002 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_9002 + 68] = 0
                                    mem[_9002 + 100] = address(_8654)
                                    mem[_9002 + 132] = 128
                                    mem[_9002 + 164] = mem[_9002]
                                    t = 0
                                    while t < mem[_9002]:
                                        mem[_9002 + t + 196] = mem[_9002 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9002] % 32:
                                        require ext_code.size(address(_9001))
                                        call address(_9001).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8654), 128, mem[_9002 + 164 len mem[_9002] + 32]
                                    else:
                                        mem[floor32(mem[_9002]) + _9002 + 196] = mem[floor32(mem[_9002]) + _9002 + -(mem[_9002] % 32) + 228 len mem[_9002] % 32]
                                        require ext_code.size(address(_9001))
                                        call address(_9001).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8654), 128, mem[_9002], mem[_9002 + 196 len floor32(mem[_9002]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9002 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9002 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_7975):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _9225 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9226 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9226 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9226 + 36] = 0
                                mem[_9226 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9226 + 100] = this.address
                                mem[_9226 + 132] = 128
                                mem[_9226 + 164] = mem[_9226]
                                t = 0
                                while t < mem[_9226]:
                                    mem[_9226 + t + 196] = mem[_9226 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9226] % 32:
                                    require ext_code.size(address(_9225))
                                    call address(_9225).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_9226 + 164 len mem[_9226] + 32]
                                else:
                                    mem[floor32(mem[_9226]) + _9226 + 196] = mem[floor32(mem[_9226]) + _9226 + -(mem[_9226] % 32) + 228 len mem[_9226] % 32]
                                    require ext_code.size(address(_9225))
                                    call address(_9225).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_9226], mem[_9226 + 196 len floor32(mem[_9226]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9226 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9226 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _9006 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9420 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9421 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9421 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9421 + 36] = 0
                                mem[_9421 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9421 + 100] = address(_9006)
                                mem[_9421 + 132] = 128
                                mem[_9421 + 164] = mem[_9421]
                                t = 0
                                while t < mem[_9421]:
                                    mem[_9421 + t + 196] = mem[_9421 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9421] % 32:
                                    require ext_code.size(address(_9420))
                                    call address(_9420).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_9006), 128, mem[_9421 + 164 len mem[_9421] + 32]
                                else:
                                    mem[floor32(mem[_9421]) + _9421 + 196] = mem[floor32(mem[_9421]) + _9421 + -(mem[_9421] % 32) + 228 len mem[_9421] % 32]
                                    require ext_code.size(address(_9420))
                                    call address(_9420).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_9006), 128, mem[_9421], mem[_9421 + 196 len floor32(mem[_9421]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9421 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9421 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _9228 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9229 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9229 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9229 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9229 + 68] = 0
                                mem[_9229 + 100] = this.address
                                mem[_9229 + 132] = 128
                                mem[_9229 + 164] = mem[_9229]
                                t = 0
                                while t < mem[_9229]:
                                    mem[_9229 + t + 196] = mem[_9229 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9229] % 32:
                                    require ext_code.size(address(_9228))
                                    call address(_9228).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_9229 + 164 len mem[_9229] + 32]
                                else:
                                    mem[floor32(mem[_9229]) + _9229 + 196] = mem[floor32(mem[_9229]) + _9229 + -(mem[_9229] % 32) + 228 len mem[_9229] % 32]
                                    require ext_code.size(address(_9228))
                                    call address(_9228).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_9229], mem[_9229 + 196 len floor32(mem[_9229]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9229 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9229 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _9008 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9425 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9426 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9426 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9426 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9426 + 68] = 0
                                mem[_9426 + 100] = address(_9008)
                                mem[_9426 + 132] = 128
                                mem[_9426 + 164] = mem[_9426]
                                t = 0
                                while t < mem[_9426]:
                                    mem[_9426 + t + 196] = mem[_9426 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9426] % 32:
                                    require ext_code.size(address(_9425))
                                    call address(_9425).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_9008), 128, mem[_9426 + 164 len mem[_9426] + 32]
                                else:
                                    mem[floor32(mem[_9426]) + _9426 + 196] = mem[floor32(mem[_9426]) + _9426 + -(mem[_9426] % 32) + 228 len mem[_9426] % 32]
                                    require ext_code.size(address(_9425))
                                    call address(_9425).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_9008), 128, mem[_9426], mem[_9426 + 196 len floor32(mem[_9426]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9426 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9426 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if address(_8017) == address(_8022):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20] == address(_7975):
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _8839 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _8840 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8840 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8840 + 36] = 0
                                        mem[_8840 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_8840 + 100] = this.address
                                        mem[_8840 + 132] = 128
                                        mem[_8840 + 164] = mem[_8840]
                                        t = 0
                                        while t < mem[_8840]:
                                            mem[_8840 + t + 196] = mem[_8840 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_8840] % 32:
                                            require ext_code.size(address(_8839))
                                            call address(_8839).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8840 + 164 len mem[_8840] + 32]
                                        else:
                                            mem[floor32(mem[_8840]) + _8840 + 196] = mem[floor32(mem[_8840]) + _8840 + -(mem[_8840] % 32) + 228 len mem[_8840] % 32]
                                            require ext_code.size(address(_8839))
                                            call address(_8839).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8840], mem[_8840 + 196 len floor32(mem[_8840]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_8840 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_8840 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _8658 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _9010 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _9011 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_9011 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9011 + 36] = 0
                                        mem[_9011 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_9011 + 100] = address(_8658)
                                        mem[_9011 + 132] = 128
                                        mem[_9011 + 164] = mem[_9011]
                                        t = 0
                                        while t < mem[_9011]:
                                            mem[_9011 + t + 196] = mem[_9011 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_9011] % 32:
                                            require ext_code.size(address(_9010))
                                            call address(_9010).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8658), 128, mem[_9011 + 164 len mem[_9011] + 32]
                                        else:
                                            mem[floor32(mem[_9011]) + _9011 + 196] = mem[floor32(mem[_9011]) + _9011 + -(mem[_9011] % 32) + 228 len mem[_9011] % 32]
                                            require ext_code.size(address(_9010))
                                            call address(_9010).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8658), 128, mem[_9011], mem[_9011 + 196 len floor32(mem[_9011]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_9011 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_9011 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _8842 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _8843 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8843 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8843 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_8843 + 68] = 0
                                        mem[_8843 + 100] = this.address
                                        mem[_8843 + 132] = 128
                                        mem[_8843 + 164] = mem[_8843]
                                        t = 0
                                        while t < mem[_8843]:
                                            mem[_8843 + t + 196] = mem[_8843 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_8843] % 32:
                                            require ext_code.size(address(_8842))
                                            call address(_8842).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8843 + 164 len mem[_8843] + 32]
                                        else:
                                            mem[floor32(mem[_8843]) + _8843 + 196] = mem[floor32(mem[_8843]) + _8843 + -(mem[_8843] % 32) + 228 len mem[_8843] % 32]
                                            require ext_code.size(address(_8842))
                                            call address(_8842).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8843], mem[_8843 + 196 len floor32(mem[_8843]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_8843 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_8843 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _8660 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _9015 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _9016 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_9016 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9016 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_9016 + 68] = 0
                                        mem[_9016 + 100] = address(_8660)
                                        mem[_9016 + 132] = 128
                                        mem[_9016 + 164] = mem[_9016]
                                        t = 0
                                        while t < mem[_9016]:
                                            mem[_9016 + t + 196] = mem[_9016 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_9016] % 32:
                                            require ext_code.size(address(_9015))
                                            call address(_9015).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8660), 128, mem[_9016 + 164 len mem[_9016] + 32]
                                        else:
                                            mem[floor32(mem[_9016]) + _9016 + 196] = mem[floor32(mem[_9016]) + _9016 + -(mem[_9016] % 32) + 228 len mem[_9016] % 32]
                                            require ext_code.size(address(_9015))
                                            call address(_9015).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8660), 128, mem[_9016], mem[_9016 + 196 len floor32(mem[_9016]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_9016 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_9016 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7975):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9237 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9238 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9238 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9238 + 36] = 0
                                    mem[_9238 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9238 + 100] = this.address
                                    mem[_9238 + 132] = 128
                                    mem[_9238 + 164] = mem[_9238]
                                    t = 0
                                    while t < mem[_9238]:
                                        mem[_9238 + t + 196] = mem[_9238 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9238] % 32:
                                        require ext_code.size(address(_9237))
                                        call address(_9237).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_9238 + 164 len mem[_9238] + 32]
                                    else:
                                        mem[floor32(mem[_9238]) + _9238 + 196] = mem[floor32(mem[_9238]) + _9238 + -(mem[_9238] % 32) + 228 len mem[_9238] % 32]
                                        require ext_code.size(address(_9237))
                                        call address(_9237).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_9238], mem[_9238 + 196 len floor32(mem[_9238]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9238 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9238 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _9020 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9432 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9433 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9433 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9433 + 36] = 0
                                    mem[_9433 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9433 + 100] = address(_9020)
                                    mem[_9433 + 132] = 128
                                    mem[_9433 + 164] = mem[_9433]
                                    t = 0
                                    while t < mem[_9433]:
                                        mem[_9433 + t + 196] = mem[_9433 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9433] % 32:
                                        require ext_code.size(address(_9432))
                                        call address(_9432).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_9020), 128, mem[_9433 + 164 len mem[_9433] + 32]
                                    else:
                                        mem[floor32(mem[_9433]) + _9433 + 196] = mem[floor32(mem[_9433]) + _9433 + -(mem[_9433] % 32) + 228 len mem[_9433] % 32]
                                        require ext_code.size(address(_9432))
                                        call address(_9432).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_9020), 128, mem[_9433], mem[_9433 + 196 len floor32(mem[_9433]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9433 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9433 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9240 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9241 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9241 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9241 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9241 + 68] = 0
                                    mem[_9241 + 100] = this.address
                                    mem[_9241 + 132] = 128
                                    mem[_9241 + 164] = mem[_9241]
                                    t = 0
                                    while t < mem[_9241]:
                                        mem[_9241 + t + 196] = mem[_9241 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9241] % 32:
                                        require ext_code.size(address(_9240))
                                        call address(_9240).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_9241 + 164 len mem[_9241] + 32]
                                    else:
                                        mem[floor32(mem[_9241]) + _9241 + 196] = mem[floor32(mem[_9241]) + _9241 + -(mem[_9241] % 32) + 228 len mem[_9241] % 32]
                                        require ext_code.size(address(_9240))
                                        call address(_9240).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_9241], mem[_9241 + 196 len floor32(mem[_9241]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9241 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9241 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _9022 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9437 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9438 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9438 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9438 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9438 + 68] = 0
                                    mem[_9438 + 100] = address(_9022)
                                    mem[_9438 + 132] = 128
                                    mem[_9438 + 164] = mem[_9438]
                                    t = 0
                                    while t < mem[_9438]:
                                        mem[_9438 + t + 196] = mem[_9438 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9438] % 32:
                                        require ext_code.size(address(_9437))
                                        call address(_9437).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_9022), 128, mem[_9438 + 164 len mem[_9438] + 32]
                                    else:
                                        mem[floor32(mem[_9438]) + _9438 + 196] = mem[floor32(mem[_9438]) + _9438 + -(mem[_9438] % 32) + 228 len mem[_9438] % 32]
                                        require ext_code.size(address(_9437))
                                        call address(_9437).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_9022), 128, mem[_9438], mem[_9438 + 196 len floor32(mem[_9438]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9438 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9438 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7975):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8847 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8848 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8848 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8848 + 36] = 0
                                    mem[_8848 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_8848 + 100] = this.address
                                    mem[_8848 + 132] = 128
                                    mem[_8848 + 164] = mem[_8848]
                                    t = 0
                                    while t < mem[_8848]:
                                        mem[_8848 + t + 196] = mem[_8848 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8848] % 32:
                                        require ext_code.size(address(_8847))
                                        call address(_8847).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8848 + 164 len mem[_8848] + 32]
                                    else:
                                        mem[floor32(mem[_8848]) + _8848 + 196] = mem[floor32(mem[_8848]) + _8848 + -(mem[_8848] % 32) + 228 len mem[_8848] % 32]
                                        require ext_code.size(address(_8847))
                                        call address(_8847).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8848], mem[_8848 + 196 len floor32(mem[_8848]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8848 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8848 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8664 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9024 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9025 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9025 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9025 + 36] = 0
                                    mem[_9025 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_9025 + 100] = address(_8664)
                                    mem[_9025 + 132] = 128
                                    mem[_9025 + 164] = mem[_9025]
                                    t = 0
                                    while t < mem[_9025]:
                                        mem[_9025 + t + 196] = mem[_9025 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9025] % 32:
                                        require ext_code.size(address(_9024))
                                        call address(_9024).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8664), 128, mem[_9025 + 164 len mem[_9025] + 32]
                                    else:
                                        mem[floor32(mem[_9025]) + _9025 + 196] = mem[floor32(mem[_9025]) + _9025 + -(mem[_9025] % 32) + 228 len mem[_9025] % 32]
                                        require ext_code.size(address(_9024))
                                        call address(_9024).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8664), 128, mem[_9025], mem[_9025 + 196 len floor32(mem[_9025]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9025 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9025 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8850 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8851 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8851 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8851 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_8851 + 68] = 0
                                    mem[_8851 + 100] = this.address
                                    mem[_8851 + 132] = 128
                                    mem[_8851 + 164] = mem[_8851]
                                    t = 0
                                    while t < mem[_8851]:
                                        mem[_8851 + t + 196] = mem[_8851 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8851] % 32:
                                        require ext_code.size(address(_8850))
                                        call address(_8850).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8851 + 164 len mem[_8851] + 32]
                                    else:
                                        mem[floor32(mem[_8851]) + _8851 + 196] = mem[floor32(mem[_8851]) + _8851 + -(mem[_8851] % 32) + 228 len mem[_8851] % 32]
                                        require ext_code.size(address(_8850))
                                        call address(_8850).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8851], mem[_8851 + 196 len floor32(mem[_8851]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8851 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8851 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8666 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9029 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9030 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9030 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9030 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_9030 + 68] = 0
                                    mem[_9030 + 100] = address(_8666)
                                    mem[_9030 + 132] = 128
                                    mem[_9030 + 164] = mem[_9030]
                                    t = 0
                                    while t < mem[_9030]:
                                        mem[_9030 + t + 196] = mem[_9030 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9030] % 32:
                                        require ext_code.size(address(_9029))
                                        call address(_9029).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8666), 128, mem[_9030 + 164 len mem[_9030] + 32]
                                    else:
                                        mem[floor32(mem[_9030]) + _9030 + 196] = mem[floor32(mem[_9030]) + _9030 + -(mem[_9030] % 32) + 228 len mem[_9030] % 32]
                                        require ext_code.size(address(_9029))
                                        call address(_9029).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8666), 128, mem[_9030], mem[_9030 + 196 len floor32(mem[_9030]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9030 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9030 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_7975):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _9249 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9250 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9250 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9250 + 36] = 0
                                mem[_9250 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9250 + 100] = this.address
                                mem[_9250 + 132] = 128
                                mem[_9250 + 164] = mem[_9250]
                                t = 0
                                while t < mem[_9250]:
                                    mem[_9250 + t + 196] = mem[_9250 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9250] % 32:
                                    require ext_code.size(address(_9249))
                                    call address(_9249).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_9250 + 164 len mem[_9250] + 32]
                                else:
                                    mem[floor32(mem[_9250]) + _9250 + 196] = mem[floor32(mem[_9250]) + _9250 + -(mem[_9250] % 32) + 228 len mem[_9250] % 32]
                                    require ext_code.size(address(_9249))
                                    call address(_9249).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_9250], mem[_9250 + 196 len floor32(mem[_9250]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9250 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9250 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _9034 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9444 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9445 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9445 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9445 + 36] = 0
                                mem[_9445 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9445 + 100] = address(_9034)
                                mem[_9445 + 132] = 128
                                mem[_9445 + 164] = mem[_9445]
                                t = 0
                                while t < mem[_9445]:
                                    mem[_9445 + t + 196] = mem[_9445 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9445] % 32:
                                    require ext_code.size(address(_9444))
                                    call address(_9444).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_9034), 128, mem[_9445 + 164 len mem[_9445] + 32]
                                else:
                                    mem[floor32(mem[_9445]) + _9445 + 196] = mem[floor32(mem[_9445]) + _9445 + -(mem[_9445] % 32) + 228 len mem[_9445] % 32]
                                    require ext_code.size(address(_9444))
                                    call address(_9444).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_9034), 128, mem[_9445], mem[_9445 + 196 len floor32(mem[_9445]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9445 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9445 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _9252 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9253 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9253 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9253 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9253 + 68] = 0
                                mem[_9253 + 100] = this.address
                                mem[_9253 + 132] = 128
                                mem[_9253 + 164] = mem[_9253]
                                t = 0
                                while t < mem[_9253]:
                                    mem[_9253 + t + 196] = mem[_9253 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9253] % 32:
                                    require ext_code.size(address(_9252))
                                    call address(_9252).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_9253 + 164 len mem[_9253] + 32]
                                else:
                                    mem[floor32(mem[_9253]) + _9253 + 196] = mem[floor32(mem[_9253]) + _9253 + -(mem[_9253] % 32) + 228 len mem[_9253] % 32]
                                    require ext_code.size(address(_9252))
                                    call address(_9252).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_9253], mem[_9253 + 196 len floor32(mem[_9253]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9253 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9253 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _9036 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9449 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9450 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9450 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9450 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9450 + 68] = 0
                                mem[_9450 + 100] = address(_9036)
                                mem[_9450 + 132] = 128
                                mem[_9450 + 164] = mem[_9450]
                                t = 0
                                while t < mem[_9450]:
                                    mem[_9450 + t + 196] = mem[_9450 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9450] % 32:
                                    require ext_code.size(address(_9449))
                                    call address(_9449).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_9036), 128, mem[_9450 + 164 len mem[_9450] + 32]
                                else:
                                    mem[floor32(mem[_9450]) + _9450 + 196] = mem[floor32(mem[_9450]) + _9450 + -(mem[_9450] % 32) + 228 len mem[_9450] % 32]
                                    require ext_code.size(address(_9449))
                                    call address(_9449).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_9036), 128, mem[_9450], mem[_9450 + 196 len floor32(mem[_9450]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9450 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9450 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[96]
                    _8019 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _8023 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if address(_8019) == address(_8019):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20] == address(_7977):
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _8855 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _8856 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8856 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8856 + 36] = 0
                                        mem[_8856 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_8856 + 100] = this.address
                                        mem[_8856 + 132] = 128
                                        mem[_8856 + 164] = mem[_8856]
                                        t = 0
                                        while t < mem[_8856]:
                                            mem[_8856 + t + 196] = mem[_8856 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_8856] % 32:
                                            require ext_code.size(address(_8855))
                                            call address(_8855).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8856 + 164 len mem[_8856] + 32]
                                        else:
                                            mem[floor32(mem[_8856]) + _8856 + 196] = mem[floor32(mem[_8856]) + _8856 + -(mem[_8856] % 32) + 228 len mem[_8856] % 32]
                                            require ext_code.size(address(_8855))
                                            call address(_8855).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8856], mem[_8856 + 196 len floor32(mem[_8856]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_8856 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_8856 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _8670 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _9038 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _9039 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_9039 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9039 + 36] = 0
                                        mem[_9039 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_9039 + 100] = address(_8670)
                                        mem[_9039 + 132] = 128
                                        mem[_9039 + 164] = mem[_9039]
                                        t = 0
                                        while t < mem[_9039]:
                                            mem[_9039 + t + 196] = mem[_9039 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_9039] % 32:
                                            require ext_code.size(address(_9038))
                                            call address(_9038).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8670), 128, mem[_9039 + 164 len mem[_9039] + 32]
                                        else:
                                            mem[floor32(mem[_9039]) + _9039 + 196] = mem[floor32(mem[_9039]) + _9039 + -(mem[_9039] % 32) + 228 len mem[_9039] % 32]
                                            require ext_code.size(address(_9038))
                                            call address(_9038).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8670), 128, mem[_9039], mem[_9039 + 196 len floor32(mem[_9039]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_9039 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_9039 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _8858 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _8859 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8859 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8859 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_8859 + 68] = 0
                                        mem[_8859 + 100] = this.address
                                        mem[_8859 + 132] = 128
                                        mem[_8859 + 164] = mem[_8859]
                                        t = 0
                                        while t < mem[_8859]:
                                            mem[_8859 + t + 196] = mem[_8859 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_8859] % 32:
                                            require ext_code.size(address(_8858))
                                            call address(_8858).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8859 + 164 len mem[_8859] + 32]
                                        else:
                                            mem[floor32(mem[_8859]) + _8859 + 196] = mem[floor32(mem[_8859]) + _8859 + -(mem[_8859] % 32) + 228 len mem[_8859] % 32]
                                            require ext_code.size(address(_8858))
                                            call address(_8858).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8859], mem[_8859 + 196 len floor32(mem[_8859]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_8859 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_8859 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _8672 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _9043 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _9044 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_9044 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9044 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_9044 + 68] = 0
                                        mem[_9044 + 100] = address(_8672)
                                        mem[_9044 + 132] = 128
                                        mem[_9044 + 164] = mem[_9044]
                                        t = 0
                                        while t < mem[_9044]:
                                            mem[_9044 + t + 196] = mem[_9044 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_9044] % 32:
                                            require ext_code.size(address(_9043))
                                            call address(_9043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8672), 128, mem[_9044 + 164 len mem[_9044] + 32]
                                        else:
                                            mem[floor32(mem[_9044]) + _9044 + 196] = mem[floor32(mem[_9044]) + _9044 + -(mem[_9044] % 32) + 228 len mem[_9044] % 32]
                                            require ext_code.size(address(_9043))
                                            call address(_9043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8672), 128, mem[_9044], mem[_9044 + 196 len floor32(mem[_9044]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_9044 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_9044 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7977):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9261 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9262 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9262 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9262 + 36] = 0
                                    mem[_9262 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9262 + 100] = this.address
                                    mem[_9262 + 132] = 128
                                    mem[_9262 + 164] = mem[_9262]
                                    t = 0
                                    while t < mem[_9262]:
                                        mem[_9262 + t + 196] = mem[_9262 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9262] % 32:
                                        require ext_code.size(address(_9261))
                                        call address(_9261).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_9262 + 164 len mem[_9262] + 32]
                                    else:
                                        mem[floor32(mem[_9262]) + _9262 + 196] = mem[floor32(mem[_9262]) + _9262 + -(mem[_9262] % 32) + 228 len mem[_9262] % 32]
                                        require ext_code.size(address(_9261))
                                        call address(_9261).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_9262], mem[_9262 + 196 len floor32(mem[_9262]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9262 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9262 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _9048 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9456 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9457 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9457 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9457 + 36] = 0
                                    mem[_9457 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9457 + 100] = address(_9048)
                                    mem[_9457 + 132] = 128
                                    mem[_9457 + 164] = mem[_9457]
                                    t = 0
                                    while t < mem[_9457]:
                                        mem[_9457 + t + 196] = mem[_9457 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9457] % 32:
                                        require ext_code.size(address(_9456))
                                        call address(_9456).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_9048), 128, mem[_9457 + 164 len mem[_9457] + 32]
                                    else:
                                        mem[floor32(mem[_9457]) + _9457 + 196] = mem[floor32(mem[_9457]) + _9457 + -(mem[_9457] % 32) + 228 len mem[_9457] % 32]
                                        require ext_code.size(address(_9456))
                                        call address(_9456).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_9048), 128, mem[_9457], mem[_9457 + 196 len floor32(mem[_9457]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9457 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9457 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9264 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9265 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9265 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9265 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9265 + 68] = 0
                                    mem[_9265 + 100] = this.address
                                    mem[_9265 + 132] = 128
                                    mem[_9265 + 164] = mem[_9265]
                                    t = 0
                                    while t < mem[_9265]:
                                        mem[_9265 + t + 196] = mem[_9265 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9265] % 32:
                                        require ext_code.size(address(_9264))
                                        call address(_9264).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_9265 + 164 len mem[_9265] + 32]
                                    else:
                                        mem[floor32(mem[_9265]) + _9265 + 196] = mem[floor32(mem[_9265]) + _9265 + -(mem[_9265] % 32) + 228 len mem[_9265] % 32]
                                        require ext_code.size(address(_9264))
                                        call address(_9264).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_9265], mem[_9265 + 196 len floor32(mem[_9265]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9265 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9265 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _9050 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9461 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9462 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9462 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9462 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9462 + 68] = 0
                                    mem[_9462 + 100] = address(_9050)
                                    mem[_9462 + 132] = 128
                                    mem[_9462 + 164] = mem[_9462]
                                    t = 0
                                    while t < mem[_9462]:
                                        mem[_9462 + t + 196] = mem[_9462 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9462] % 32:
                                        require ext_code.size(address(_9461))
                                        call address(_9461).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_9050), 128, mem[_9462 + 164 len mem[_9462] + 32]
                                    else:
                                        mem[floor32(mem[_9462]) + _9462 + 196] = mem[floor32(mem[_9462]) + _9462 + -(mem[_9462] % 32) + 228 len mem[_9462] % 32]
                                        require ext_code.size(address(_9461))
                                        call address(_9461).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_9050), 128, mem[_9462], mem[_9462 + 196 len floor32(mem[_9462]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9462 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9462 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7977):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8863 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8864 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8864 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8864 + 36] = 0
                                    mem[_8864 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_8864 + 100] = this.address
                                    mem[_8864 + 132] = 128
                                    mem[_8864 + 164] = mem[_8864]
                                    t = 0
                                    while t < mem[_8864]:
                                        mem[_8864 + t + 196] = mem[_8864 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8864] % 32:
                                        require ext_code.size(address(_8863))
                                        call address(_8863).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8864 + 164 len mem[_8864] + 32]
                                    else:
                                        mem[floor32(mem[_8864]) + _8864 + 196] = mem[floor32(mem[_8864]) + _8864 + -(mem[_8864] % 32) + 228 len mem[_8864] % 32]
                                        require ext_code.size(address(_8863))
                                        call address(_8863).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8864], mem[_8864 + 196 len floor32(mem[_8864]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8864 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8864 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8676 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9052 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9053 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9053 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9053 + 36] = 0
                                    mem[_9053 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_9053 + 100] = address(_8676)
                                    mem[_9053 + 132] = 128
                                    mem[_9053 + 164] = mem[_9053]
                                    t = 0
                                    while t < mem[_9053]:
                                        mem[_9053 + t + 196] = mem[_9053 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9053] % 32:
                                        require ext_code.size(address(_9052))
                                        call address(_9052).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8676), 128, mem[_9053 + 164 len mem[_9053] + 32]
                                    else:
                                        mem[floor32(mem[_9053]) + _9053 + 196] = mem[floor32(mem[_9053]) + _9053 + -(mem[_9053] % 32) + 228 len mem[_9053] % 32]
                                        require ext_code.size(address(_9052))
                                        call address(_9052).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8676), 128, mem[_9053], mem[_9053 + 196 len floor32(mem[_9053]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9053 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9053 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8866 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8867 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8867 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8867 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_8867 + 68] = 0
                                    mem[_8867 + 100] = this.address
                                    mem[_8867 + 132] = 128
                                    mem[_8867 + 164] = mem[_8867]
                                    t = 0
                                    while t < mem[_8867]:
                                        mem[_8867 + t + 196] = mem[_8867 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8867] % 32:
                                        require ext_code.size(address(_8866))
                                        call address(_8866).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8867 + 164 len mem[_8867] + 32]
                                    else:
                                        mem[floor32(mem[_8867]) + _8867 + 196] = mem[floor32(mem[_8867]) + _8867 + -(mem[_8867] % 32) + 228 len mem[_8867] % 32]
                                        require ext_code.size(address(_8866))
                                        call address(_8866).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8867], mem[_8867 + 196 len floor32(mem[_8867]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8867 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8867 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8678 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9057 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9058 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9058 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9058 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_9058 + 68] = 0
                                    mem[_9058 + 100] = address(_8678)
                                    mem[_9058 + 132] = 128
                                    mem[_9058 + 164] = mem[_9058]
                                    t = 0
                                    while t < mem[_9058]:
                                        mem[_9058 + t + 196] = mem[_9058 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9058] % 32:
                                        require ext_code.size(address(_9057))
                                        call address(_9057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8678), 128, mem[_9058 + 164 len mem[_9058] + 32]
                                    else:
                                        mem[floor32(mem[_9058]) + _9058 + 196] = mem[floor32(mem[_9058]) + _9058 + -(mem[_9058] % 32) + 228 len mem[_9058] % 32]
                                        require ext_code.size(address(_9057))
                                        call address(_9057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8678), 128, mem[_9058], mem[_9058 + 196 len floor32(mem[_9058]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9058 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9058 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_7977):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _9273 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9274 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9274 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9274 + 36] = 0
                                mem[_9274 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9274 + 100] = this.address
                                mem[_9274 + 132] = 128
                                mem[_9274 + 164] = mem[_9274]
                                t = 0
                                while t < mem[_9274]:
                                    mem[_9274 + t + 196] = mem[_9274 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9274] % 32:
                                    require ext_code.size(address(_9273))
                                    call address(_9273).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_9274 + 164 len mem[_9274] + 32]
                                else:
                                    mem[floor32(mem[_9274]) + _9274 + 196] = mem[floor32(mem[_9274]) + _9274 + -(mem[_9274] % 32) + 228 len mem[_9274] % 32]
                                    require ext_code.size(address(_9273))
                                    call address(_9273).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_9274], mem[_9274 + 196 len floor32(mem[_9274]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9274 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9274 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _9062 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9468 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9469 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9469 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9469 + 36] = 0
                                mem[_9469 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9469 + 100] = address(_9062)
                                mem[_9469 + 132] = 128
                                mem[_9469 + 164] = mem[_9469]
                                t = 0
                                while t < mem[_9469]:
                                    mem[_9469 + t + 196] = mem[_9469 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9469] % 32:
                                    require ext_code.size(address(_9468))
                                    call address(_9468).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_9062), 128, mem[_9469 + 164 len mem[_9469] + 32]
                                else:
                                    mem[floor32(mem[_9469]) + _9469 + 196] = mem[floor32(mem[_9469]) + _9469 + -(mem[_9469] % 32) + 228 len mem[_9469] % 32]
                                    require ext_code.size(address(_9468))
                                    call address(_9468).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_9062), 128, mem[_9469], mem[_9469 + 196 len floor32(mem[_9469]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9469 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9469 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _9276 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9277 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9277 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9277 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9277 + 68] = 0
                                mem[_9277 + 100] = this.address
                                mem[_9277 + 132] = 128
                                mem[_9277 + 164] = mem[_9277]
                                t = 0
                                while t < mem[_9277]:
                                    mem[_9277 + t + 196] = mem[_9277 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9277] % 32:
                                    require ext_code.size(address(_9276))
                                    call address(_9276).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_9277 + 164 len mem[_9277] + 32]
                                else:
                                    mem[floor32(mem[_9277]) + _9277 + 196] = mem[floor32(mem[_9277]) + _9277 + -(mem[_9277] % 32) + 228 len mem[_9277] % 32]
                                    require ext_code.size(address(_9276))
                                    call address(_9276).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_9277], mem[_9277 + 196 len floor32(mem[_9277]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9277 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9277 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _9064 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9473 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9474 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9474 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9474 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9474 + 68] = 0
                                mem[_9474 + 100] = address(_9064)
                                mem[_9474 + 132] = 128
                                mem[_9474 + 164] = mem[_9474]
                                t = 0
                                while t < mem[_9474]:
                                    mem[_9474 + t + 196] = mem[_9474 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9474] % 32:
                                    require ext_code.size(address(_9473))
                                    call address(_9473).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_9064), 128, mem[_9474 + 164 len mem[_9474] + 32]
                                else:
                                    mem[floor32(mem[_9474]) + _9474 + 196] = mem[floor32(mem[_9474]) + _9474 + -(mem[_9474] % 32) + 228 len mem[_9474] % 32]
                                    require ext_code.size(address(_9473))
                                    call address(_9473).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_9064), 128, mem[_9474], mem[_9474 + 196 len floor32(mem[_9474]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9474 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9474 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if address(_8019) == address(_8023):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20] == address(_7977):
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _8871 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _8872 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8872 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8872 + 36] = 0
                                        mem[_8872 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_8872 + 100] = this.address
                                        mem[_8872 + 132] = 128
                                        mem[_8872 + 164] = mem[_8872]
                                        t = 0
                                        while t < mem[_8872]:
                                            mem[_8872 + t + 196] = mem[_8872 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_8872] % 32:
                                            require ext_code.size(address(_8871))
                                            call address(_8871).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8872 + 164 len mem[_8872] + 32]
                                        else:
                                            mem[floor32(mem[_8872]) + _8872 + 196] = mem[floor32(mem[_8872]) + _8872 + -(mem[_8872] % 32) + 228 len mem[_8872] % 32]
                                            require ext_code.size(address(_8871))
                                            call address(_8871).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_8872], mem[_8872 + 196 len floor32(mem[_8872]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_8872 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_8872 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _8682 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _9066 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _9067 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_9067 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9067 + 36] = 0
                                        mem[_9067 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_9067 + 100] = address(_8682)
                                        mem[_9067 + 132] = 128
                                        mem[_9067 + 164] = mem[_9067]
                                        t = 0
                                        while t < mem[_9067]:
                                            mem[_9067 + t + 196] = mem[_9067 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_9067] % 32:
                                            require ext_code.size(address(_9066))
                                            call address(_9066).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8682), 128, mem[_9067 + 164 len mem[_9067] + 32]
                                        else:
                                            mem[floor32(mem[_9067]) + _9067 + 196] = mem[floor32(mem[_9067]) + _9067 + -(mem[_9067] % 32) + 228 len mem[_9067] % 32]
                                            require ext_code.size(address(_9066))
                                            call address(_9066).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_8682), 128, mem[_9067], mem[_9067 + 196 len floor32(mem[_9067]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_9067 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_9067 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _8874 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _8875 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8875 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8875 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_8875 + 68] = 0
                                        mem[_8875 + 100] = this.address
                                        mem[_8875 + 132] = 128
                                        mem[_8875 + 164] = mem[_8875]
                                        t = 0
                                        while t < mem[_8875]:
                                            mem[_8875 + t + 196] = mem[_8875 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_8875] % 32:
                                            require ext_code.size(address(_8874))
                                            call address(_8874).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8875 + 164 len mem[_8875] + 32]
                                        else:
                                            mem[floor32(mem[_8875]) + _8875 + 196] = mem[floor32(mem[_8875]) + _8875 + -(mem[_8875] % 32) + 228 len mem[_8875] % 32]
                                            require ext_code.size(address(_8874))
                                            call address(_8874).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_8875], mem[_8875 + 196 len floor32(mem[_8875]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_8875 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_8875 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _8684 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _9071 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _9072 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_9072 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9072 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_9072 + 68] = 0
                                        mem[_9072 + 100] = address(_8684)
                                        mem[_9072 + 132] = 128
                                        mem[_9072 + 164] = mem[_9072]
                                        t = 0
                                        while t < mem[_9072]:
                                            mem[_9072 + t + 196] = mem[_9072 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_9072] % 32:
                                            require ext_code.size(address(_9071))
                                            call address(_9071).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8684), 128, mem[_9072 + 164 len mem[_9072] + 32]
                                        else:
                                            mem[floor32(mem[_9072]) + _9072 + 196] = mem[floor32(mem[_9072]) + _9072 + -(mem[_9072] % 32) + 228 len mem[_9072] % 32]
                                            require ext_code.size(address(_9071))
                                            call address(_9071).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_8684), 128, mem[_9072], mem[_9072 + 196 len floor32(mem[_9072]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_9072 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_9072 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7977):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9285 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9286 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9286 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9286 + 36] = 0
                                    mem[_9286 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9286 + 100] = this.address
                                    mem[_9286 + 132] = 128
                                    mem[_9286 + 164] = mem[_9286]
                                    t = 0
                                    while t < mem[_9286]:
                                        mem[_9286 + t + 196] = mem[_9286 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9286] % 32:
                                        require ext_code.size(address(_9285))
                                        call address(_9285).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_9286 + 164 len mem[_9286] + 32]
                                    else:
                                        mem[floor32(mem[_9286]) + _9286 + 196] = mem[floor32(mem[_9286]) + _9286 + -(mem[_9286] % 32) + 228 len mem[_9286] % 32]
                                        require ext_code.size(address(_9285))
                                        call address(_9285).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_9286], mem[_9286 + 196 len floor32(mem[_9286]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9286 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9286 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _9076 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9480 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9481 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9481 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9481 + 36] = 0
                                    mem[_9481 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9481 + 100] = address(_9076)
                                    mem[_9481 + 132] = 128
                                    mem[_9481 + 164] = mem[_9481]
                                    t = 0
                                    while t < mem[_9481]:
                                        mem[_9481 + t + 196] = mem[_9481 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9481] % 32:
                                        require ext_code.size(address(_9480))
                                        call address(_9480).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_9076), 128, mem[_9481 + 164 len mem[_9481] + 32]
                                    else:
                                        mem[floor32(mem[_9481]) + _9481 + 196] = mem[floor32(mem[_9481]) + _9481 + -(mem[_9481] % 32) + 228 len mem[_9481] % 32]
                                        require ext_code.size(address(_9480))
                                        call address(_9480).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_9076), 128, mem[_9481], mem[_9481 + 196 len floor32(mem[_9481]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9481 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9481 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9288 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9289 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9289 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9289 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9289 + 68] = 0
                                    mem[_9289 + 100] = this.address
                                    mem[_9289 + 132] = 128
                                    mem[_9289 + 164] = mem[_9289]
                                    t = 0
                                    while t < mem[_9289]:
                                        mem[_9289 + t + 196] = mem[_9289 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9289] % 32:
                                        require ext_code.size(address(_9288))
                                        call address(_9288).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_9289 + 164 len mem[_9289] + 32]
                                    else:
                                        mem[floor32(mem[_9289]) + _9289 + 196] = mem[floor32(mem[_9289]) + _9289 + -(mem[_9289] % 32) + 228 len mem[_9289] % 32]
                                        require ext_code.size(address(_9288))
                                        call address(_9288).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_9289], mem[_9289 + 196 len floor32(mem[_9289]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9289 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9289 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _9078 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9485 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9486 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9486 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9486 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_9486 + 68] = 0
                                    mem[_9486 + 100] = address(_9078)
                                    mem[_9486 + 132] = 128
                                    mem[_9486 + 164] = mem[_9486]
                                    t = 0
                                    while t < mem[_9486]:
                                        mem[_9486 + t + 196] = mem[_9486 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9486] % 32:
                                        require ext_code.size(address(_9485))
                                        call address(_9485).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_9078), 128, mem[_9486 + 164 len mem[_9486] + 32]
                                    else:
                                        mem[floor32(mem[_9486]) + _9486 + 196] = mem[floor32(mem[_9486]) + _9486 + -(mem[_9486] % 32) + 228 len mem[_9486] % 32]
                                        require ext_code.size(address(_9485))
                                        call address(_9485).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_9078), 128, mem[_9486], mem[_9486 + 196 len floor32(mem[_9486]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9486 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9486 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7977):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8879 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8880 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8880 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8880 + 36] = 0
                                    mem[_8880 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_8880 + 100] = this.address
                                    mem[_8880 + 132] = 128
                                    mem[_8880 + 164] = mem[_8880]
                                    t = 0
                                    while t < mem[_8880]:
                                        mem[_8880 + t + 196] = mem[_8880 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8880] % 32:
                                        require ext_code.size(address(_8879))
                                        call address(_8879).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8880 + 164 len mem[_8880] + 32]
                                    else:
                                        mem[floor32(mem[_8880]) + _8880 + 196] = mem[floor32(mem[_8880]) + _8880 + -(mem[_8880] % 32) + 228 len mem[_8880] % 32]
                                        require ext_code.size(address(_8879))
                                        call address(_8879).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_8880], mem[_8880 + 196 len floor32(mem[_8880]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8880 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8880 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8688 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9080 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9081 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9081 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9081 + 36] = 0
                                    mem[_9081 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_9081 + 100] = address(_8688)
                                    mem[_9081 + 132] = 128
                                    mem[_9081 + 164] = mem[_9081]
                                    t = 0
                                    while t < mem[_9081]:
                                        mem[_9081 + t + 196] = mem[_9081 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9081] % 32:
                                        require ext_code.size(address(_9080))
                                        call address(_9080).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8688), 128, mem[_9081 + 164 len mem[_9081] + 32]
                                    else:
                                        mem[floor32(mem[_9081]) + _9081 + 196] = mem[floor32(mem[_9081]) + _9081 + -(mem[_9081] % 32) + 228 len mem[_9081] % 32]
                                        require ext_code.size(address(_9080))
                                        call address(_9080).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_8688), 128, mem[_9081], mem[_9081 + 196 len floor32(mem[_9081]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9081 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9081 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _8882 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _8883 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_8883 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8883 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_8883 + 68] = 0
                                    mem[_8883 + 100] = this.address
                                    mem[_8883 + 132] = 128
                                    mem[_8883 + 164] = mem[_8883]
                                    t = 0
                                    while t < mem[_8883]:
                                        mem[_8883 + t + 196] = mem[_8883 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_8883] % 32:
                                        require ext_code.size(address(_8882))
                                        call address(_8882).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8883 + 164 len mem[_8883] + 32]
                                    else:
                                        mem[floor32(mem[_8883]) + _8883 + 196] = mem[floor32(mem[_8883]) + _8883 + -(mem[_8883] % 32) + 228 len mem[_8883] % 32]
                                        require ext_code.size(address(_8882))
                                        call address(_8882).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_8883], mem[_8883 + 196 len floor32(mem[_8883]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_8883 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_8883 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _8690 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _9085 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _9086 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_9086 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9086 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_9086 + 68] = 0
                                    mem[_9086 + 100] = address(_8690)
                                    mem[_9086 + 132] = 128
                                    mem[_9086 + 164] = mem[_9086]
                                    t = 0
                                    while t < mem[_9086]:
                                        mem[_9086 + t + 196] = mem[_9086 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_9086] % 32:
                                        require ext_code.size(address(_9085))
                                        call address(_9085).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8690), 128, mem[_9086 + 164 len mem[_9086] + 32]
                                    else:
                                        mem[floor32(mem[_9086]) + _9086 + 196] = mem[floor32(mem[_9086]) + _9086 + -(mem[_9086] % 32) + 228 len mem[_9086] % 32]
                                        require ext_code.size(address(_9085))
                                        call address(_9085).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_8690), 128, mem[_9086], mem[_9086 + 196 len floor32(mem[_9086]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_9086 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_9086 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_7977):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _9297 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9298 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9298 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9298 + 36] = 0
                                mem[_9298 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9298 + 100] = this.address
                                mem[_9298 + 132] = 128
                                mem[_9298 + 164] = mem[_9298]
                                t = 0
                                while t < mem[_9298]:
                                    mem[_9298 + t + 196] = mem[_9298 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9298] % 32:
                                    require ext_code.size(address(_9297))
                                    call address(_9297).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_9298 + 164 len mem[_9298] + 32]
                                else:
                                    mem[floor32(mem[_9298]) + _9298 + 196] = mem[floor32(mem[_9298]) + _9298 + -(mem[_9298] % 32) + 228 len mem[_9298] % 32]
                                    require ext_code.size(address(_9297))
                                    call address(_9297).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_9298], mem[_9298 + 196 len floor32(mem[_9298]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9298 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9298 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _9090 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9492 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9493 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9493 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9493 + 36] = 0
                                mem[_9493 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9493 + 100] = address(_9090)
                                mem[_9493 + 132] = 128
                                mem[_9493 + 164] = mem[_9493]
                                t = 0
                                while t < mem[_9493]:
                                    mem[_9493 + t + 196] = mem[_9493 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9493] % 32:
                                    require ext_code.size(address(_9492))
                                    call address(_9492).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_9090), 128, mem[_9493 + 164 len mem[_9493] + 32]
                                else:
                                    mem[floor32(mem[_9493]) + _9493 + 196] = mem[floor32(mem[_9493]) + _9493 + -(mem[_9493] % 32) + 228 len mem[_9493] % 32]
                                    require ext_code.size(address(_9492))
                                    call address(_9492).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_9090), 128, mem[_9493], mem[_9493 + 196 len floor32(mem[_9493]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9493 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9493 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _9300 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9301 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9301 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9301 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9301 + 68] = 0
                                mem[_9301 + 100] = this.address
                                mem[_9301 + 132] = 128
                                mem[_9301 + 164] = mem[_9301]
                                t = 0
                                while t < mem[_9301]:
                                    mem[_9301 + t + 196] = mem[_9301 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9301] % 32:
                                    require ext_code.size(address(_9300))
                                    call address(_9300).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_9301 + 164 len mem[_9301] + 32]
                                else:
                                    mem[floor32(mem[_9301]) + _9301 + 196] = mem[floor32(mem[_9301]) + _9301 + -(mem[_9301] % 32) + 228 len mem[_9301] % 32]
                                    require ext_code.size(address(_9300))
                                    call address(_9300).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_9301], mem[_9301 + 196 len floor32(mem[_9301]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9301 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9301 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _9092 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _9497 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _9498 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9498 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9498 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_9498 + 68] = 0
                                mem[_9498 + 100] = address(_9092)
                                mem[_9498 + 132] = 128
                                mem[_9498 + 164] = mem[_9498]
                                t = 0
                                while t < mem[_9498]:
                                    mem[_9498 + t + 196] = mem[_9498 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_9498] % 32:
                                    require ext_code.size(address(_9497))
                                    call address(_9497).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_9092), 128, mem[_9498 + 164 len mem[_9498] + 32]
                                else:
                                    mem[floor32(mem[_9498]) + _9498 + 196] = mem[floor32(mem[_9498]) + _9498 + -(mem[_9498] % 32) + 228 len mem[_9498] % 32]
                                    require ext_code.size(address(_9497))
                                    call address(_9497).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_9092), 128, mem[_9498], mem[_9498 + 196 len floor32(mem[_9498]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_9498 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_9498 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor1)
                call stor1.deposit() with:
                   value s wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < mem[(32 * arg1.length) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                mem[mem[64] + 36] = s
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require idx < mem[96]
                _8013 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _8021 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[96]
                    _8076 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _8084 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if address(_8076) == address(_8076):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20] == address(_8013):
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10535 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10536 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10536 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10536 + 36] = 0
                                        mem[_10536 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10536 + 100] = this.address
                                        mem[_10536 + 132] = 128
                                        mem[_10536 + 164] = mem[_10536]
                                        t = 0
                                        while t < mem[_10536]:
                                            mem[_10536 + t + 196] = mem[_10536 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10536] % 32:
                                            require ext_code.size(address(_10535))
                                            call address(_10535).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_10536 + 164 len mem[_10536] + 32]
                                        else:
                                            mem[floor32(mem[_10536]) + _10536 + 196] = mem[floor32(mem[_10536]) + _10536 + -(mem[_10536] % 32) + 228 len mem[_10536] % 32]
                                            require ext_code.size(address(_10535))
                                            call address(_10535).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_10536], mem[_10536 + 196 len floor32(mem[_10536]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10536 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10536 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _10246 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10854 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10855 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10855 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10855 + 36] = 0
                                        mem[_10855 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10855 + 100] = address(_10246)
                                        mem[_10855 + 132] = 128
                                        mem[_10855 + 164] = mem[_10855]
                                        t = 0
                                        while t < mem[_10855]:
                                            mem[_10855 + t + 196] = mem[_10855 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10855] % 32:
                                            require ext_code.size(address(_10854))
                                            call address(_10854).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10246), 128, mem[_10855 + 164 len mem[_10855] + 32]
                                        else:
                                            mem[floor32(mem[_10855]) + _10855 + 196] = mem[floor32(mem[_10855]) + _10855 + -(mem[_10855] % 32) + 228 len mem[_10855] % 32]
                                            require ext_code.size(address(_10854))
                                            call address(_10854).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10246), 128, mem[_10855], mem[_10855 + 196 len floor32(mem[_10855]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10855 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10855 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10538 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10539 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10539 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10539 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10539 + 68] = 0
                                        mem[_10539 + 100] = this.address
                                        mem[_10539 + 132] = 128
                                        mem[_10539 + 164] = mem[_10539]
                                        t = 0
                                        while t < mem[_10539]:
                                            mem[_10539 + t + 196] = mem[_10539 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10539] % 32:
                                            require ext_code.size(address(_10538))
                                            call address(_10538).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_10539 + 164 len mem[_10539] + 32]
                                        else:
                                            mem[floor32(mem[_10539]) + _10539 + 196] = mem[floor32(mem[_10539]) + _10539 + -(mem[_10539] % 32) + 228 len mem[_10539] % 32]
                                            require ext_code.size(address(_10538))
                                            call address(_10538).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_10539], mem[_10539 + 196 len floor32(mem[_10539]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10539 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10539 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _10248 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10859 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10860 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10860 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10860 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10860 + 68] = 0
                                        mem[_10860 + 100] = address(_10248)
                                        mem[_10860 + 132] = 128
                                        mem[_10860 + 164] = mem[_10860]
                                        t = 0
                                        while t < mem[_10860]:
                                            mem[_10860 + t + 196] = mem[_10860 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10860] % 32:
                                            require ext_code.size(address(_10859))
                                            call address(_10859).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10248), 128, mem[_10860 + 164 len mem[_10860] + 32]
                                        else:
                                            mem[floor32(mem[_10860]) + _10860 + 196] = mem[floor32(mem[_10860]) + _10860 + -(mem[_10860] % 32) + 228 len mem[_10860] % 32]
                                            require ext_code.size(address(_10859))
                                            call address(_10859).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10248), 128, mem[_10860], mem[_10860 + 196 len floor32(mem[_10860]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10860 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10860 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_8013):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11261 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11262 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11262 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11262 + 36] = 0
                                    mem[_11262 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11262 + 100] = this.address
                                    mem[_11262 + 132] = 128
                                    mem[_11262 + 164] = mem[_11262]
                                    t = 0
                                    while t < mem[_11262]:
                                        mem[_11262 + t + 196] = mem[_11262 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11262] % 32:
                                        require ext_code.size(address(_11261))
                                        call address(_11261).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_11262 + 164 len mem[_11262] + 32]
                                    else:
                                        mem[floor32(mem[_11262]) + _11262 + 196] = mem[floor32(mem[_11262]) + _11262 + -(mem[_11262] % 32) + 228 len mem[_11262] % 32]
                                        require ext_code.size(address(_11261))
                                        call address(_11261).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_11262], mem[_11262 + 196 len floor32(mem[_11262]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11262 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11262 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10864 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11672 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11673 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11673 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11673 + 36] = 0
                                    mem[_11673 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11673 + 100] = address(_10864)
                                    mem[_11673 + 132] = 128
                                    mem[_11673 + 164] = mem[_11673]
                                    t = 0
                                    while t < mem[_11673]:
                                        mem[_11673 + t + 196] = mem[_11673 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11673] % 32:
                                        require ext_code.size(address(_11672))
                                        call address(_11672).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10864), 128, mem[_11673 + 164 len mem[_11673] + 32]
                                    else:
                                        mem[floor32(mem[_11673]) + _11673 + 196] = mem[floor32(mem[_11673]) + _11673 + -(mem[_11673] % 32) + 228 len mem[_11673] % 32]
                                        require ext_code.size(address(_11672))
                                        call address(_11672).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10864), 128, mem[_11673], mem[_11673 + 196 len floor32(mem[_11673]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11673 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11673 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11264 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11265 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11265 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11265 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11265 + 68] = 0
                                    mem[_11265 + 100] = this.address
                                    mem[_11265 + 132] = 128
                                    mem[_11265 + 164] = mem[_11265]
                                    t = 0
                                    while t < mem[_11265]:
                                        mem[_11265 + t + 196] = mem[_11265 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11265] % 32:
                                        require ext_code.size(address(_11264))
                                        call address(_11264).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_11265 + 164 len mem[_11265] + 32]
                                    else:
                                        mem[floor32(mem[_11265]) + _11265 + 196] = mem[floor32(mem[_11265]) + _11265 + -(mem[_11265] % 32) + 228 len mem[_11265] % 32]
                                        require ext_code.size(address(_11264))
                                        call address(_11264).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_11265], mem[_11265 + 196 len floor32(mem[_11265]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11265 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11265 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10866 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11677 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11678 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11678 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11678 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11678 + 68] = 0
                                    mem[_11678 + 100] = address(_10866)
                                    mem[_11678 + 132] = 128
                                    mem[_11678 + 164] = mem[_11678]
                                    t = 0
                                    while t < mem[_11678]:
                                        mem[_11678 + t + 196] = mem[_11678 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11678] % 32:
                                        require ext_code.size(address(_11677))
                                        call address(_11677).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10866), 128, mem[_11678 + 164 len mem[_11678] + 32]
                                    else:
                                        mem[floor32(mem[_11678]) + _11678 + 196] = mem[floor32(mem[_11678]) + _11678 + -(mem[_11678] % 32) + 228 len mem[_11678] % 32]
                                        require ext_code.size(address(_11677))
                                        call address(_11677).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10866), 128, mem[_11678], mem[_11678 + 196 len floor32(mem[_11678]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11678 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11678 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_8013):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10543 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10544 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10544 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10544 + 36] = 0
                                    mem[_10544 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10544 + 100] = this.address
                                    mem[_10544 + 132] = 128
                                    mem[_10544 + 164] = mem[_10544]
                                    t = 0
                                    while t < mem[_10544]:
                                        mem[_10544 + t + 196] = mem[_10544 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10544] % 32:
                                        require ext_code.size(address(_10543))
                                        call address(_10543).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_10544 + 164 len mem[_10544] + 32]
                                    else:
                                        mem[floor32(mem[_10544]) + _10544 + 196] = mem[floor32(mem[_10544]) + _10544 + -(mem[_10544] % 32) + 228 len mem[_10544] % 32]
                                        require ext_code.size(address(_10543))
                                        call address(_10543).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_10544], mem[_10544 + 196 len floor32(mem[_10544]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10544 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10544 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10252 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10868 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10869 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10869 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10869 + 36] = 0
                                    mem[_10869 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10869 + 100] = address(_10252)
                                    mem[_10869 + 132] = 128
                                    mem[_10869 + 164] = mem[_10869]
                                    t = 0
                                    while t < mem[_10869]:
                                        mem[_10869 + t + 196] = mem[_10869 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10869] % 32:
                                        require ext_code.size(address(_10868))
                                        call address(_10868).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10252), 128, mem[_10869 + 164 len mem[_10869] + 32]
                                    else:
                                        mem[floor32(mem[_10869]) + _10869 + 196] = mem[floor32(mem[_10869]) + _10869 + -(mem[_10869] % 32) + 228 len mem[_10869] % 32]
                                        require ext_code.size(address(_10868))
                                        call address(_10868).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10252), 128, mem[_10869], mem[_10869 + 196 len floor32(mem[_10869]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10869 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10869 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10546 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10547 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10547 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10547 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10547 + 68] = 0
                                    mem[_10547 + 100] = this.address
                                    mem[_10547 + 132] = 128
                                    mem[_10547 + 164] = mem[_10547]
                                    t = 0
                                    while t < mem[_10547]:
                                        mem[_10547 + t + 196] = mem[_10547 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10547] % 32:
                                        require ext_code.size(address(_10546))
                                        call address(_10546).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_10547 + 164 len mem[_10547] + 32]
                                    else:
                                        mem[floor32(mem[_10547]) + _10547 + 196] = mem[floor32(mem[_10547]) + _10547 + -(mem[_10547] % 32) + 228 len mem[_10547] % 32]
                                        require ext_code.size(address(_10546))
                                        call address(_10546).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_10547], mem[_10547 + 196 len floor32(mem[_10547]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10547 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10547 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10254 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10873 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10874 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10874 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10874 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10874 + 68] = 0
                                    mem[_10874 + 100] = address(_10254)
                                    mem[_10874 + 132] = 128
                                    mem[_10874 + 164] = mem[_10874]
                                    t = 0
                                    while t < mem[_10874]:
                                        mem[_10874 + t + 196] = mem[_10874 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10874] % 32:
                                        require ext_code.size(address(_10873))
                                        call address(_10873).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10254), 128, mem[_10874 + 164 len mem[_10874] + 32]
                                    else:
                                        mem[floor32(mem[_10874]) + _10874 + 196] = mem[floor32(mem[_10874]) + _10874 + -(mem[_10874] % 32) + 228 len mem[_10874] % 32]
                                        require ext_code.size(address(_10873))
                                        call address(_10873).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10254), 128, mem[_10874], mem[_10874 + 196 len floor32(mem[_10874]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10874 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10874 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_8013):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _11273 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11274 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11274 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11274 + 36] = 0
                                mem[_11274 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11274 + 100] = this.address
                                mem[_11274 + 132] = 128
                                mem[_11274 + 164] = mem[_11274]
                                t = 0
                                while t < mem[_11274]:
                                    mem[_11274 + t + 196] = mem[_11274 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11274] % 32:
                                    require ext_code.size(address(_11273))
                                    call address(_11273).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_11274 + 164 len mem[_11274] + 32]
                                else:
                                    mem[floor32(mem[_11274]) + _11274 + 196] = mem[floor32(mem[_11274]) + _11274 + -(mem[_11274] % 32) + 228 len mem[_11274] % 32]
                                    require ext_code.size(address(_11273))
                                    call address(_11273).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_11274], mem[_11274 + 196 len floor32(mem[_11274]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11274 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11274 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _10878 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _11684 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11685 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11685 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11685 + 36] = 0
                                mem[_11685 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11685 + 100] = address(_10878)
                                mem[_11685 + 132] = 128
                                mem[_11685 + 164] = mem[_11685]
                                t = 0
                                while t < mem[_11685]:
                                    mem[_11685 + t + 196] = mem[_11685 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11685] % 32:
                                    require ext_code.size(address(_11684))
                                    call address(_11684).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10878), 128, mem[_11685 + 164 len mem[_11685] + 32]
                                else:
                                    mem[floor32(mem[_11685]) + _11685 + 196] = mem[floor32(mem[_11685]) + _11685 + -(mem[_11685] % 32) + 228 len mem[_11685] % 32]
                                    require ext_code.size(address(_11684))
                                    call address(_11684).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10878), 128, mem[_11685], mem[_11685 + 196 len floor32(mem[_11685]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11685 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11685 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _11276 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11277 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11277 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11277 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11277 + 68] = 0
                                mem[_11277 + 100] = this.address
                                mem[_11277 + 132] = 128
                                mem[_11277 + 164] = mem[_11277]
                                t = 0
                                while t < mem[_11277]:
                                    mem[_11277 + t + 196] = mem[_11277 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11277] % 32:
                                    require ext_code.size(address(_11276))
                                    call address(_11276).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_11277 + 164 len mem[_11277] + 32]
                                else:
                                    mem[floor32(mem[_11277]) + _11277 + 196] = mem[floor32(mem[_11277]) + _11277 + -(mem[_11277] % 32) + 228 len mem[_11277] % 32]
                                    require ext_code.size(address(_11276))
                                    call address(_11276).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_11277], mem[_11277 + 196 len floor32(mem[_11277]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11277 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11277 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _10880 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _11689 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11690 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11690 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11690 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11690 + 68] = 0
                                mem[_11690 + 100] = address(_10880)
                                mem[_11690 + 132] = 128
                                mem[_11690 + 164] = mem[_11690]
                                t = 0
                                while t < mem[_11690]:
                                    mem[_11690 + t + 196] = mem[_11690 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11690] % 32:
                                    require ext_code.size(address(_11689))
                                    call address(_11689).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10880), 128, mem[_11690 + 164 len mem[_11690] + 32]
                                else:
                                    mem[floor32(mem[_11690]) + _11690 + 196] = mem[floor32(mem[_11690]) + _11690 + -(mem[_11690] % 32) + 228 len mem[_11690] % 32]
                                    require ext_code.size(address(_11689))
                                    call address(_11689).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10880), 128, mem[_11690], mem[_11690 + 196 len floor32(mem[_11690]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11690 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11690 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if address(_8076) == address(_8084):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20] == address(_8013):
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10551 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10552 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10552 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10552 + 36] = 0
                                        mem[_10552 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10552 + 100] = this.address
                                        mem[_10552 + 132] = 128
                                        mem[_10552 + 164] = mem[_10552]
                                        t = 0
                                        while t < mem[_10552]:
                                            mem[_10552 + t + 196] = mem[_10552 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10552] % 32:
                                            require ext_code.size(address(_10551))
                                            call address(_10551).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_10552 + 164 len mem[_10552] + 32]
                                        else:
                                            mem[floor32(mem[_10552]) + _10552 + 196] = mem[floor32(mem[_10552]) + _10552 + -(mem[_10552] % 32) + 228 len mem[_10552] % 32]
                                            require ext_code.size(address(_10551))
                                            call address(_10551).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_10552], mem[_10552 + 196 len floor32(mem[_10552]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10552 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10552 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _10258 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10882 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10883 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10883 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10883 + 36] = 0
                                        mem[_10883 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10883 + 100] = address(_10258)
                                        mem[_10883 + 132] = 128
                                        mem[_10883 + 164] = mem[_10883]
                                        t = 0
                                        while t < mem[_10883]:
                                            mem[_10883 + t + 196] = mem[_10883 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10883] % 32:
                                            require ext_code.size(address(_10882))
                                            call address(_10882).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10258), 128, mem[_10883 + 164 len mem[_10883] + 32]
                                        else:
                                            mem[floor32(mem[_10883]) + _10883 + 196] = mem[floor32(mem[_10883]) + _10883 + -(mem[_10883] % 32) + 228 len mem[_10883] % 32]
                                            require ext_code.size(address(_10882))
                                            call address(_10882).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10258), 128, mem[_10883], mem[_10883 + 196 len floor32(mem[_10883]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10883 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10883 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10554 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10555 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10555 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10555 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10555 + 68] = 0
                                        mem[_10555 + 100] = this.address
                                        mem[_10555 + 132] = 128
                                        mem[_10555 + 164] = mem[_10555]
                                        t = 0
                                        while t < mem[_10555]:
                                            mem[_10555 + t + 196] = mem[_10555 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10555] % 32:
                                            require ext_code.size(address(_10554))
                                            call address(_10554).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_10555 + 164 len mem[_10555] + 32]
                                        else:
                                            mem[floor32(mem[_10555]) + _10555 + 196] = mem[floor32(mem[_10555]) + _10555 + -(mem[_10555] % 32) + 228 len mem[_10555] % 32]
                                            require ext_code.size(address(_10554))
                                            call address(_10554).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_10555], mem[_10555 + 196 len floor32(mem[_10555]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10555 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10555 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _10260 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10887 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10888 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10888 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10888 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10888 + 68] = 0
                                        mem[_10888 + 100] = address(_10260)
                                        mem[_10888 + 132] = 128
                                        mem[_10888 + 164] = mem[_10888]
                                        t = 0
                                        while t < mem[_10888]:
                                            mem[_10888 + t + 196] = mem[_10888 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10888] % 32:
                                            require ext_code.size(address(_10887))
                                            call address(_10887).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10260), 128, mem[_10888 + 164 len mem[_10888] + 32]
                                        else:
                                            mem[floor32(mem[_10888]) + _10888 + 196] = mem[floor32(mem[_10888]) + _10888 + -(mem[_10888] % 32) + 228 len mem[_10888] % 32]
                                            require ext_code.size(address(_10887))
                                            call address(_10887).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10260), 128, mem[_10888], mem[_10888 + 196 len floor32(mem[_10888]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10888 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10888 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_8013):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11285 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11286 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11286 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11286 + 36] = 0
                                    mem[_11286 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11286 + 100] = this.address
                                    mem[_11286 + 132] = 128
                                    mem[_11286 + 164] = mem[_11286]
                                    t = 0
                                    while t < mem[_11286]:
                                        mem[_11286 + t + 196] = mem[_11286 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11286] % 32:
                                        require ext_code.size(address(_11285))
                                        call address(_11285).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_11286 + 164 len mem[_11286] + 32]
                                    else:
                                        mem[floor32(mem[_11286]) + _11286 + 196] = mem[floor32(mem[_11286]) + _11286 + -(mem[_11286] % 32) + 228 len mem[_11286] % 32]
                                        require ext_code.size(address(_11285))
                                        call address(_11285).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_11286], mem[_11286 + 196 len floor32(mem[_11286]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11286 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11286 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10892 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11696 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11697 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11697 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11697 + 36] = 0
                                    mem[_11697 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11697 + 100] = address(_10892)
                                    mem[_11697 + 132] = 128
                                    mem[_11697 + 164] = mem[_11697]
                                    t = 0
                                    while t < mem[_11697]:
                                        mem[_11697 + t + 196] = mem[_11697 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11697] % 32:
                                        require ext_code.size(address(_11696))
                                        call address(_11696).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10892), 128, mem[_11697 + 164 len mem[_11697] + 32]
                                    else:
                                        mem[floor32(mem[_11697]) + _11697 + 196] = mem[floor32(mem[_11697]) + _11697 + -(mem[_11697] % 32) + 228 len mem[_11697] % 32]
                                        require ext_code.size(address(_11696))
                                        call address(_11696).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10892), 128, mem[_11697], mem[_11697 + 196 len floor32(mem[_11697]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11697 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11697 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11288 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11289 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11289 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11289 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11289 + 68] = 0
                                    mem[_11289 + 100] = this.address
                                    mem[_11289 + 132] = 128
                                    mem[_11289 + 164] = mem[_11289]
                                    t = 0
                                    while t < mem[_11289]:
                                        mem[_11289 + t + 196] = mem[_11289 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11289] % 32:
                                        require ext_code.size(address(_11288))
                                        call address(_11288).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_11289 + 164 len mem[_11289] + 32]
                                    else:
                                        mem[floor32(mem[_11289]) + _11289 + 196] = mem[floor32(mem[_11289]) + _11289 + -(mem[_11289] % 32) + 228 len mem[_11289] % 32]
                                        require ext_code.size(address(_11288))
                                        call address(_11288).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_11289], mem[_11289 + 196 len floor32(mem[_11289]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11289 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11289 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10894 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11701 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11702 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11702 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11702 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11702 + 68] = 0
                                    mem[_11702 + 100] = address(_10894)
                                    mem[_11702 + 132] = 128
                                    mem[_11702 + 164] = mem[_11702]
                                    t = 0
                                    while t < mem[_11702]:
                                        mem[_11702 + t + 196] = mem[_11702 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11702] % 32:
                                        require ext_code.size(address(_11701))
                                        call address(_11701).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10894), 128, mem[_11702 + 164 len mem[_11702] + 32]
                                    else:
                                        mem[floor32(mem[_11702]) + _11702 + 196] = mem[floor32(mem[_11702]) + _11702 + -(mem[_11702] % 32) + 228 len mem[_11702] % 32]
                                        require ext_code.size(address(_11701))
                                        call address(_11701).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10894), 128, mem[_11702], mem[_11702 + 196 len floor32(mem[_11702]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11702 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11702 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_8013):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10559 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10560 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10560 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10560 + 36] = 0
                                    mem[_10560 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10560 + 100] = this.address
                                    mem[_10560 + 132] = 128
                                    mem[_10560 + 164] = mem[_10560]
                                    t = 0
                                    while t < mem[_10560]:
                                        mem[_10560 + t + 196] = mem[_10560 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10560] % 32:
                                        require ext_code.size(address(_10559))
                                        call address(_10559).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_10560 + 164 len mem[_10560] + 32]
                                    else:
                                        mem[floor32(mem[_10560]) + _10560 + 196] = mem[floor32(mem[_10560]) + _10560 + -(mem[_10560] % 32) + 228 len mem[_10560] % 32]
                                        require ext_code.size(address(_10559))
                                        call address(_10559).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_10560], mem[_10560 + 196 len floor32(mem[_10560]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10560 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10560 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10264 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10896 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10897 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10897 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10897 + 36] = 0
                                    mem[_10897 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10897 + 100] = address(_10264)
                                    mem[_10897 + 132] = 128
                                    mem[_10897 + 164] = mem[_10897]
                                    t = 0
                                    while t < mem[_10897]:
                                        mem[_10897 + t + 196] = mem[_10897 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10897] % 32:
                                        require ext_code.size(address(_10896))
                                        call address(_10896).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10264), 128, mem[_10897 + 164 len mem[_10897] + 32]
                                    else:
                                        mem[floor32(mem[_10897]) + _10897 + 196] = mem[floor32(mem[_10897]) + _10897 + -(mem[_10897] % 32) + 228 len mem[_10897] % 32]
                                        require ext_code.size(address(_10896))
                                        call address(_10896).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10264), 128, mem[_10897], mem[_10897 + 196 len floor32(mem[_10897]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10897 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10897 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10562 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10563 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10563 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10563 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10563 + 68] = 0
                                    mem[_10563 + 100] = this.address
                                    mem[_10563 + 132] = 128
                                    mem[_10563 + 164] = mem[_10563]
                                    t = 0
                                    while t < mem[_10563]:
                                        mem[_10563 + t + 196] = mem[_10563 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10563] % 32:
                                        require ext_code.size(address(_10562))
                                        call address(_10562).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_10563 + 164 len mem[_10563] + 32]
                                    else:
                                        mem[floor32(mem[_10563]) + _10563 + 196] = mem[floor32(mem[_10563]) + _10563 + -(mem[_10563] % 32) + 228 len mem[_10563] % 32]
                                        require ext_code.size(address(_10562))
                                        call address(_10562).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_10563], mem[_10563 + 196 len floor32(mem[_10563]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10563 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10563 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10266 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10901 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10902 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10902 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10902 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10902 + 68] = 0
                                    mem[_10902 + 100] = address(_10266)
                                    mem[_10902 + 132] = 128
                                    mem[_10902 + 164] = mem[_10902]
                                    t = 0
                                    while t < mem[_10902]:
                                        mem[_10902 + t + 196] = mem[_10902 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10902] % 32:
                                        require ext_code.size(address(_10901))
                                        call address(_10901).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10266), 128, mem[_10902 + 164 len mem[_10902] + 32]
                                    else:
                                        mem[floor32(mem[_10902]) + _10902 + 196] = mem[floor32(mem[_10902]) + _10902 + -(mem[_10902] % 32) + 228 len mem[_10902] % 32]
                                        require ext_code.size(address(_10901))
                                        call address(_10901).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10266), 128, mem[_10902], mem[_10902 + 196 len floor32(mem[_10902]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10902 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10902 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_8013):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _11297 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11298 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11298 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11298 + 36] = 0
                                mem[_11298 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11298 + 100] = this.address
                                mem[_11298 + 132] = 128
                                mem[_11298 + 164] = mem[_11298]
                                t = 0
                                while t < mem[_11298]:
                                    mem[_11298 + t + 196] = mem[_11298 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11298] % 32:
                                    require ext_code.size(address(_11297))
                                    call address(_11297).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_11298 + 164 len mem[_11298] + 32]
                                else:
                                    mem[floor32(mem[_11298]) + _11298 + 196] = mem[floor32(mem[_11298]) + _11298 + -(mem[_11298] % 32) + 228 len mem[_11298] % 32]
                                    require ext_code.size(address(_11297))
                                    call address(_11297).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_11298], mem[_11298 + 196 len floor32(mem[_11298]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11298 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11298 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _10906 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _11708 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11709 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11709 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11709 + 36] = 0
                                mem[_11709 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11709 + 100] = address(_10906)
                                mem[_11709 + 132] = 128
                                mem[_11709 + 164] = mem[_11709]
                                t = 0
                                while t < mem[_11709]:
                                    mem[_11709 + t + 196] = mem[_11709 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11709] % 32:
                                    require ext_code.size(address(_11708))
                                    call address(_11708).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10906), 128, mem[_11709 + 164 len mem[_11709] + 32]
                                else:
                                    mem[floor32(mem[_11709]) + _11709 + 196] = mem[floor32(mem[_11709]) + _11709 + -(mem[_11709] % 32) + 228 len mem[_11709] % 32]
                                    require ext_code.size(address(_11708))
                                    call address(_11708).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10906), 128, mem[_11709], mem[_11709 + 196 len floor32(mem[_11709]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11709 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11709 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _11300 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11301 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11301 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11301 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11301 + 68] = 0
                                mem[_11301 + 100] = this.address
                                mem[_11301 + 132] = 128
                                mem[_11301 + 164] = mem[_11301]
                                t = 0
                                while t < mem[_11301]:
                                    mem[_11301 + t + 196] = mem[_11301 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11301] % 32:
                                    require ext_code.size(address(_11300))
                                    call address(_11300).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_11301 + 164 len mem[_11301] + 32]
                                else:
                                    mem[floor32(mem[_11301]) + _11301 + 196] = mem[floor32(mem[_11301]) + _11301 + -(mem[_11301] % 32) + 228 len mem[_11301] % 32]
                                    require ext_code.size(address(_11300))
                                    call address(_11300).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_11301], mem[_11301 + 196 len floor32(mem[_11301]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11301 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11301 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _10908 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _11713 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11714 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11714 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11714 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11714 + 68] = 0
                                mem[_11714 + 100] = address(_10908)
                                mem[_11714 + 132] = 128
                                mem[_11714 + 164] = mem[_11714]
                                t = 0
                                while t < mem[_11714]:
                                    mem[_11714 + t + 196] = mem[_11714 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11714] % 32:
                                    require ext_code.size(address(_11713))
                                    call address(_11713).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10908), 128, mem[_11714 + 164 len mem[_11714] + 32]
                                else:
                                    mem[floor32(mem[_11714]) + _11714 + 196] = mem[floor32(mem[_11714]) + _11714 + -(mem[_11714] % 32) + 228 len mem[_11714] % 32]
                                    require ext_code.size(address(_11713))
                                    call address(_11713).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10908), 128, mem[_11714], mem[_11714 + 196 len floor32(mem[_11714]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11714 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11714 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[96]
                    _8078 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _8085 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if address(_8078) == address(_8078):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20] == address(_8021):
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10567 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10568 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10568 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10568 + 36] = 0
                                        mem[_10568 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10568 + 100] = this.address
                                        mem[_10568 + 132] = 128
                                        mem[_10568 + 164] = mem[_10568]
                                        t = 0
                                        while t < mem[_10568]:
                                            mem[_10568 + t + 196] = mem[_10568 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10568] % 32:
                                            require ext_code.size(address(_10567))
                                            call address(_10567).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_10568 + 164 len mem[_10568] + 32]
                                        else:
                                            mem[floor32(mem[_10568]) + _10568 + 196] = mem[floor32(mem[_10568]) + _10568 + -(mem[_10568] % 32) + 228 len mem[_10568] % 32]
                                            require ext_code.size(address(_10567))
                                            call address(_10567).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_10568], mem[_10568 + 196 len floor32(mem[_10568]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10568 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10568 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _10270 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10910 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10911 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10911 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10911 + 36] = 0
                                        mem[_10911 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10911 + 100] = address(_10270)
                                        mem[_10911 + 132] = 128
                                        mem[_10911 + 164] = mem[_10911]
                                        t = 0
                                        while t < mem[_10911]:
                                            mem[_10911 + t + 196] = mem[_10911 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10911] % 32:
                                            require ext_code.size(address(_10910))
                                            call address(_10910).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10270), 128, mem[_10911 + 164 len mem[_10911] + 32]
                                        else:
                                            mem[floor32(mem[_10911]) + _10911 + 196] = mem[floor32(mem[_10911]) + _10911 + -(mem[_10911] % 32) + 228 len mem[_10911] % 32]
                                            require ext_code.size(address(_10910))
                                            call address(_10910).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10270), 128, mem[_10911], mem[_10911 + 196 len floor32(mem[_10911]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10911 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10911 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10570 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10571 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10571 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10571 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10571 + 68] = 0
                                        mem[_10571 + 100] = this.address
                                        mem[_10571 + 132] = 128
                                        mem[_10571 + 164] = mem[_10571]
                                        t = 0
                                        while t < mem[_10571]:
                                            mem[_10571 + t + 196] = mem[_10571 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10571] % 32:
                                            require ext_code.size(address(_10570))
                                            call address(_10570).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_10571 + 164 len mem[_10571] + 32]
                                        else:
                                            mem[floor32(mem[_10571]) + _10571 + 196] = mem[floor32(mem[_10571]) + _10571 + -(mem[_10571] % 32) + 228 len mem[_10571] % 32]
                                            require ext_code.size(address(_10570))
                                            call address(_10570).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_10571], mem[_10571 + 196 len floor32(mem[_10571]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10571 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10571 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _10272 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10915 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10916 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10916 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10916 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10916 + 68] = 0
                                        mem[_10916 + 100] = address(_10272)
                                        mem[_10916 + 132] = 128
                                        mem[_10916 + 164] = mem[_10916]
                                        t = 0
                                        while t < mem[_10916]:
                                            mem[_10916 + t + 196] = mem[_10916 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10916] % 32:
                                            require ext_code.size(address(_10915))
                                            call address(_10915).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10272), 128, mem[_10916 + 164 len mem[_10916] + 32]
                                        else:
                                            mem[floor32(mem[_10916]) + _10916 + 196] = mem[floor32(mem[_10916]) + _10916 + -(mem[_10916] % 32) + 228 len mem[_10916] % 32]
                                            require ext_code.size(address(_10915))
                                            call address(_10915).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10272), 128, mem[_10916], mem[_10916 + 196 len floor32(mem[_10916]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10916 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10916 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_8021):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11309 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11310 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11310 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11310 + 36] = 0
                                    mem[_11310 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11310 + 100] = this.address
                                    mem[_11310 + 132] = 128
                                    mem[_11310 + 164] = mem[_11310]
                                    t = 0
                                    while t < mem[_11310]:
                                        mem[_11310 + t + 196] = mem[_11310 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11310] % 32:
                                        require ext_code.size(address(_11309))
                                        call address(_11309).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_11310 + 164 len mem[_11310] + 32]
                                    else:
                                        mem[floor32(mem[_11310]) + _11310 + 196] = mem[floor32(mem[_11310]) + _11310 + -(mem[_11310] % 32) + 228 len mem[_11310] % 32]
                                        require ext_code.size(address(_11309))
                                        call address(_11309).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_11310], mem[_11310 + 196 len floor32(mem[_11310]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11310 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11310 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10920 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11720 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11721 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11721 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11721 + 36] = 0
                                    mem[_11721 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11721 + 100] = address(_10920)
                                    mem[_11721 + 132] = 128
                                    mem[_11721 + 164] = mem[_11721]
                                    t = 0
                                    while t < mem[_11721]:
                                        mem[_11721 + t + 196] = mem[_11721 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11721] % 32:
                                        require ext_code.size(address(_11720))
                                        call address(_11720).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10920), 128, mem[_11721 + 164 len mem[_11721] + 32]
                                    else:
                                        mem[floor32(mem[_11721]) + _11721 + 196] = mem[floor32(mem[_11721]) + _11721 + -(mem[_11721] % 32) + 228 len mem[_11721] % 32]
                                        require ext_code.size(address(_11720))
                                        call address(_11720).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10920), 128, mem[_11721], mem[_11721 + 196 len floor32(mem[_11721]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11721 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11721 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11312 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11313 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11313 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11313 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11313 + 68] = 0
                                    mem[_11313 + 100] = this.address
                                    mem[_11313 + 132] = 128
                                    mem[_11313 + 164] = mem[_11313]
                                    t = 0
                                    while t < mem[_11313]:
                                        mem[_11313 + t + 196] = mem[_11313 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11313] % 32:
                                        require ext_code.size(address(_11312))
                                        call address(_11312).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_11313 + 164 len mem[_11313] + 32]
                                    else:
                                        mem[floor32(mem[_11313]) + _11313 + 196] = mem[floor32(mem[_11313]) + _11313 + -(mem[_11313] % 32) + 228 len mem[_11313] % 32]
                                        require ext_code.size(address(_11312))
                                        call address(_11312).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_11313], mem[_11313 + 196 len floor32(mem[_11313]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11313 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11313 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10922 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11725 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11726 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11726 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11726 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11726 + 68] = 0
                                    mem[_11726 + 100] = address(_10922)
                                    mem[_11726 + 132] = 128
                                    mem[_11726 + 164] = mem[_11726]
                                    t = 0
                                    while t < mem[_11726]:
                                        mem[_11726 + t + 196] = mem[_11726 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11726] % 32:
                                        require ext_code.size(address(_11725))
                                        call address(_11725).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10922), 128, mem[_11726 + 164 len mem[_11726] + 32]
                                    else:
                                        mem[floor32(mem[_11726]) + _11726 + 196] = mem[floor32(mem[_11726]) + _11726 + -(mem[_11726] % 32) + 228 len mem[_11726] % 32]
                                        require ext_code.size(address(_11725))
                                        call address(_11725).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10922), 128, mem[_11726], mem[_11726 + 196 len floor32(mem[_11726]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11726 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11726 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_8021):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10575 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10576 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10576 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10576 + 36] = 0
                                    mem[_10576 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10576 + 100] = this.address
                                    mem[_10576 + 132] = 128
                                    mem[_10576 + 164] = mem[_10576]
                                    t = 0
                                    while t < mem[_10576]:
                                        mem[_10576 + t + 196] = mem[_10576 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10576] % 32:
                                        require ext_code.size(address(_10575))
                                        call address(_10575).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_10576 + 164 len mem[_10576] + 32]
                                    else:
                                        mem[floor32(mem[_10576]) + _10576 + 196] = mem[floor32(mem[_10576]) + _10576 + -(mem[_10576] % 32) + 228 len mem[_10576] % 32]
                                        require ext_code.size(address(_10575))
                                        call address(_10575).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_10576], mem[_10576 + 196 len floor32(mem[_10576]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10576 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10576 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10276 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10924 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10925 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10925 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10925 + 36] = 0
                                    mem[_10925 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10925 + 100] = address(_10276)
                                    mem[_10925 + 132] = 128
                                    mem[_10925 + 164] = mem[_10925]
                                    t = 0
                                    while t < mem[_10925]:
                                        mem[_10925 + t + 196] = mem[_10925 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10925] % 32:
                                        require ext_code.size(address(_10924))
                                        call address(_10924).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10276), 128, mem[_10925 + 164 len mem[_10925] + 32]
                                    else:
                                        mem[floor32(mem[_10925]) + _10925 + 196] = mem[floor32(mem[_10925]) + _10925 + -(mem[_10925] % 32) + 228 len mem[_10925] % 32]
                                        require ext_code.size(address(_10924))
                                        call address(_10924).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10276), 128, mem[_10925], mem[_10925 + 196 len floor32(mem[_10925]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10925 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10925 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10578 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10579 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10579 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10579 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10579 + 68] = 0
                                    mem[_10579 + 100] = this.address
                                    mem[_10579 + 132] = 128
                                    mem[_10579 + 164] = mem[_10579]
                                    t = 0
                                    while t < mem[_10579]:
                                        mem[_10579 + t + 196] = mem[_10579 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10579] % 32:
                                        require ext_code.size(address(_10578))
                                        call address(_10578).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_10579 + 164 len mem[_10579] + 32]
                                    else:
                                        mem[floor32(mem[_10579]) + _10579 + 196] = mem[floor32(mem[_10579]) + _10579 + -(mem[_10579] % 32) + 228 len mem[_10579] % 32]
                                        require ext_code.size(address(_10578))
                                        call address(_10578).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_10579], mem[_10579 + 196 len floor32(mem[_10579]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10579 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10579 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10278 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10929 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10930 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10930 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10930 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10930 + 68] = 0
                                    mem[_10930 + 100] = address(_10278)
                                    mem[_10930 + 132] = 128
                                    mem[_10930 + 164] = mem[_10930]
                                    t = 0
                                    while t < mem[_10930]:
                                        mem[_10930 + t + 196] = mem[_10930 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10930] % 32:
                                        require ext_code.size(address(_10929))
                                        call address(_10929).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10278), 128, mem[_10930 + 164 len mem[_10930] + 32]
                                    else:
                                        mem[floor32(mem[_10930]) + _10930 + 196] = mem[floor32(mem[_10930]) + _10930 + -(mem[_10930] % 32) + 228 len mem[_10930] % 32]
                                        require ext_code.size(address(_10929))
                                        call address(_10929).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10278), 128, mem[_10930], mem[_10930 + 196 len floor32(mem[_10930]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10930 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10930 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_8021):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _11321 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11322 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11322 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11322 + 36] = 0
                                mem[_11322 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11322 + 100] = this.address
                                mem[_11322 + 132] = 128
                                mem[_11322 + 164] = mem[_11322]
                                t = 0
                                while t < mem[_11322]:
                                    mem[_11322 + t + 196] = mem[_11322 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11322] % 32:
                                    require ext_code.size(address(_11321))
                                    call address(_11321).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_11322 + 164 len mem[_11322] + 32]
                                else:
                                    mem[floor32(mem[_11322]) + _11322 + 196] = mem[floor32(mem[_11322]) + _11322 + -(mem[_11322] % 32) + 228 len mem[_11322] % 32]
                                    require ext_code.size(address(_11321))
                                    call address(_11321).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_11322], mem[_11322 + 196 len floor32(mem[_11322]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11322 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11322 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _10934 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _11732 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11733 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11733 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11733 + 36] = 0
                                mem[_11733 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11733 + 100] = address(_10934)
                                mem[_11733 + 132] = 128
                                mem[_11733 + 164] = mem[_11733]
                                t = 0
                                while t < mem[_11733]:
                                    mem[_11733 + t + 196] = mem[_11733 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11733] % 32:
                                    require ext_code.size(address(_11732))
                                    call address(_11732).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10934), 128, mem[_11733 + 164 len mem[_11733] + 32]
                                else:
                                    mem[floor32(mem[_11733]) + _11733 + 196] = mem[floor32(mem[_11733]) + _11733 + -(mem[_11733] % 32) + 228 len mem[_11733] % 32]
                                    require ext_code.size(address(_11732))
                                    call address(_11732).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10934), 128, mem[_11733], mem[_11733 + 196 len floor32(mem[_11733]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11733 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11733 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _11324 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11325 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11325 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11325 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11325 + 68] = 0
                                mem[_11325 + 100] = this.address
                                mem[_11325 + 132] = 128
                                mem[_11325 + 164] = mem[_11325]
                                t = 0
                                while t < mem[_11325]:
                                    mem[_11325 + t + 196] = mem[_11325 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11325] % 32:
                                    require ext_code.size(address(_11324))
                                    call address(_11324).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_11325 + 164 len mem[_11325] + 32]
                                else:
                                    mem[floor32(mem[_11325]) + _11325 + 196] = mem[floor32(mem[_11325]) + _11325 + -(mem[_11325] % 32) + 228 len mem[_11325] % 32]
                                    require ext_code.size(address(_11324))
                                    call address(_11324).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_11325], mem[_11325 + 196 len floor32(mem[_11325]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11325 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11325 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _10936 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _11737 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11738 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11738 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11738 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11738 + 68] = 0
                                mem[_11738 + 100] = address(_10936)
                                mem[_11738 + 132] = 128
                                mem[_11738 + 164] = mem[_11738]
                                t = 0
                                while t < mem[_11738]:
                                    mem[_11738 + t + 196] = mem[_11738 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11738] % 32:
                                    require ext_code.size(address(_11737))
                                    call address(_11737).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10936), 128, mem[_11738 + 164 len mem[_11738] + 32]
                                else:
                                    mem[floor32(mem[_11738]) + _11738 + 196] = mem[floor32(mem[_11738]) + _11738 + -(mem[_11738] % 32) + 228 len mem[_11738] % 32]
                                    require ext_code.size(address(_11737))
                                    call address(_11737).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10936), 128, mem[_11738], mem[_11738 + 196 len floor32(mem[_11738]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11738 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11738 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if address(_8078) == address(_8085):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20] == address(_8021):
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10583 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10584 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10584 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10584 + 36] = 0
                                        mem[_10584 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10584 + 100] = this.address
                                        mem[_10584 + 132] = 128
                                        mem[_10584 + 164] = mem[_10584]
                                        t = 0
                                        while t < mem[_10584]:
                                            mem[_10584 + t + 196] = mem[_10584 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10584] % 32:
                                            require ext_code.size(address(_10583))
                                            call address(_10583).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_10584 + 164 len mem[_10584] + 32]
                                        else:
                                            mem[floor32(mem[_10584]) + _10584 + 196] = mem[floor32(mem[_10584]) + _10584 + -(mem[_10584] % 32) + 228 len mem[_10584] % 32]
                                            require ext_code.size(address(_10583))
                                            call address(_10583).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_10584], mem[_10584 + 196 len floor32(mem[_10584]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10584 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10584 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _10282 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10938 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10939 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10939 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10939 + 36] = 0
                                        mem[_10939 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10939 + 100] = address(_10282)
                                        mem[_10939 + 132] = 128
                                        mem[_10939 + 164] = mem[_10939]
                                        t = 0
                                        while t < mem[_10939]:
                                            mem[_10939 + t + 196] = mem[_10939 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10939] % 32:
                                            require ext_code.size(address(_10938))
                                            call address(_10938).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10282), 128, mem[_10939 + 164 len mem[_10939] + 32]
                                        else:
                                            mem[floor32(mem[_10939]) + _10939 + 196] = mem[floor32(mem[_10939]) + _10939 + -(mem[_10939] % 32) + 228 len mem[_10939] % 32]
                                            require ext_code.size(address(_10938))
                                            call address(_10938).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10282), 128, mem[_10939], mem[_10939 + 196 len floor32(mem[_10939]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10939 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10939 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= mem[(32 * arg1.length) + 128] - 1:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10586 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10587 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10587 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10587 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10587 + 68] = 0
                                        mem[_10587 + 100] = this.address
                                        mem[_10587 + 132] = 128
                                        mem[_10587 + 164] = mem[_10587]
                                        t = 0
                                        while t < mem[_10587]:
                                            mem[_10587 + t + 196] = mem[_10587 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10587] % 32:
                                            require ext_code.size(address(_10586))
                                            call address(_10586).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_10587 + 164 len mem[_10587] + 32]
                                        else:
                                            mem[floor32(mem[_10587]) + _10587 + 196] = mem[floor32(mem[_10587]) + _10587 + -(mem[_10587] % 32) + 228 len mem[_10587] % 32]
                                            require ext_code.size(address(_10586))
                                            call address(_10586).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_10587], mem[_10587 + 196 len floor32(mem[_10587]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10587 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10587 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        _10284 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        _10943 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        _10944 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_10944 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_10944 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                        mem[_10944 + 68] = 0
                                        mem[_10944 + 100] = address(_10284)
                                        mem[_10944 + 132] = 128
                                        mem[_10944 + 164] = mem[_10944]
                                        t = 0
                                        while t < mem[_10944]:
                                            mem[_10944 + t + 196] = mem[_10944 + t + 32]
                                            t = t + 32
                                            continue 
                                        if not mem[_10944] % 32:
                                            require ext_code.size(address(_10943))
                                            call address(_10943).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10284), 128, mem[_10944 + 164 len mem[_10944] + 32]
                                        else:
                                            mem[floor32(mem[_10944]) + _10944 + 196] = mem[floor32(mem[_10944]) + _10944 + -(mem[_10944] % 32) + 228 len mem[_10944] % 32]
                                            require ext_code.size(address(_10943))
                                            call address(_10943).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10284), 128, mem[_10944], mem[_10944 + 196 len floor32(mem[_10944]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx + 1 < mem[96]
                                        if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_10944 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                            mem[_10944 + 36] = ext_call.return_data[0]
                                            require ext_code.size(stor1)
                                            call stor1.0x2e1a7d4d with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_8021):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11333 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11334 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11334 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11334 + 36] = 0
                                    mem[_11334 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11334 + 100] = this.address
                                    mem[_11334 + 132] = 128
                                    mem[_11334 + 164] = mem[_11334]
                                    t = 0
                                    while t < mem[_11334]:
                                        mem[_11334 + t + 196] = mem[_11334 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11334] % 32:
                                        require ext_code.size(address(_11333))
                                        call address(_11333).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_11334 + 164 len mem[_11334] + 32]
                                    else:
                                        mem[floor32(mem[_11334]) + _11334 + 196] = mem[floor32(mem[_11334]) + _11334 + -(mem[_11334] % 32) + 228 len mem[_11334] % 32]
                                        require ext_code.size(address(_11333))
                                        call address(_11333).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_11334], mem[_11334 + 196 len floor32(mem[_11334]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11334 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11334 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10948 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11744 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11745 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11745 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11745 + 36] = 0
                                    mem[_11745 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11745 + 100] = address(_10948)
                                    mem[_11745 + 132] = 128
                                    mem[_11745 + 164] = mem[_11745]
                                    t = 0
                                    while t < mem[_11745]:
                                        mem[_11745 + t + 196] = mem[_11745 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11745] % 32:
                                        require ext_code.size(address(_11744))
                                        call address(_11744).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10948), 128, mem[_11745 + 164 len mem[_11745] + 32]
                                    else:
                                        mem[floor32(mem[_11745]) + _11745 + 196] = mem[floor32(mem[_11745]) + _11745 + -(mem[_11745] % 32) + 228 len mem[_11745] % 32]
                                        require ext_code.size(address(_11744))
                                        call address(_11744).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_10948), 128, mem[_11745], mem[_11745 + 196 len floor32(mem[_11745]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11745 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11745 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11336 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11337 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11337 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11337 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11337 + 68] = 0
                                    mem[_11337 + 100] = this.address
                                    mem[_11337 + 132] = 128
                                    mem[_11337 + 164] = mem[_11337]
                                    t = 0
                                    while t < mem[_11337]:
                                        mem[_11337 + t + 196] = mem[_11337 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11337] % 32:
                                        require ext_code.size(address(_11336))
                                        call address(_11336).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_11337 + 164 len mem[_11337] + 32]
                                    else:
                                        mem[floor32(mem[_11337]) + _11337 + 196] = mem[floor32(mem[_11337]) + _11337 + -(mem[_11337] % 32) + 228 len mem[_11337] % 32]
                                        require ext_code.size(address(_11336))
                                        call address(_11336).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_11337], mem[_11337 + 196 len floor32(mem[_11337]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11337 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11337 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10950 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _11749 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _11750 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11750 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11750 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_11750 + 68] = 0
                                    mem[_11750 + 100] = address(_10950)
                                    mem[_11750 + 132] = 128
                                    mem[_11750 + 164] = mem[_11750]
                                    t = 0
                                    while t < mem[_11750]:
                                        mem[_11750 + t + 196] = mem[_11750 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_11750] % 32:
                                        require ext_code.size(address(_11749))
                                        call address(_11749).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10950), 128, mem[_11750 + 164 len mem[_11750] + 32]
                                    else:
                                        mem[floor32(mem[_11750]) + _11750 + 196] = mem[floor32(mem[_11750]) + _11750 + -(mem[_11750] % 32) + 228 len mem[_11750] % 32]
                                        require ext_code.size(address(_11749))
                                        call address(_11749).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_10950), 128, mem[_11750], mem[_11750 + 196 len floor32(mem[_11750]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_11750 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_11750 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_8021):
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10591 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10592 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10592 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10592 + 36] = 0
                                    mem[_10592 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10592 + 100] = this.address
                                    mem[_10592 + 132] = 128
                                    mem[_10592 + 164] = mem[_10592]
                                    t = 0
                                    while t < mem[_10592]:
                                        mem[_10592 + t + 196] = mem[_10592 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10592] % 32:
                                        require ext_code.size(address(_10591))
                                        call address(_10591).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_10592 + 164 len mem[_10592] + 32]
                                    else:
                                        mem[floor32(mem[_10592]) + _10592 + 196] = mem[floor32(mem[_10592]) + _10592 + -(mem[_10592] % 32) + 228 len mem[_10592] % 32]
                                        require ext_code.size(address(_10591))
                                        call address(_10591).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_10592], mem[_10592 + 196 len floor32(mem[_10592]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10592 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10592 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10288 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10952 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10953 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10953 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10953 + 36] = 0
                                    mem[_10953 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10953 + 100] = address(_10288)
                                    mem[_10953 + 132] = 128
                                    mem[_10953 + 164] = mem[_10953]
                                    t = 0
                                    while t < mem[_10953]:
                                        mem[_10953 + t + 196] = mem[_10953 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10953] % 32:
                                        require ext_code.size(address(_10952))
                                        call address(_10952).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10288), 128, mem[_10953 + 164 len mem[_10953] + 32]
                                    else:
                                        mem[floor32(mem[_10953]) + _10953 + 196] = mem[floor32(mem[_10953]) + _10953 + -(mem[_10953] % 32) + 228 len mem[_10953] % 32]
                                        require ext_code.size(address(_10952))
                                        call address(_10952).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10288), 128, mem[_10953], mem[_10953 + 196 len floor32(mem[_10953]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10953 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10953 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if idx >= mem[(32 * arg1.length) + 128] - 1:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10594 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10595 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10595 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10595 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10595 + 68] = 0
                                    mem[_10595 + 100] = this.address
                                    mem[_10595 + 132] = 128
                                    mem[_10595 + 164] = mem[_10595]
                                    t = 0
                                    while t < mem[_10595]:
                                        mem[_10595 + t + 196] = mem[_10595 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10595] % 32:
                                        require ext_code.size(address(_10594))
                                        call address(_10594).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_10595 + 164 len mem[_10595] + 32]
                                    else:
                                        mem[floor32(mem[_10595]) + _10595 + 196] = mem[floor32(mem[_10595]) + _10595 + -(mem[_10595] % 32) + 228 len mem[_10595] % 32]
                                        require ext_code.size(address(_10594))
                                        call address(_10594).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_10595], mem[_10595 + 196 len floor32(mem[_10595]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10595 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10595 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    _10290 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _10957 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    _10958 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10958 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10958 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                    mem[_10958 + 68] = 0
                                    mem[_10958 + 100] = address(_10290)
                                    mem[_10958 + 132] = 128
                                    mem[_10958 + 164] = mem[_10958]
                                    t = 0
                                    while t < mem[_10958]:
                                        mem[_10958 + t + 196] = mem[_10958 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_10958] % 32:
                                        require ext_code.size(address(_10957))
                                        call address(_10957).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10290), 128, mem[_10958 + 164 len mem[_10958] + 32]
                                    else:
                                        mem[floor32(mem[_10958]) + _10958 + 196] = mem[floor32(mem[_10958]) + _10958 + -(mem[_10958] % 32) + 228 len mem[_10958] % 32]
                                        require ext_code.size(address(_10957))
                                        call address(_10957).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10290), 128, mem[_10958], mem[_10958 + 196 len floor32(mem[_10958]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx + 1 < mem[96]
                                    if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_10958 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                        mem[_10958 + 36] = ext_call.return_data[0]
                                        require ext_code.size(stor1)
                                        call stor1.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
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
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] == address(_8021):
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _11345 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11346 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11346 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11346 + 36] = 0
                                mem[_11346 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11346 + 100] = this.address
                                mem[_11346 + 132] = 128
                                mem[_11346 + 164] = mem[_11346]
                                t = 0
                                while t < mem[_11346]:
                                    mem[_11346 + t + 196] = mem[_11346 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11346] % 32:
                                    require ext_code.size(address(_11345))
                                    call address(_11345).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_11346 + 164 len mem[_11346] + 32]
                                else:
                                    mem[floor32(mem[_11346]) + _11346 + 196] = mem[floor32(mem[_11346]) + _11346 + -(mem[_11346] % 32) + 228 len mem[_11346] % 32]
                                    require ext_code.size(address(_11345))
                                    call address(_11345).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_11346], mem[_11346 + 196 len floor32(mem[_11346]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11346 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11346 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _10962 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _11756 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11757 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11757 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11757 + 36] = 0
                                mem[_11757 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11757 + 100] = address(_10962)
                                mem[_11757 + 132] = 128
                                mem[_11757 + 164] = mem[_11757]
                                t = 0
                                while t < mem[_11757]:
                                    mem[_11757 + t + 196] = mem[_11757 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11757] % 32:
                                    require ext_code.size(address(_11756))
                                    call address(_11756).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10962), 128, mem[_11757 + 164 len mem[_11757] + 32]
                                else:
                                    mem[floor32(mem[_11757]) + _11757 + 196] = mem[floor32(mem[_11757]) + _11757 + -(mem[_11757] % 32) + 228 len mem[_11757] % 32]
                                    require ext_code.size(address(_11756))
                                    call address(_11756).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_10962), 128, mem[_11757], mem[_11757 + 196 len floor32(mem[_11757]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11757 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11757 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 1:
                                require idx < mem[(32 * arg1.length) + 128]
                                _11348 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11349 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11349 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11349 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11349 + 68] = 0
                                mem[_11349 + 100] = this.address
                                mem[_11349 + 132] = 128
                                mem[_11349 + 164] = mem[_11349]
                                t = 0
                                while t < mem[_11349]:
                                    mem[_11349 + t + 196] = mem[_11349 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11349] % 32:
                                    require ext_code.size(address(_11348))
                                    call address(_11348).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_11349 + 164 len mem[_11349] + 32]
                                else:
                                    mem[floor32(mem[_11349]) + _11349 + 196] = mem[floor32(mem[_11349]) + _11349 + -(mem[_11349] % 32) + 228 len mem[_11349] % 32]
                                    require ext_code.size(address(_11348))
                                    call address(_11348).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_11349], mem[_11349 + 196 len floor32(mem[_11349]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11349 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11349 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < mem[(32 * arg1.length) + 128]
                                _10964 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _11761 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                _11762 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_11762 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_11762 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_11762 + 68] = 0
                                mem[_11762 + 100] = address(_10964)
                                mem[_11762 + 132] = 128
                                mem[_11762 + 164] = mem[_11762]
                                t = 0
                                while t < mem[_11762]:
                                    mem[_11762 + t + 196] = mem[_11762 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_11762] % 32:
                                    require ext_code.size(address(_11761))
                                    call address(_11761).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10964), 128, mem[_11762 + 164 len mem[_11762] + 32]
                                else:
                                    mem[floor32(mem[_11762]) + _11762 + 196] = mem[floor32(mem[_11762]) + _11762 + -(mem[_11762] % 32) + 228 len mem[_11762] % 32]
                                    require ext_code.size(address(_11761))
                                    call address(_11761).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_10964), 128, mem[_11762], mem[_11762 + 196 len floor32(mem[_11762]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx + 1 < mem[96]
                                if mem[(32 * idx + 1) + 140 len 20] == stor1:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_11762 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[_11762 + 36] = ext_call.return_data[0]
                                    require ext_code.size(stor1)
                                    call stor1.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        continue 
    if stor0 != msg.sender:
        revert with 0, 
                    32,
                    41,
                    0x536d73672e73656e646572206e6565647320746f2062652074686520636f6e7472616374206f776e65,
                    mem[mem[64] + 109 len 23]
}



}
