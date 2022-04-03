contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_747ba02d(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.getReserves() with:
                        gas gas_remaining wei
                mem[96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 96
                    if arg2:
                        require arg2
                        if arg2 * ext_call.return_data[18 len 14] / arg2 != ext_call.return_data[18 len 14]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        else:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            else:
                                require ext_call.return_data[0]
                                mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _33 = mem[96]
                                    require mem[96] <= 4294967296
                                    require mem[96] + 32 <= return_data.size
                                    require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
                                    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
                                    _38 = mem[_33 + 96]
                                    mem[ceil32(return_data.size) + 128 len ceil32(mem[_33 + 96])] = mem[_33 + 128 len ceil32(mem[_33 + 96])]
                                    if not _38 % 32:
                                        if arg2:
                                            require arg2
                                            if arg2 * Mask(112, 0, ext_call.return_data[32]) / arg2 != Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_38 + ceil32(return_data.size) + 229 len 31]
                                            else:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                else:
                                                    require ext_call.return_data[0]
                                                    mem[_38 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[_38 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        _469 = mem[_38 + ceil32(return_data.size) + 128]
                                                        require mem[_38 + ceil32(return_data.size) + 128] <= 4294967296
                                                        require mem[_38 + ceil32(return_data.size) + 128] + 32 <= return_data.size
                                                        require mem[mem[_38 + ceil32(return_data.size) + 128] + _38 + ceil32(return_data.size) + 128] <= 4294967296 and mem[_38 + ceil32(return_data.size) + 128] + mem[mem[_38 + ceil32(return_data.size) + 128] + _38 + ceil32(return_data.size) + 128] + 32 <= return_data.size
                                                        mem[_38 + (2 * ceil32(return_data.size)) + 128] = mem[mem[_38 + ceil32(return_data.size) + 128] + _38 + ceil32(return_data.size) + 128]
                                                        _489 = mem[_469 + _38 + ceil32(return_data.size) + 128]
                                                        mem[_38 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_469 + _38 + ceil32(return_data.size) + 128])] = mem[_469 + _38 + ceil32(return_data.size) + 160 len ceil32(mem[_469 + _38 + ceil32(return_data.size) + 128])]
                                                        if not _489 % 32:
                                                            mem[64] = _489 + _38 + (2 * ceil32(return_data.size)) + 160
                                                            mem[_489 + _38 + (2 * ceil32(return_data.size)) + 160] = arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                            mem[_489 + _38 + (2 * ceil32(return_data.size)) + 224] = arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                            mem[_489 + _38 + (2 * ceil32(return_data.size)) + 192] = 128
                                                            mem[_489 + _38 + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96]
                                                            mem[_489 + _38 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                            mem[_489 + _38 + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 160
                                                            mem[mem[ceil32(return_data.size) + 96] + _489 + _38 + (2 * ceil32(return_data.size)) + 320] = mem[_38 + (2 * ceil32(return_data.size)) + 128]
                                                            mem[mem[ceil32(return_data.size) + 96] + _489 + _38 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_38 + (2 * ceil32(return_data.size)) + 128])] = mem[_38 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_38 + (2 * ceil32(return_data.size)) + 128])]
                                                            if not mem[_38 + (2 * ceil32(return_data.size)) + 128] % 32:
                                                                return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                       Array(len=mem[ceil32(return_data.size) + 96], data=mem[_489 + _38 + (2 * ceil32(return_data.size)) + 320 len mem[_38 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 32]),
                                                                       arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                       mem[ceil32(return_data.size) + 96] + 160
                                                            else:
                                                                mem[floor32(mem[_38 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _489 + _38 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[_38 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _489 + _38 + (2 * ceil32(return_data.size)) + -(mem[_38 + (2 * ceil32(return_data.size)) + 128] % 32) + 384 len mem[_38 + (2 * ceil32(return_data.size)) + 128] % 32]
                                                                return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                       Array(len=mem[_38 + (2 * ceil32(return_data.size)) + 128], data=mem[_489 + _38 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 352 len floor32(mem[_38 + (2 * ceil32(return_data.size)) + 128]) + 32]),
                                                                       arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                       mem[_489 + _38 + (2 * ceil32(return_data.size)) + 256 len mem[ceil32(return_data.size) + 96] + 64]
                                                        else:
                                                            mem[floor32(_489) + _38 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_489) + _38 + (2 * ceil32(return_data.size)) + -(_489 % 32) + 192 len _489 % 32]
                                                            mem[64] = floor32(_489) + _38 + (2 * ceil32(return_data.size)) + 192
                                                            mem[floor32(_489) + _38 + (2 * ceil32(return_data.size)) + 192] = arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                            mem[floor32(_489) + _38 + (2 * ceil32(return_data.size)) + 256] = arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                            mem[floor32(_489) + _38 + (2 * ceil32(return_data.size)) + 224] = 128
                                                            mem[floor32(_489) + _38 + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96]
                                                            mem[floor32(_489) + _38 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                            mem[floor32(_489) + _38 + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96] + 160
                                                            mem[mem[ceil32(return_data.size) + 96] + floor32(_489) + _38 + (2 * ceil32(return_data.size)) + 352] = mem[_38 + (2 * ceil32(return_data.size)) + 128]
                                                            mem[mem[ceil32(return_data.size) + 96] + floor32(_489) + _38 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[_38 + (2 * ceil32(return_data.size)) + 128])] = mem[_38 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_38 + (2 * ceil32(return_data.size)) + 128])]
                                                            if not mem[_38 + (2 * ceil32(return_data.size)) + 128] % 32:
                                                                return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                       Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_489) + _38 + (2 * ceil32(return_data.size)) + 352 len mem[_38 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 32]),
                                                                       arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                       mem[ceil32(return_data.size) + 96] + 160
                                                            else:
                                                                mem[floor32(mem[_38 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_489) + _38 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[_38 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_489) + _38 + (2 * ceil32(return_data.size)) + -(mem[_38 + (2 * ceil32(return_data.size)) + 128] % 32) + 416 len mem[_38 + (2 * ceil32(return_data.size)) + 128] % 32]
                                                                return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                       Array(len=mem[_38 + (2 * ceil32(return_data.size)) + 128], data=mem[floor32(_489) + _38 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 384 len floor32(mem[_38 + (2 * ceil32(return_data.size)) + 128]) + 32]),
                                                                       arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                       mem[floor32(_489) + _38 + (2 * ceil32(return_data.size)) + 288 len mem[ceil32(return_data.size) + 96] + 64]
                                        else:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            else:
                                                require ext_call.return_data[0]
                                                mem[_38 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[_38 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    _453 = mem[_38 + ceil32(return_data.size) + 128]
                                                    require mem[_38 + ceil32(return_data.size) + 128] <= 4294967296
                                                    require mem[_38 + ceil32(return_data.size) + 128] + 32 <= return_data.size
                                                    require mem[mem[_38 + ceil32(return_data.size) + 128] + _38 + ceil32(return_data.size) + 128] <= 4294967296 and mem[_38 + ceil32(return_data.size) + 128] + mem[mem[_38 + ceil32(return_data.size) + 128] + _38 + ceil32(return_data.size) + 128] + 32 <= return_data.size
                                                    mem[_38 + (2 * ceil32(return_data.size)) + 128] = mem[mem[_38 + ceil32(return_data.size) + 128] + _38 + ceil32(return_data.size) + 128]
                                                    _477 = mem[_453 + _38 + ceil32(return_data.size) + 128]
                                                    mem[_38 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_453 + _38 + ceil32(return_data.size) + 128])] = mem[_453 + _38 + ceil32(return_data.size) + 160 len ceil32(mem[_453 + _38 + ceil32(return_data.size) + 128])]
                                                    if not _477 % 32:
                                                        mem[64] = _477 + _38 + (2 * ceil32(return_data.size)) + 160
                                                        mem[_477 + _38 + (2 * ceil32(return_data.size)) + 160] = arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                        mem[_477 + _38 + (2 * ceil32(return_data.size)) + 224] = 0 / ext_call.return_data[0]
                                                        mem[_477 + _38 + (2 * ceil32(return_data.size)) + 192] = 128
                                                        mem[_477 + _38 + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96]
                                                        mem[_477 + _38 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                        mem[_477 + _38 + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 160
                                                        mem[mem[ceil32(return_data.size) + 96] + _477 + _38 + (2 * ceil32(return_data.size)) + 320] = mem[_38 + (2 * ceil32(return_data.size)) + 128]
                                                        mem[mem[ceil32(return_data.size) + 96] + _477 + _38 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_38 + (2 * ceil32(return_data.size)) + 128])] = mem[_38 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_38 + (2 * ceil32(return_data.size)) + 128])]
                                                        if not mem[_38 + (2 * ceil32(return_data.size)) + 128] % 32:
                                                            return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[_477 + _38 + (2 * ceil32(return_data.size)) + 320 len mem[_38 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 32]),
                                                                   0 / ext_call.return_data[0],
                                                                   mem[ceil32(return_data.size) + 96] + 160
                                                        else:
                                                            mem[floor32(mem[_38 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _477 + _38 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[_38 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _477 + _38 + (2 * ceil32(return_data.size)) + -(mem[_38 + (2 * ceil32(return_data.size)) + 128] % 32) + 384 len mem[_38 + (2 * ceil32(return_data.size)) + 128] % 32]
                                                            return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                   Array(len=mem[_38 + (2 * ceil32(return_data.size)) + 128], data=mem[_477 + _38 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 352 len floor32(mem[_38 + (2 * ceil32(return_data.size)) + 128]) + 32]),
                                                                   0 / ext_call.return_data[0],
                                                                   mem[_477 + _38 + (2 * ceil32(return_data.size)) + 256 len mem[ceil32(return_data.size) + 96] + 64]
                                                    else:
                                                        mem[floor32(_477) + _38 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_477) + _38 + (2 * ceil32(return_data.size)) + -(_477 % 32) + 192 len _477 % 32]
                                                        mem[64] = floor32(_477) + _38 + (2 * ceil32(return_data.size)) + 192
                                                        mem[floor32(_477) + _38 + (2 * ceil32(return_data.size)) + 192] = arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                        mem[floor32(_477) + _38 + (2 * ceil32(return_data.size)) + 256] = 0 / ext_call.return_data[0]
                                                        mem[floor32(_477) + _38 + (2 * ceil32(return_data.size)) + 224] = 128
                                                        mem[floor32(_477) + _38 + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96]
                                                        mem[floor32(_477) + _38 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                        mem[floor32(_477) + _38 + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96] + 160
                                                        mem[mem[ceil32(return_data.size) + 96] + floor32(_477) + _38 + (2 * ceil32(return_data.size)) + 352] = mem[_38 + (2 * ceil32(return_data.size)) + 128]
                                                        mem[mem[ceil32(return_data.size) + 96] + floor32(_477) + _38 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[_38 + (2 * ceil32(return_data.size)) + 128])] = mem[_38 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_38 + (2 * ceil32(return_data.size)) + 128])]
                                                        if not mem[_38 + (2 * ceil32(return_data.size)) + 128] % 32:
                                                            return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_477) + _38 + (2 * ceil32(return_data.size)) + 352 len mem[_38 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 32]),
                                                                   0 / ext_call.return_data[0],
                                                                   mem[ceil32(return_data.size) + 96] + 160
                                                        else:
                                                            mem[floor32(mem[_38 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_477) + _38 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[_38 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_477) + _38 + (2 * ceil32(return_data.size)) + -(mem[_38 + (2 * ceil32(return_data.size)) + 128] % 32) + 416 len mem[_38 + (2 * ceil32(return_data.size)) + 128] % 32]
                                                            return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                   Array(len=mem[_38 + (2 * ceil32(return_data.size)) + 128], data=mem[floor32(_477) + _38 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 384 len floor32(mem[_38 + (2 * ceil32(return_data.size)) + 128]) + 32]),
                                                                   0 / ext_call.return_data[0],
                                                                   mem[floor32(_477) + _38 + (2 * ceil32(return_data.size)) + 288 len mem[ceil32(return_data.size) + 96] + 64]
                                    else:
                                        mem[floor32(_38) + ceil32(return_data.size) + 128] = mem[floor32(_38) + ceil32(return_data.size) + -(_38 % 32) + 160 len _38 % 32]
                                        if arg2:
                                            require arg2
                                            if arg2 * Mask(112, 0, ext_call.return_data[32]) / arg2 != Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[floor32(_38) + ceil32(return_data.size) + 261 len 31]
                                            else:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                else:
                                                    require ext_call.return_data[0]
                                                    mem[floor32(_38) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[floor32(_38) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = floor32(_38) + (2 * ceil32(return_data.size)) + 160
                                                        require return_data.size >= 32
                                                        _478 = mem[floor32(_38) + ceil32(return_data.size) + 160]
                                                        require mem[floor32(_38) + ceil32(return_data.size) + 160] <= 4294967296
                                                        require mem[floor32(_38) + ceil32(return_data.size) + 160] + 32 <= return_data.size
                                                        require mem[mem[floor32(_38) + ceil32(return_data.size) + 160] + floor32(_38) + ceil32(return_data.size) + 160] <= 4294967296 and mem[floor32(_38) + ceil32(return_data.size) + 160] + mem[mem[floor32(_38) + ceil32(return_data.size) + 160] + floor32(_38) + ceil32(return_data.size) + 160] + 32 <= return_data.size
                                                        mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] = mem[mem[floor32(_38) + ceil32(return_data.size) + 160] + floor32(_38) + ceil32(return_data.size) + 160]
                                                        _496 = mem[_478 + floor32(_38) + ceil32(return_data.size) + 160]
                                                        mem[floor32(_38) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_478 + floor32(_38) + ceil32(return_data.size) + 160])] = mem[_478 + floor32(_38) + ceil32(return_data.size) + 192 len ceil32(mem[_478 + floor32(_38) + ceil32(return_data.size) + 160])]
                                                        if not _496 % 32:
                                                            mem[_496 + floor32(_38) + (2 * ceil32(return_data.size)) + 192] = arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                            mem[_496 + floor32(_38) + (2 * ceil32(return_data.size)) + 256] = arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                            mem[_496 + floor32(_38) + (2 * ceil32(return_data.size)) + 224] = 128
                                                            mem[_496 + floor32(_38) + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96]
                                                            mem[_496 + floor32(_38) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                            mem[_496 + floor32(_38) + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96] + 160
                                                            mem[mem[ceil32(return_data.size) + 96] + _496 + floor32(_38) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]
                                                            mem[mem[ceil32(return_data.size) + 96] + _496 + floor32(_38) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_38) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160])]
                                                            if not mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] % 32:
                                                                return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                       Array(len=mem[ceil32(return_data.size) + 96], data=mem[_496 + floor32(_38) + (2 * ceil32(return_data.size)) + 352 len mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
                                                                       arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                       mem[ceil32(return_data.size) + 96] + 160
                                                            else:
                                                                mem[floor32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _496 + floor32(_38) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _496 + floor32(_38) + (2 * ceil32(return_data.size)) + -(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] % 32) + 416 len mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] % 32]
                                                                return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                       Array(len=mem[ceil32(return_data.size) + 96], data=mem[_496 + floor32(_38) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + 64]),
                                                                       arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                       mem[ceil32(return_data.size) + 96] + 160
                                                        else:
                                                            mem[floor32(_496) + floor32(_38) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_496) + floor32(_38) + (2 * ceil32(return_data.size)) + -(_496 % 32) + 224 len _496 % 32]
                                                            mem[floor32(_496) + floor32(_38) + (2 * ceil32(return_data.size)) + 224] = arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                            mem[floor32(_496) + floor32(_38) + (2 * ceil32(return_data.size)) + 288] = arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                            mem[floor32(_496) + floor32(_38) + (2 * ceil32(return_data.size)) + 256] = 128
                                                            mem[floor32(_496) + floor32(_38) + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
                                                            mem[floor32(_496) + floor32(_38) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                            mem[floor32(_496) + floor32(_38) + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96] + 160
                                                            mem[mem[ceil32(return_data.size) + 96] + floor32(_496) + floor32(_38) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]
                                                            mem[mem[ceil32(return_data.size) + 96] + floor32(_496) + floor32(_38) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_38) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160])]
                                                            if not mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] % 32:
                                                                return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                       Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_496) + floor32(_38) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
                                                                       arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                       mem[ceil32(return_data.size) + 96] + 160
                                                            else:
                                                                mem[floor32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_496) + floor32(_38) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_496) + floor32(_38) + (2 * ceil32(return_data.size)) + -(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] % 32) + 448 len mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] % 32]
                                                                return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                       Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_496) + floor32(_38) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + 64]),
                                                                       arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                       mem[ceil32(return_data.size) + 96] + 160
                                        else:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            else:
                                                require ext_call.return_data[0]
                                                mem[floor32(_38) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[floor32(_38) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = floor32(_38) + (2 * ceil32(return_data.size)) + 160
                                                    require return_data.size >= 32
                                                    _464 = mem[floor32(_38) + ceil32(return_data.size) + 160]
                                                    require mem[floor32(_38) + ceil32(return_data.size) + 160] <= 4294967296
                                                    require mem[floor32(_38) + ceil32(return_data.size) + 160] + 32 <= return_data.size
                                                    require mem[mem[floor32(_38) + ceil32(return_data.size) + 160] + floor32(_38) + ceil32(return_data.size) + 160] <= 4294967296 and mem[floor32(_38) + ceil32(return_data.size) + 160] + mem[mem[floor32(_38) + ceil32(return_data.size) + 160] + floor32(_38) + ceil32(return_data.size) + 160] + 32 <= return_data.size
                                                    mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] = mem[mem[floor32(_38) + ceil32(return_data.size) + 160] + floor32(_38) + ceil32(return_data.size) + 160]
                                                    _486 = mem[_464 + floor32(_38) + ceil32(return_data.size) + 160]
                                                    mem[floor32(_38) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_464 + floor32(_38) + ceil32(return_data.size) + 160])] = mem[_464 + floor32(_38) + ceil32(return_data.size) + 192 len ceil32(mem[_464 + floor32(_38) + ceil32(return_data.size) + 160])]
                                                    if not _486 % 32:
                                                        mem[_486 + floor32(_38) + (2 * ceil32(return_data.size)) + 192] = arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                        mem[_486 + floor32(_38) + (2 * ceil32(return_data.size)) + 256] = 0 / ext_call.return_data[0]
                                                        mem[_486 + floor32(_38) + (2 * ceil32(return_data.size)) + 224] = 128
                                                        mem[_486 + floor32(_38) + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96]
                                                        mem[_486 + floor32(_38) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                        mem[_486 + floor32(_38) + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96] + 160
                                                        mem[mem[ceil32(return_data.size) + 96] + _486 + floor32(_38) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]
                                                        mem[mem[ceil32(return_data.size) + 96] + _486 + floor32(_38) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_38) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160])]
                                                        if not mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] % 32:
                                                            return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[_486 + floor32(_38) + (2 * ceil32(return_data.size)) + 352 len mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
                                                                   0 / ext_call.return_data[0],
                                                                   mem[ceil32(return_data.size) + 96] + 160
                                                        else:
                                                            mem[floor32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _486 + floor32(_38) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _486 + floor32(_38) + (2 * ceil32(return_data.size)) + -(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] % 32) + 416 len mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] % 32]
                                                            return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[_486 + floor32(_38) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + 64]),
                                                                   0 / ext_call.return_data[0],
                                                                   mem[ceil32(return_data.size) + 96] + 160
                                                    else:
                                                        mem[floor32(_486) + floor32(_38) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_486) + floor32(_38) + (2 * ceil32(return_data.size)) + -(_486 % 32) + 224 len _486 % 32]
                                                        mem[floor32(_486) + floor32(_38) + (2 * ceil32(return_data.size)) + 224] = arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                        mem[floor32(_486) + floor32(_38) + (2 * ceil32(return_data.size)) + 288] = 0 / ext_call.return_data[0]
                                                        mem[floor32(_486) + floor32(_38) + (2 * ceil32(return_data.size)) + 256] = 128
                                                        mem[floor32(_486) + floor32(_38) + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
                                                        mem[floor32(_486) + floor32(_38) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                        mem[floor32(_486) + floor32(_38) + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96] + 160
                                                        mem[mem[ceil32(return_data.size) + 96] + floor32(_486) + floor32(_38) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]
                                                        mem[mem[ceil32(return_data.size) + 96] + floor32(_486) + floor32(_38) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_38) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160])]
                                                        if not mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] % 32:
                                                            return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_486) + floor32(_38) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
                                                                   0 / ext_call.return_data[0],
                                                                   mem[ceil32(return_data.size) + 96] + 160
                                                        else:
                                                            mem[floor32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_486) + floor32(_38) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_486) + floor32(_38) + (2 * ceil32(return_data.size)) + -(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] % 32) + 448 len mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160] % 32]
                                                            return arg2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                                                                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_486) + floor32(_38) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_38) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + 64]),
                                                                   0 / ext_call.return_data[0],
                                                                   mem[ceil32(return_data.size) + 96] + 160
                    else:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        else:
                            require ext_call.return_data[0]
                            mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _30 = mem[96]
                                require mem[96] <= 4294967296
                                require mem[96] + 32 <= return_data.size
                                require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
                                _36 = mem[_30 + 96]
                                mem[ceil32(return_data.size) + 128 len ceil32(mem[_30 + 96])] = mem[_30 + 128 len ceil32(mem[_30 + 96])]
                                if not _36 % 32:
                                    if arg2:
                                        require arg2
                                        if arg2 * Mask(112, 0, ext_call.return_data[32]) / arg2 != Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_36 + ceil32(return_data.size) + 229 len 31]
                                        else:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            else:
                                                require ext_call.return_data[0]
                                                mem[_36 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[_36 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _36 + (2 * ceil32(return_data.size)) + 128
                                                    require return_data.size >= 32
                                                    _473 = mem[_36 + ceil32(return_data.size) + 128]
                                                    require mem[_36 + ceil32(return_data.size) + 128] <= 4294967296
                                                    require mem[_36 + ceil32(return_data.size) + 128] + 32 <= return_data.size
                                                    require mem[mem[_36 + ceil32(return_data.size) + 128] + _36 + ceil32(return_data.size) + 128] <= 4294967296 and mem[_36 + ceil32(return_data.size) + 128] + mem[mem[_36 + ceil32(return_data.size) + 128] + _36 + ceil32(return_data.size) + 128] + 32 <= return_data.size
                                                    mem[_36 + (2 * ceil32(return_data.size)) + 128] = mem[mem[_36 + ceil32(return_data.size) + 128] + _36 + ceil32(return_data.size) + 128]
                                                    _492 = mem[_473 + _36 + ceil32(return_data.size) + 128]
                                                    mem[_36 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_473 + _36 + ceil32(return_data.size) + 128])] = mem[_473 + _36 + ceil32(return_data.size) + 160 len ceil32(mem[_473 + _36 + ceil32(return_data.size) + 128])]
                                                    if not _492 % 32:
                                                        mem[_492 + _36 + (2 * ceil32(return_data.size)) + 160] = 0 / ext_call.return_data[0]
                                                        mem[_492 + _36 + (2 * ceil32(return_data.size)) + 224] = arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                        mem[_492 + _36 + (2 * ceil32(return_data.size)) + 192] = 128
                                                        mem[_492 + _36 + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96]
                                                        mem[_492 + _36 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                        mem[_492 + _36 + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 160
                                                        mem[mem[ceil32(return_data.size) + 96] + _492 + _36 + (2 * ceil32(return_data.size)) + 320] = mem[_36 + (2 * ceil32(return_data.size)) + 128]
                                                        mem[mem[ceil32(return_data.size) + 96] + _492 + _36 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_36 + (2 * ceil32(return_data.size)) + 128])] = mem[_36 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_36 + (2 * ceil32(return_data.size)) + 128])]
                                                        if not mem[_36 + (2 * ceil32(return_data.size)) + 128] % 32:
                                                            return 0 / ext_call.return_data[0], 
                                                                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[_492 + _36 + (2 * ceil32(return_data.size)) + 320 len mem[_36 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 32]),
                                                                   arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                   mem[ceil32(return_data.size) + 96] + 160
                                                        else:
                                                            mem[floor32(mem[_36 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _492 + _36 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[_36 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _492 + _36 + (2 * ceil32(return_data.size)) + -(mem[_36 + (2 * ceil32(return_data.size)) + 128] % 32) + 384 len mem[_36 + (2 * ceil32(return_data.size)) + 128] % 32]
                                                            return 0 / ext_call.return_data[0], 
                                                                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[_492 + _36 + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_36 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + 64]),
                                                                   arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                   mem[ceil32(return_data.size) + 96] + 160
                                                    else:
                                                        mem[floor32(_492) + _36 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_492) + _36 + (2 * ceil32(return_data.size)) + -(_492 % 32) + 192 len _492 % 32]
                                                        mem[floor32(_492) + _36 + (2 * ceil32(return_data.size)) + 192] = 0 / ext_call.return_data[0]
                                                        mem[floor32(_492) + _36 + (2 * ceil32(return_data.size)) + 256] = arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                        mem[floor32(_492) + _36 + (2 * ceil32(return_data.size)) + 224] = 128
                                                        mem[floor32(_492) + _36 + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96]
                                                        mem[floor32(_492) + _36 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                        mem[floor32(_492) + _36 + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96] + 160
                                                        mem[mem[ceil32(return_data.size) + 96] + floor32(_492) + _36 + (2 * ceil32(return_data.size)) + 352] = mem[_36 + (2 * ceil32(return_data.size)) + 128]
                                                        mem[mem[ceil32(return_data.size) + 96] + floor32(_492) + _36 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[_36 + (2 * ceil32(return_data.size)) + 128])] = mem[_36 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_36 + (2 * ceil32(return_data.size)) + 128])]
                                                        if not mem[_36 + (2 * ceil32(return_data.size)) + 128] % 32:
                                                            return 0 / ext_call.return_data[0], 
                                                                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_492) + _36 + (2 * ceil32(return_data.size)) + 352 len mem[_36 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 32]),
                                                                   arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                   mem[ceil32(return_data.size) + 96] + 160
                                                        else:
                                                            mem[floor32(mem[_36 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_492) + _36 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[_36 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_492) + _36 + (2 * ceil32(return_data.size)) + -(mem[_36 + (2 * ceil32(return_data.size)) + 128] % 32) + 416 len mem[_36 + (2 * ceil32(return_data.size)) + 128] % 32]
                                                            return 0 / ext_call.return_data[0], 
                                                                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_492) + _36 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_36 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + 64]),
                                                                   arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                   mem[ceil32(return_data.size) + 96] + 160
                                    else:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        else:
                                            require ext_call.return_data[0]
                                            mem[_36 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[_36 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = _36 + (2 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                _458 = mem[_36 + ceil32(return_data.size) + 128]
                                                require mem[_36 + ceil32(return_data.size) + 128] <= 4294967296
                                                require mem[_36 + ceil32(return_data.size) + 128] + 32 <= return_data.size
                                                require mem[mem[_36 + ceil32(return_data.size) + 128] + _36 + ceil32(return_data.size) + 128] <= 4294967296 and mem[_36 + ceil32(return_data.size) + 128] + mem[mem[_36 + ceil32(return_data.size) + 128] + _36 + ceil32(return_data.size) + 128] + 32 <= return_data.size
                                                mem[_36 + (2 * ceil32(return_data.size)) + 128] = mem[mem[_36 + ceil32(return_data.size) + 128] + _36 + ceil32(return_data.size) + 128]
                                                _481 = mem[_458 + _36 + ceil32(return_data.size) + 128]
                                                mem[_36 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_458 + _36 + ceil32(return_data.size) + 128])] = mem[_458 + _36 + ceil32(return_data.size) + 160 len ceil32(mem[_458 + _36 + ceil32(return_data.size) + 128])]
                                                if not _481 % 32:
                                                    mem[_481 + _36 + (2 * ceil32(return_data.size)) + 160] = 0 / ext_call.return_data[0]
                                                    mem[_481 + _36 + (2 * ceil32(return_data.size)) + 224] = 0 / ext_call.return_data[0]
                                                    mem[_481 + _36 + (2 * ceil32(return_data.size)) + 192] = 128
                                                    mem[_481 + _36 + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96]
                                                    mem[_481 + _36 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                    mem[_481 + _36 + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 160
                                                    mem[mem[ceil32(return_data.size) + 96] + _481 + _36 + (2 * ceil32(return_data.size)) + 320] = mem[_36 + (2 * ceil32(return_data.size)) + 128]
                                                    mem[mem[ceil32(return_data.size) + 96] + _481 + _36 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_36 + (2 * ceil32(return_data.size)) + 128])] = mem[_36 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_36 + (2 * ceil32(return_data.size)) + 128])]
                                                    if not mem[_36 + (2 * ceil32(return_data.size)) + 128] % 32:
                                                        return 0 / ext_call.return_data[0], 
                                                               Array(len=mem[ceil32(return_data.size) + 96], data=mem[_481 + _36 + (2 * ceil32(return_data.size)) + 320 len mem[_36 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 32]),
                                                               0 / ext_call.return_data[0],
                                                               mem[ceil32(return_data.size) + 96] + 160
                                                    else:
                                                        mem[floor32(mem[_36 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _481 + _36 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[_36 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _481 + _36 + (2 * ceil32(return_data.size)) + -(mem[_36 + (2 * ceil32(return_data.size)) + 128] % 32) + 384 len mem[_36 + (2 * ceil32(return_data.size)) + 128] % 32]
                                                        return 0 / ext_call.return_data[0], 
                                                               Array(len=mem[ceil32(return_data.size) + 96], data=mem[_481 + _36 + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_36 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + 64]),
                                                               0 / ext_call.return_data[0],
                                                               mem[ceil32(return_data.size) + 96] + 160
                                                else:
                                                    mem[floor32(_481) + _36 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_481) + _36 + (2 * ceil32(return_data.size)) + -(_481 % 32) + 192 len _481 % 32]
                                                    mem[floor32(_481) + _36 + (2 * ceil32(return_data.size)) + 192] = 0 / ext_call.return_data[0]
                                                    mem[floor32(_481) + _36 + (2 * ceil32(return_data.size)) + 256] = 0 / ext_call.return_data[0]
                                                    mem[floor32(_481) + _36 + (2 * ceil32(return_data.size)) + 224] = 128
                                                    mem[floor32(_481) + _36 + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96]
                                                    mem[floor32(_481) + _36 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                    mem[floor32(_481) + _36 + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96] + 160
                                                    mem[mem[ceil32(return_data.size) + 96] + floor32(_481) + _36 + (2 * ceil32(return_data.size)) + 352] = mem[_36 + (2 * ceil32(return_data.size)) + 128]
                                                    mem[mem[ceil32(return_data.size) + 96] + floor32(_481) + _36 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[_36 + (2 * ceil32(return_data.size)) + 128])] = mem[_36 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_36 + (2 * ceil32(return_data.size)) + 128])]
                                                    if not mem[_36 + (2 * ceil32(return_data.size)) + 128] % 32:
                                                        return 0 / ext_call.return_data[0], 
                                                               Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_481) + _36 + (2 * ceil32(return_data.size)) + 352 len mem[_36 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 32]),
                                                               0 / ext_call.return_data[0],
                                                               mem[ceil32(return_data.size) + 96] + 160
                                                    else:
                                                        mem[floor32(mem[_36 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_481) + _36 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[_36 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_481) + _36 + (2 * ceil32(return_data.size)) + -(mem[_36 + (2 * ceil32(return_data.size)) + 128] % 32) + 416 len mem[_36 + (2 * ceil32(return_data.size)) + 128] % 32]
                                                        return 0 / ext_call.return_data[0], 
                                                               Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_481) + _36 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_36 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + 64]),
                                                               0 / ext_call.return_data[0],
                                                               mem[ceil32(return_data.size) + 96] + 160
                                else:
                                    mem[floor32(_36) + ceil32(return_data.size) + 128] = mem[floor32(_36) + ceil32(return_data.size) + -(_36 % 32) + 160 len _36 % 32]
                                    if arg2:
                                        require arg2
                                        if arg2 * Mask(112, 0, ext_call.return_data[32]) / arg2 != Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_36) + ceil32(return_data.size) + 261 len 31]
                                        else:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            else:
                                                require ext_call.return_data[0]
                                                mem[floor32(_36) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[floor32(_36) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = floor32(_36) + (2 * ceil32(return_data.size)) + 160
                                                    require return_data.size >= 32
                                                    _482 = mem[floor32(_36) + ceil32(return_data.size) + 160]
                                                    require mem[floor32(_36) + ceil32(return_data.size) + 160] <= 4294967296
                                                    require mem[floor32(_36) + ceil32(return_data.size) + 160] + 32 <= return_data.size
                                                    require mem[mem[floor32(_36) + ceil32(return_data.size) + 160] + floor32(_36) + ceil32(return_data.size) + 160] <= 4294967296 and mem[floor32(_36) + ceil32(return_data.size) + 160] + mem[mem[floor32(_36) + ceil32(return_data.size) + 160] + floor32(_36) + ceil32(return_data.size) + 160] + 32 <= return_data.size
                                                    mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] = mem[mem[floor32(_36) + ceil32(return_data.size) + 160] + floor32(_36) + ceil32(return_data.size) + 160]
                                                    _499 = mem[_482 + floor32(_36) + ceil32(return_data.size) + 160]
                                                    mem[floor32(_36) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_482 + floor32(_36) + ceil32(return_data.size) + 160])] = mem[_482 + floor32(_36) + ceil32(return_data.size) + 192 len ceil32(mem[_482 + floor32(_36) + ceil32(return_data.size) + 160])]
                                                    if not _499 % 32:
                                                        mem[_499 + floor32(_36) + (2 * ceil32(return_data.size)) + 192] = 0 / ext_call.return_data[0]
                                                        mem[_499 + floor32(_36) + (2 * ceil32(return_data.size)) + 256] = arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                        mem[_499 + floor32(_36) + (2 * ceil32(return_data.size)) + 224] = 128
                                                        mem[_499 + floor32(_36) + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96]
                                                        mem[_499 + floor32(_36) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                        mem[_499 + floor32(_36) + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96] + 160
                                                        mem[mem[ceil32(return_data.size) + 96] + _499 + floor32(_36) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]
                                                        mem[mem[ceil32(return_data.size) + 96] + _499 + floor32(_36) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_36) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160])]
                                                        if not mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] % 32:
                                                            return 0 / ext_call.return_data[0], 
                                                                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[_499 + floor32(_36) + (2 * ceil32(return_data.size)) + 352 len mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
                                                                   arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                   mem[ceil32(return_data.size) + 96] + 160
                                                        else:
                                                            mem[floor32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _499 + floor32(_36) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _499 + floor32(_36) + (2 * ceil32(return_data.size)) + -(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] % 32) + 416 len mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] % 32]
                                                            return 0 / ext_call.return_data[0], 
                                                                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[_499 + floor32(_36) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + 64]),
                                                                   arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                   mem[ceil32(return_data.size) + 96] + 160
                                                    else:
                                                        mem[floor32(_499) + floor32(_36) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_499) + floor32(_36) + (2 * ceil32(return_data.size)) + -(_499 % 32) + 224 len _499 % 32]
                                                        mem[floor32(_499) + floor32(_36) + (2 * ceil32(return_data.size)) + 224] = 0 / ext_call.return_data[0]
                                                        mem[floor32(_499) + floor32(_36) + (2 * ceil32(return_data.size)) + 288] = arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                        mem[floor32(_499) + floor32(_36) + (2 * ceil32(return_data.size)) + 256] = 128
                                                        mem[floor32(_499) + floor32(_36) + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
                                                        mem[floor32(_499) + floor32(_36) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                        mem[floor32(_499) + floor32(_36) + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96] + 160
                                                        mem[mem[ceil32(return_data.size) + 96] + floor32(_499) + floor32(_36) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]
                                                        mem[mem[ceil32(return_data.size) + 96] + floor32(_499) + floor32(_36) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_36) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160])]
                                                        if not mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] % 32:
                                                            return 0 / ext_call.return_data[0], 
                                                                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_499) + floor32(_36) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
                                                                   arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                   mem[ceil32(return_data.size) + 96] + 160
                                                        else:
                                                            mem[floor32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_499) + floor32(_36) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_499) + floor32(_36) + (2 * ceil32(return_data.size)) + -(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] % 32) + 448 len mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] % 32]
                                                            return 0 / ext_call.return_data[0], 
                                                                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_499) + floor32(_36) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + 64]),
                                                                   arg2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                                                                   mem[ceil32(return_data.size) + 96] + 160
                                    else:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        else:
                                            require ext_call.return_data[0]
                                            mem[floor32(_36) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[floor32(_36) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = floor32(_36) + (2 * ceil32(return_data.size)) + 160
                                                require return_data.size >= 32
                                                _467 = mem[floor32(_36) + ceil32(return_data.size) + 160]
                                                require mem[floor32(_36) + ceil32(return_data.size) + 160] <= 4294967296
                                                require mem[floor32(_36) + ceil32(return_data.size) + 160] + 32 <= return_data.size
                                                require mem[mem[floor32(_36) + ceil32(return_data.size) + 160] + floor32(_36) + ceil32(return_data.size) + 160] <= 4294967296 and mem[floor32(_36) + ceil32(return_data.size) + 160] + mem[mem[floor32(_36) + ceil32(return_data.size) + 160] + floor32(_36) + ceil32(return_data.size) + 160] + 32 <= return_data.size
                                                mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] = mem[mem[floor32(_36) + ceil32(return_data.size) + 160] + floor32(_36) + ceil32(return_data.size) + 160]
                                                _488 = mem[_467 + floor32(_36) + ceil32(return_data.size) + 160]
                                                mem[floor32(_36) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_467 + floor32(_36) + ceil32(return_data.size) + 160])] = mem[_467 + floor32(_36) + ceil32(return_data.size) + 192 len ceil32(mem[_467 + floor32(_36) + ceil32(return_data.size) + 160])]
                                                if not _488 % 32:
                                                    mem[_488 + floor32(_36) + (2 * ceil32(return_data.size)) + 192] = 0 / ext_call.return_data[0]
                                                    mem[_488 + floor32(_36) + (2 * ceil32(return_data.size)) + 256] = 0 / ext_call.return_data[0]
                                                    mem[_488 + floor32(_36) + (2 * ceil32(return_data.size)) + 224] = 128
                                                    mem[_488 + floor32(_36) + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96]
                                                    mem[_488 + floor32(_36) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                    mem[_488 + floor32(_36) + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96] + 160
                                                    mem[mem[ceil32(return_data.size) + 96] + _488 + floor32(_36) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]
                                                    mem[mem[ceil32(return_data.size) + 96] + _488 + floor32(_36) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_36) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160])]
                                                    if not mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] % 32:
                                                        return 0 / ext_call.return_data[0], 
                                                               Array(len=mem[ceil32(return_data.size) + 96], data=mem[_488 + floor32(_36) + (2 * ceil32(return_data.size)) + 352 len mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
                                                               0 / ext_call.return_data[0],
                                                               mem[ceil32(return_data.size) + 96] + 160
                                                    else:
                                                        mem[floor32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _488 + floor32(_36) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _488 + floor32(_36) + (2 * ceil32(return_data.size)) + -(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] % 32) + 416 len mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] % 32]
                                                        return 0 / ext_call.return_data[0], 
                                                               Array(len=mem[ceil32(return_data.size) + 96], data=mem[_488 + floor32(_36) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + 64]),
                                                               0 / ext_call.return_data[0],
                                                               mem[ceil32(return_data.size) + 96] + 160
                                                else:
                                                    mem[floor32(_488) + floor32(_36) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_488) + floor32(_36) + (2 * ceil32(return_data.size)) + -(_488 % 32) + 224 len _488 % 32]
                                                    mem[floor32(_488) + floor32(_36) + (2 * ceil32(return_data.size)) + 224] = 0 / ext_call.return_data[0]
                                                    mem[floor32(_488) + floor32(_36) + (2 * ceil32(return_data.size)) + 288] = 0 / ext_call.return_data[0]
                                                    mem[floor32(_488) + floor32(_36) + (2 * ceil32(return_data.size)) + 256] = 128
                                                    mem[floor32(_488) + floor32(_36) + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
                                                    mem[floor32(_488) + floor32(_36) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                                                    mem[floor32(_488) + floor32(_36) + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96] + 160
                                                    mem[mem[ceil32(return_data.size) + 96] + floor32(_488) + floor32(_36) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]
                                                    mem[mem[ceil32(return_data.size) + 96] + floor32(_488) + floor32(_36) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_36) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160])]
                                                    if not mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] % 32:
                                                        return 0 / ext_call.return_data[0], 
                                                               Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_488) + floor32(_36) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
                                                               0 / ext_call.return_data[0],
                                                               mem[ceil32(return_data.size) + 96] + 160
                                                    else:
                                                        mem[floor32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_488) + floor32(_36) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_488) + floor32(_36) + (2 * ceil32(return_data.size)) + -(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] % 32) + 448 len mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160] % 32]
                                                        return 0 / ext_call.return_data[0], 
                                                               Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_488) + floor32(_36) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_36) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + 64]),
                                                               0 / ext_call.return_data[0],
                                                               mem[ceil32(return_data.size) + 96] + 160
}



}
